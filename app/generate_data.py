import random
from datetime import datetime, timedelta

def generate_user_type():
    return random.choice(["student", "athlete", "stressed"])

def generate_log(user_type, day_offset):
    base_date = datetime.now() - timedelta(days=day_offset)

    if user_type == "student":
        return (
            1,
            random.randint(75, 95),
            random.randint(115, 135),
            random.randint(75, 85),
            random.randint(96, 99),
            round(random.uniform(36.5, 37.2), 1),
            round(random.uniform(4.5, 6.5), 1),
            round(random.uniform(3, 6), 1),
            round(random.uniform(0.2, 0.8), 1),
            random.randint(2200, 2700),
            base_date
        )
    elif user_type == "athlete":
        return (
            1,
            random.randint(55, 75),
            random.randint(110, 125),
            random.randint(70, 80),
            random.randint(97, 100),
            round(random.uniform(36.3, 36.8), 1),
            round(random.uniform(7, 9), 1),
            round(random.uniform(1, 3), 1),
            round(random.uniform(1.5, 3), 1),
            random.randint(2500, 3200),
            base_date
        )
    else:
        return (
            1,
            random.randint(90, 110),
            random.randint(135, 155),
            random.randint(85, 100),
            random.randint(94, 97),
            round(random.uniform(37.0, 37.8), 1),
            round(random.uniform(3.5, 5), 1),
            round(random.uniform(1, 3), 1),
            round(random.uniform(0.1, 0.5), 1),
            random.randint(2600, 3200),
            base_date
        )

def generate_sql_file():
    with open("insert_data.sql", "w") as f:
        f.write("USE VitalMind;\nGO\n\n")

        for i in range(1000):
            log = generate_log(generate_user_type(), i)

            query = f"""
INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES ({log[0]}, {log[1]}, {log[2]}, {log[3]}, {log[4]},
        {log[5]}, {log[6]}, {log[7]}, {log[8]}, {log[9]},
        '{log[10].strftime('%Y-%m-%d %H:%M:%S')}');
"""
            f.write(query)

    print("✅ SQL Server script generated: insert_data.sql")

if __name__ == "__main__":
    generate_sql_file()