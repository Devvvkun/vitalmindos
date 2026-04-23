#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <DHT.h>
#include <Adafruit_MPU6050.h>
#include <Adafruit_Sensor.h>
#include "heartRate.h"
#include "MAX30105.h"
#include <WiFi.h>
#include <ArduinoOTA.h>
#include <HTTPClient.h>

// ===== WIFI =====
const char* ssid = "Himanshu's S24";
const char* password = "@Himanshu123r";
const char* serverName = "http://yourdomain.com/data.php";
WiFiServer server(80);

// ===== IR SMOOTHING =====
#define IR_SMOOTH 12
long irBuffer[IR_SMOOTH];
byte irIndex = 0;
long irAvg = 0;

// ===== OLED =====
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);

// ===== DHT =====
#define DHTPIN 4
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);

// ===== MPU =====
Adafruit_MPU6050 mpu;

// ===== MAX30102 =====
MAX30105 particleSensor;

// ===== TIMERS =====
unsigned long lastSend = 0;
unsigned long lastDisplay = 0;

// ===== BPM =====
const byte RATE_SIZE = 4;
byte rates[RATE_SIZE];
byte rateSpot = 0;
long lastBeat = 0;
int beatAvg = 0;

void setup() {
  Serial.begin(115200);
  delay(1000);

  Wire.begin(21, 22);
  Wire.setClock(100000); // stable I2C
  for (int i = 0; i < IR_SMOOTH; i++) {
  irBuffer[i] = 0;
}

  // OLED
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {
    Serial.println("OLED failed");
    while (1);
  }

  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(WHITE);

  dht.begin();

  if (!mpu.begin()) {
    Serial.println("MPU6050 not found");
  }

  if (!particleSensor.begin(Wire, I2C_SPEED_FAST)) {
    Serial.println("MAX30102 not found");
  } else {
    particleSensor.setup(50, 4, 2, 100, 411, 4096);
    particleSensor.setPulseAmplitudeRed(0x3F);
    particleSensor.setPulseAmplitudeIR(0x3F);
  }

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
  }

  ArduinoOTA.begin();
  server.begin();
}

void loop() {
  ArduinoOTA.handle();

  // ===== DHT =====
  float temp = dht.readTemperature();
  float hum = dht.readHumidity();
  if (isnan(temp) || isnan(hum)) {
    temp = 0;
    hum = 0;
  }

  // ===== MPU =====
  sensors_event_t a, g, t;
  mpu.getEvent(&a, &g, &t);

  // ===== MAX30102 =====
  long ir = particleSensor.getIR();

  // smoothing
  irBuffer[irIndex++] = ir;
  irIndex %= IR_SMOOTH;

  irAvg = 0;
  for (int i = 0; i < IR_SMOOTH; i++) {
    irAvg += irBuffer[i];
  }
  irAvg /= IR_SMOOTH;

  // ===== BPM CALC =====
  if (irAvg > 6000) {
    if (checkForBeat(irAvg)) {
      long delta = millis() - lastBeat;
      lastBeat = millis();

      float bpm = 60 / (delta / 1000.0);

      if (bpm > 40 && bpm < 180) {
        rates[rateSpot++] = (byte)bpm;
        rateSpot %= RATE_SIZE;

        int sum = 0;
        for (byte i = 0; i < RATE_SIZE; i++) {
          sum += rates[i];
        }
        beatAvg = sum / RATE_SIZE;
      }
    }
  } else {
    beatAvg = 0;
  }

  // ===== OLED (SLOW REFRESH) =====
  if (millis() - lastDisplay > 250) {
    lastDisplay = millis();

    display.clearDisplay();

    display.setTextSize(1);
    display.setCursor(24, 0);
    display.println("VITAL OS MONITOR");

    display.drawLine(0, 10, 128, 10, WHITE);

    display.setTextSize(2);
    display.setCursor(0, 14);
    display.print(temp, 1);
    display.print("C");

    display.setTextSize(1);
    display.setCursor(0, 36);
    display.print("HUM ");
    display.print(hum, 0);
    display.print("%");

    display.setCursor(0, 46);
    display.print("BPM: ");
    display.print(beatAvg);

    display.setCursor(75, 16);
    display.print("AX:");
    display.print(a.acceleration.x, 1);

    display.setCursor(75, 26);
    display.print("AY:");
    display.print(a.acceleration.y, 1);

    display.setCursor(75, 36);
    display.print("AZ:");
    display.print(a.acceleration.z, 1);

    display.setCursor(90, 46);
    if (irAvg > 6000) display.print("OK");
    else display.print("NO");

    int barWidth = map(irAvg, 5000, 50000, 0, 120);
    barWidth = constrain(barWidth, 0, 120);

    display.drawRect(0, 56, 120, 8, WHITE);
    display.fillRect(0, 56, barWidth, 8, WHITE);

    display.display();
  }

  delay(10);

  // ===== SEND DATA =====
  if (millis() - lastSend > 5000) {
    lastSend = millis();

    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient http;
      http.begin(serverName);
      http.addHeader("Content-Type", "application/x-www-form-urlencoded");

      String postData = "temp=" + String(temp) +
                        "&hum=" + String(hum) +
                        "&ir=" + String(irAvg);

      http.POST(postData);
      http.end();
    }
  }

  // ===== WEB SERVER =====
  WiFiClient client = server.available();
  if (client) {
    while (!client.available()) delay(1);

    client.readStringUntil('\r');

    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/plain");
    client.println("Connection: close");
    client.println();

    client.println("==== ESP32 LIVE DATA ====");
    client.print("IR: "); client.println(irAvg);
    client.print("BPM: "); client.println(beatAvg);
    client.print("Temp: "); client.println(temp);
    client.print("Humidity: "); client.println(hum);
    client.println("========================");

    client.stop();
  }
}