CREATE DATABASE VitalMind;
GO

USE VitalMind;
GO
CREATE TABLE daily_logs (
    id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT,
    heart_rate INT,
    systolic_bp INT,
    diastolic_bp INT,
    spo2 INT,
    temperature FLOAT,
    sleep_hours FLOAT,
    study_hours FLOAT,
    workout_hours FLOAT,
    calories INT,
    timestamp DATETIME
);

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 124, 81, 96,
        37.1, 4.8, 4.3, 0.3, 2435,
        '2026-04-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 121, 79, 100,
        36.6, 7.4, 2.5, 2.3, 2910,
        '2026-04-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 150, 97, 96,
        37.7, 3.9, 1.4, 0.5, 3104,
        '2026-04-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 141, 95, 96,
        37.5, 4.0, 1.4, 0.2, 2816,
        '2026-04-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 124, 74, 100,
        36.5, 7.9, 1.2, 2.3, 2523,
        '2026-04-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 114, 72, 99,
        36.7, 8.8, 2.9, 2.2, 2683,
        '2026-04-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 129, 75, 99,
        36.9, 4.7, 5.4, 0.4, 2213,
        '2026-04-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 134, 82, 96,
        36.7, 5.2, 5.0, 0.7, 2691,
        '2026-04-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 124, 77, 98,
        36.8, 8.2, 2.3, 2.8, 2654,
        '2026-04-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 125, 71, 100,
        36.4, 8.4, 2.4, 1.6, 2743,
        '2026-04-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 120, 75, 96,
        36.8, 6.3, 5.7, 0.7, 2343,
        '2026-04-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 133, 80, 97,
        36.9, 4.5, 3.9, 0.4, 2631,
        '2026-04-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 112, 73, 97,
        36.4, 9.0, 1.7, 2.3, 2709,
        '2026-04-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 116, 73, 99,
        36.7, 7.5, 2.7, 2.5, 2910,
        '2026-04-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 154, 88, 96,
        37.2, 3.8, 2.7, 0.4, 2786,
        '2026-04-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 131, 80, 98,
        36.7, 4.6, 5.5, 0.7, 2382,
        '2026-04-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 147, 93, 94,
        37.5, 4.0, 2.4, 0.5, 2860,
        '2026-04-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 138, 88, 94,
        37.7, 3.6, 1.5, 0.3, 2766,
        '2026-04-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 123, 79, 97,
        36.5, 7.8, 2.4, 1.9, 2648,
        '2026-04-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 122, 77, 99,
        37.0, 6.3, 5.5, 0.3, 2684,
        '2026-04-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 120, 74, 98,
        36.5, 9.0, 1.6, 2.5, 3163,
        '2026-04-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 121, 82, 99,
        36.7, 4.7, 4.7, 0.7, 2495,
        '2026-04-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 121, 83, 98,
        36.6, 5.1, 3.7, 0.8, 2441,
        '2026-04-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 100, 144, 87, 95,
        37.7, 4.0, 1.7, 0.2, 3055,
        '2026-03-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 117, 79, 98,
        36.8, 9.0, 2.6, 1.5, 2885,
        '2026-03-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 138, 87, 94,
        37.1, 3.7, 3.0, 0.4, 2974,
        '2026-03-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 115, 74, 100,
        36.5, 7.2, 1.4, 2.6, 2625,
        '2026-03-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 143, 89, 96,
        37.0, 4.7, 1.2, 0.1, 2866,
        '2026-03-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 140, 91, 96,
        37.7, 4.6, 1.7, 0.2, 2807,
        '2026-03-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 151, 99, 96,
        37.5, 4.5, 2.6, 0.4, 2970,
        '2026-03-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 140, 92, 97,
        37.7, 5.0, 1.1, 0.4, 2927,
        '2026-03-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 116, 78, 98,
        36.6, 8.2, 2.4, 1.8, 3162,
        '2026-03-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 125, 78, 100,
        36.8, 8.8, 2.7, 2.9, 2723,
        '2026-03-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 129, 82, 99,
        36.5, 5.3, 3.6, 0.5, 2394,
        '2026-03-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 136, 89, 97,
        37.1, 4.5, 2.2, 0.4, 2726,
        '2026-03-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 125, 77, 97,
        36.6, 8.1, 2.0, 2.4, 2601,
        '2026-03-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 116, 72, 100,
        36.6, 8.9, 1.5, 2.2, 2965,
        '2026-03-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 122, 71, 99,
        36.8, 7.8, 1.7, 2.6, 2950,
        '2026-03-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 154, 100, 96,
        37.5, 4.6, 1.4, 0.2, 2980,
        '2026-03-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 115, 83, 98,
        37.1, 6.0, 5.2, 0.6, 2538,
        '2026-03-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 147, 86, 97,
        37.7, 3.9, 2.6, 0.3, 3071,
        '2026-03-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 138, 92, 95,
        37.6, 4.4, 1.9, 0.4, 2910,
        '2026-03-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 120, 78, 96,
        36.7, 4.9, 5.5, 0.6, 2217,
        '2026-03-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 134, 76, 99,
        36.6, 5.2, 5.8, 0.6, 2201,
        '2026-03-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 117, 76, 98,
        36.5, 7.1, 2.8, 2.7, 2637,
        '2026-03-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 155, 92, 97,
        37.1, 4.9, 1.0, 0.4, 2894,
        '2026-03-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 112, 71, 100,
        36.6, 7.9, 1.5, 2.6, 3131,
        '2026-03-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 124, 70, 98,
        36.6, 8.6, 2.2, 2.3, 2974,
        '2026-03-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 139, 93, 94,
        37.8, 4.8, 2.9, 0.4, 3193,
        '2026-03-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 135, 98, 94,
        37.4, 4.6, 2.5, 0.3, 2656,
        '2026-03-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 124, 72, 99,
        36.4, 7.9, 2.4, 2.6, 2668,
        '2026-03-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 124, 71, 99,
        36.4, 8.2, 2.3, 2.9, 2510,
        '2026-03-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 130, 75, 99,
        37.2, 5.0, 4.7, 0.3, 2602,
        '2026-03-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 124, 77, 96,
        37.0, 6.0, 4.6, 0.5, 2413,
        '2026-03-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 120, 70, 100,
        36.5, 8.4, 2.5, 2.0, 2677,
        '2026-02-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 151, 93, 94,
        37.4, 4.0, 1.5, 0.2, 3091,
        '2026-02-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 142, 92, 96,
        37.6, 4.3, 1.0, 0.4, 3036,
        '2026-02-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 118, 70, 99,
        36.4, 8.6, 2.1, 2.6, 3182,
        '2026-02-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 131, 75, 99,
        37.0, 5.7, 5.4, 0.5, 2361,
        '2026-02-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 114, 78, 98,
        36.4, 7.6, 1.6, 1.8, 2511,
        '2026-02-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 116, 76, 99,
        36.4, 7.8, 2.7, 2.3, 2834,
        '2026-02-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 129, 78, 97,
        36.7, 6.3, 3.9, 0.5, 2603,
        '2026-02-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 138, 86, 95,
        37.6, 4.0, 2.0, 0.5, 3190,
        '2026-02-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 116, 76, 96,
        37.0, 6.5, 4.0, 0.3, 2580,
        '2026-02-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 122, 76, 99,
        36.9, 6.3, 4.8, 0.8, 2687,
        '2026-02-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 150, 100, 94,
        37.4, 4.7, 1.7, 0.3, 3061,
        '2026-02-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 128, 83, 97,
        37.1, 5.8, 5.7, 0.6, 2546,
        '2026-02-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 100, 146, 100, 94,
        37.6, 3.8, 1.1, 0.4, 3028,
        '2026-02-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 124, 84, 96,
        36.5, 6.0, 5.3, 0.3, 2423,
        '2026-02-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 124, 77, 98,
        36.5, 7.2, 2.7, 2.1, 2894,
        '2026-02-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 121, 82, 97,
        37.1, 6.5, 4.0, 0.4, 2625,
        '2026-02-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 83, 130, 81, 96,
        36.9, 5.9, 4.2, 0.5, 2697,
        '2026-02-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 152, 95, 96,
        37.3, 3.9, 2.1, 0.2, 3115,
        '2026-02-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 125, 79, 97,
        36.5, 7.9, 1.3, 2.3, 2885,
        '2026-02-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 120, 78, 99,
        36.5, 7.1, 2.9, 2.3, 3103,
        '2026-02-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 134, 79, 97,
        37.0, 4.7, 4.9, 0.7, 2638,
        '2026-02-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 125, 79, 98,
        37.1, 6.3, 3.6, 0.6, 2257,
        '2026-02-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 117, 80, 99,
        36.7, 7.5, 1.9, 1.5, 2617,
        '2026-02-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 143, 96, 95,
        37.3, 4.2, 2.5, 0.2, 3177,
        '2026-02-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 149, 94, 97,
        37.6, 3.8, 1.0, 0.2, 2864,
        '2026-02-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 146, 91, 97,
        37.0, 4.2, 2.5, 0.2, 2928,
        '2026-02-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 121, 76, 97,
        36.8, 6.5, 3.2, 0.5, 2621,
        '2026-02-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 152, 95, 97,
        37.1, 4.9, 3.0, 0.2, 2825,
        '2026-01-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 116, 70, 98,
        36.4, 7.1, 1.1, 1.5, 2575,
        '2026-01-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 132, 80, 99,
        36.9, 4.9, 4.2, 0.4, 2325,
        '2026-01-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 150, 86, 94,
        37.7, 4.8, 2.5, 0.5, 2897,
        '2026-01-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 152, 86, 94,
        37.2, 4.0, 1.8, 0.4, 2858,
        '2026-01-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 124, 78, 100,
        36.6, 8.7, 1.7, 2.1, 3167,
        '2026-01-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 129, 79, 99,
        36.6, 6.0, 4.9, 0.7, 2326,
        '2026-01-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 115, 75, 96,
        37.0, 6.2, 5.9, 0.4, 2253,
        '2026-01-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 135, 78, 96,
        36.5, 6.1, 4.2, 0.2, 2205,
        '2026-01-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 113, 76, 98,
        36.7, 8.4, 2.5, 2.5, 2548,
        '2026-01-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 120, 79, 100,
        36.7, 8.0, 2.9, 2.9, 2588,
        '2026-01-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 137, 99, 94,
        37.4, 4.0, 1.2, 0.3, 2780,
        '2026-01-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 118, 80, 97,
        36.7, 4.9, 4.3, 0.4, 2457,
        '2026-01-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 154, 94, 94,
        37.3, 4.0, 2.3, 0.2, 2618,
        '2026-01-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 125, 75, 100,
        36.3, 8.5, 2.2, 2.9, 2599,
        '2026-01-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 155, 95, 97,
        37.2, 4.3, 1.9, 0.3, 3114,
        '2026-01-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 142, 85, 96,
        37.7, 4.9, 2.9, 0.4, 2608,
        '2026-01-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 143, 96, 94,
        37.3, 3.6, 2.8, 0.4, 2669,
        '2026-01-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 138, 88, 96,
        37.2, 3.8, 2.0, 0.3, 2715,
        '2026-01-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 120, 74, 100,
        36.3, 8.9, 2.3, 2.0, 2934,
        '2026-01-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 151, 99, 94,
        37.8, 4.0, 1.8, 0.1, 2900,
        '2026-01-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 124, 76, 96,
        36.6, 5.6, 4.4, 0.2, 2582,
        '2026-01-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 112, 78, 100,
        36.4, 7.3, 1.9, 2.9, 2714,
        '2026-01-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 124, 76, 98,
        36.5, 4.6, 4.6, 0.4, 2240,
        '2026-01-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 129, 81, 96,
        36.7, 5.2, 4.0, 0.6, 2306,
        '2026-01-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 135, 84, 96,
        36.6, 5.4, 4.5, 0.3, 2484,
        '2026-01-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 146, 89, 97,
        37.1, 4.7, 2.2, 0.5, 2670,
        '2026-01-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 83, 117, 84, 99,
        37.1, 4.6, 3.2, 0.6, 2645,
        '2026-01-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 132, 79, 97,
        36.8, 6.1, 3.3, 0.4, 2692,
        '2026-01-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 140, 88, 95,
        37.5, 3.8, 2.9, 0.2, 2826,
        '2026-01-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 117, 76, 98,
        36.6, 7.1, 2.7, 2.3, 2779,
        '2026-01-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 115, 79, 99,
        36.7, 8.6, 1.8, 2.0, 2844,
        '2025-12-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 122, 79, 100,
        36.4, 7.7, 2.3, 1.9, 2966,
        '2025-12-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 111, 74, 97,
        36.5, 7.5, 2.1, 1.7, 3086,
        '2025-12-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 135, 83, 97,
        36.9, 6.2, 4.1, 0.5, 2297,
        '2025-12-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 149, 92, 95,
        37.6, 4.9, 3.0, 0.3, 2834,
        '2025-12-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 129, 84, 98,
        37.1, 4.9, 4.0, 0.4, 2638,
        '2025-12-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 120, 70, 99,
        36.4, 7.5, 2.9, 2.1, 2732,
        '2025-12-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 145, 87, 97,
        37.1, 4.7, 1.3, 0.2, 2813,
        '2025-12-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 121, 71, 98,
        36.4, 8.8, 1.6, 2.2, 2731,
        '2025-12-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 116, 71, 99,
        36.7, 7.2, 2.7, 2.2, 3192,
        '2025-12-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 125, 73, 97,
        36.4, 8.0, 1.4, 2.0, 2666,
        '2025-12-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 122, 73, 98,
        36.5, 7.8, 1.9, 1.5, 2557,
        '2025-12-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 132, 76, 97,
        37.2, 5.3, 3.9, 0.4, 2428,
        '2025-12-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 155, 97, 96,
        37.5, 3.7, 1.5, 0.3, 2756,
        '2025-12-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 119, 70, 98,
        36.4, 8.9, 2.8, 2.8, 2926,
        '2025-12-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 127, 85, 98,
        36.9, 5.1, 3.1, 0.4, 2262,
        '2025-12-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 143, 86, 96,
        37.6, 4.0, 1.6, 0.3, 3098,
        '2025-12-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 121, 75, 98,
        36.5, 7.9, 2.5, 2.3, 2916,
        '2025-12-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 119, 82, 98,
        36.8, 4.8, 3.5, 0.7, 2631,
        '2025-12-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 128, 75, 97,
        37.2, 4.7, 3.1, 0.3, 2348,
        '2025-12-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 112, 77, 98,
        36.8, 7.5, 1.5, 2.6, 2923,
        '2025-12-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 123, 76, 100,
        36.3, 8.7, 1.3, 1.9, 2544,
        '2025-12-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 113, 73, 99,
        36.3, 7.2, 2.0, 2.8, 2758,
        '2025-12-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 123, 81, 96,
        37.0, 5.4, 5.8, 0.8, 2204,
        '2025-12-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 119, 84, 96,
        37.1, 6.1, 4.9, 0.5, 2677,
        '2025-12-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 125, 79, 97,
        36.6, 8.2, 2.0, 2.6, 2887,
        '2025-12-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 155, 90, 94,
        37.7, 4.1, 2.6, 0.3, 2886,
        '2025-12-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 133, 81, 97,
        36.6, 5.9, 5.9, 0.7, 2586,
        '2025-12-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 115, 80, 97,
        37.0, 5.7, 3.5, 0.3, 2367,
        '2025-12-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 146, 91, 94,
        37.8, 4.9, 2.2, 0.5, 2997,
        '2025-12-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 121, 78, 97,
        37.1, 6.3, 5.8, 0.2, 2647,
        '2025-12-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 132, 79, 98,
        36.8, 6.3, 4.5, 0.3, 2530,
        '2025-11-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 148, 97, 97,
        37.4, 4.3, 1.9, 0.4, 2857,
        '2025-11-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 138, 99, 95,
        37.7, 4.5, 2.0, 0.4, 2842,
        '2025-11-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 121, 78, 98,
        37.0, 5.1, 5.8, 0.5, 2227,
        '2025-11-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 113, 79, 99,
        36.5, 8.9, 2.0, 2.8, 2702,
        '2025-11-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 139, 85, 96,
        37.1, 4.3, 1.2, 0.3, 3015,
        '2025-11-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 116, 77, 96,
        36.5, 4.8, 4.9, 0.6, 2457,
        '2025-11-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 115, 73, 98,
        36.6, 7.1, 2.7, 2.0, 2547,
        '2025-11-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 139, 93, 95,
        37.7, 3.6, 1.5, 0.2, 3023,
        '2025-11-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 111, 72, 99,
        36.7, 8.3, 1.4, 2.8, 2774,
        '2025-11-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 116, 71, 98,
        36.4, 7.1, 1.5, 1.8, 2542,
        '2025-11-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 129, 77, 97,
        37.2, 5.7, 4.4, 0.5, 2381,
        '2025-11-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 120, 82, 98,
        37.1, 4.6, 3.9, 0.5, 2371,
        '2025-11-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 111, 78, 99,
        36.5, 7.5, 1.8, 2.3, 2671,
        '2025-11-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 110, 75, 100,
        36.5, 7.7, 2.6, 1.6, 3199,
        '2025-11-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 120, 83, 98,
        36.7, 4.9, 4.2, 0.4, 2594,
        '2025-11-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 121, 72, 97,
        36.6, 7.1, 2.2, 2.3, 2986,
        '2025-11-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 118, 78, 99,
        36.9, 4.8, 4.9, 0.7, 2507,
        '2025-11-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 154, 100, 95,
        37.5, 4.0, 2.2, 0.4, 3075,
        '2025-11-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 138, 95, 97,
        37.2, 3.7, 2.9, 0.4, 2907,
        '2025-11-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 119, 71, 97,
        36.5, 8.6, 3.0, 2.3, 2989,
        '2025-11-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 132, 75, 98,
        37.0, 6.1, 3.6, 0.5, 2519,
        '2025-11-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 125, 75, 96,
        37.1, 5.4, 5.4, 0.8, 2657,
        '2025-11-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 144, 88, 96,
        37.5, 4.0, 1.8, 0.2, 3113,
        '2025-11-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 122, 85, 99,
        36.9, 4.8, 4.7, 0.3, 2443,
        '2025-11-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 114, 72, 98,
        36.8, 7.7, 1.8, 3.0, 3004,
        '2025-11-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 151, 96, 97,
        37.0, 4.7, 1.3, 0.2, 2803,
        '2025-11-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 140, 86, 96,
        37.2, 4.8, 2.4, 0.5, 2646,
        '2025-11-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 122, 84, 99,
        37.2, 5.3, 3.8, 0.6, 2518,
        '2025-11-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 125, 74, 100,
        36.7, 8.6, 1.5, 2.6, 2563,
        '2025-11-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 115, 83, 96,
        36.7, 6.2, 5.1, 0.6, 2539,
        '2025-10-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 123, 70, 99,
        36.4, 8.1, 2.2, 2.0, 3056,
        '2025-10-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 111, 77, 98,
        36.5, 7.1, 2.0, 1.6, 2649,
        '2025-10-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 122, 82, 97,
        37.0, 5.7, 5.2, 0.4, 2394,
        '2025-10-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 83, 130, 80, 97,
        36.7, 5.0, 4.8, 0.3, 2431,
        '2025-10-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 126, 84, 97,
        36.5, 4.8, 5.3, 0.6, 2238,
        '2025-10-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 152, 89, 96,
        37.0, 4.9, 2.7, 0.3, 2711,
        '2025-10-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 132, 75, 96,
        37.1, 6.5, 4.2, 0.3, 2596,
        '2025-10-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 114, 72, 100,
        36.4, 8.9, 2.6, 2.0, 2897,
        '2025-10-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 119, 75, 99,
        36.5, 8.7, 1.5, 2.1, 2584,
        '2025-10-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 125, 77, 97,
        36.6, 7.7, 2.0, 2.6, 2871,
        '2025-10-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 121, 74, 97,
        36.7, 8.7, 2.4, 2.2, 2885,
        '2025-10-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 146, 95, 95,
        37.5, 4.5, 2.7, 0.1, 2792,
        '2025-10-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 121, 78, 97,
        36.7, 8.4, 3.0, 1.6, 2556,
        '2025-10-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 113, 74, 97,
        36.3, 8.0, 1.9, 2.1, 3166,
        '2025-10-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 122, 75, 96,
        36.9, 5.1, 5.1, 0.4, 2283,
        '2025-10-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 119, 75, 99,
        36.7, 5.2, 3.9, 0.3, 2494,
        '2025-10-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 140, 93, 95,
        37.0, 3.8, 2.6, 0.2, 2955,
        '2025-10-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 146, 95, 97,
        37.3, 4.9, 2.7, 0.5, 2674,
        '2025-10-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 153, 100, 95,
        37.4, 3.6, 1.1, 0.2, 3047,
        '2025-10-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 124, 81, 97,
        37.1, 4.8, 4.7, 0.7, 2589,
        '2025-10-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 145, 94, 96,
        37.4, 3.9, 1.1, 0.2, 3110,
        '2025-10-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 122, 78, 96,
        36.6, 5.6, 5.0, 0.7, 2678,
        '2025-10-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 121, 78, 99,
        37.1, 5.4, 3.1, 0.6, 2362,
        '2025-10-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 115, 85, 99,
        36.7, 5.5, 3.5, 0.3, 2547,
        '2025-10-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 155, 85, 95,
        37.5, 4.4, 2.3, 0.3, 2723,
        '2025-10-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 134, 84, 97,
        37.2, 5.3, 4.0, 0.3, 2556,
        '2025-10-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 134, 82, 99,
        36.6, 5.0, 4.4, 0.2, 2384,
        '2025-10-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 129, 76, 96,
        37.1, 5.8, 4.0, 0.3, 2678,
        '2025-10-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 124, 76, 97,
        36.7, 7.9, 1.1, 2.1, 2978,
        '2025-10-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 117, 75, 98,
        36.4, 7.8, 1.0, 1.7, 2510,
        '2025-10-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 121, 75, 96,
        36.9, 5.8, 5.3, 0.5, 2543,
        '2025-09-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 119, 79, 96,
        37.2, 6.5, 4.5, 0.4, 2541,
        '2025-09-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 155, 92, 97,
        37.1, 4.7, 2.5, 0.4, 3022,
        '2025-09-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 139, 93, 96,
        37.5, 4.7, 1.2, 0.4, 2944,
        '2025-09-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 115, 74, 100,
        36.7, 7.4, 1.5, 2.1, 3071,
        '2025-09-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 142, 88, 97,
        37.3, 3.9, 1.3, 0.5, 3195,
        '2025-09-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 130, 84, 98,
        37.2, 4.9, 5.7, 0.4, 2597,
        '2025-09-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 129, 85, 99,
        36.5, 4.5, 5.4, 0.3, 2516,
        '2025-09-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 141, 99, 95,
        37.5, 3.8, 1.7, 0.1, 3199,
        '2025-09-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 134, 79, 96,
        36.7, 5.0, 6.0, 0.3, 2671,
        '2025-09-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 126, 78, 99,
        36.6, 6.0, 5.0, 0.6, 2679,
        '2025-09-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 121, 83, 98,
        36.7, 5.8, 4.8, 0.6, 2465,
        '2025-09-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 122, 83, 96,
        37.1, 5.9, 5.5, 0.4, 2251,
        '2025-09-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 124, 76, 99,
        37.0, 5.8, 3.7, 0.5, 2478,
        '2025-09-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 114, 78, 98,
        36.6, 7.5, 2.0, 2.2, 2717,
        '2025-09-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 125, 77, 98,
        37.0, 6.2, 4.6, 0.3, 2505,
        '2025-09-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 144, 94, 94,
        37.3, 3.6, 2.1, 0.2, 3129,
        '2025-09-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 129, 83, 98,
        37.0, 4.7, 3.3, 0.7, 2473,
        '2025-09-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 147, 92, 97,
        37.7, 4.9, 1.4, 0.3, 2982,
        '2025-09-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 113, 75, 100,
        36.8, 8.1, 1.3, 2.4, 2523,
        '2025-09-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 134, 79, 98,
        37.1, 6.1, 4.8, 0.8, 2638,
        '2025-09-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 151, 98, 96,
        37.4, 3.6, 2.3, 0.4, 2992,
        '2025-09-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 116, 78, 99,
        37.1, 5.5, 5.6, 0.5, 2233,
        '2025-09-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 121, 81, 99,
        37.1, 5.1, 4.7, 0.3, 2682,
        '2025-09-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 137, 97, 94,
        37.4, 4.7, 1.7, 0.4, 3142,
        '2025-09-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 112, 75, 100,
        36.7, 8.1, 1.8, 2.2, 3009,
        '2025-09-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 72, 110, 75, 100,
        36.4, 8.7, 2.3, 2.3, 2544,
        '2025-09-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 125, 79, 100,
        36.8, 8.7, 2.0, 1.9, 3021,
        '2025-09-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 118, 84, 99,
        36.9, 5.6, 3.5, 0.6, 2554,
        '2025-09-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 116, 76, 98,
        36.5, 7.6, 2.9, 1.5, 3193,
        '2025-09-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 111, 76, 99,
        36.7, 8.0, 1.7, 2.9, 2646,
        '2025-08-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 136, 93, 96,
        37.7, 3.9, 2.5, 0.5, 2854,
        '2025-08-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 133, 77, 99,
        37.1, 4.9, 5.1, 0.8, 2351,
        '2025-08-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 129, 80, 97,
        37.0, 5.7, 3.9, 0.2, 2512,
        '2025-08-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 136, 89, 96,
        37.0, 3.7, 2.9, 0.2, 2853,
        '2025-08-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 136, 95, 95,
        37.5, 4.6, 1.2, 0.4, 2965,
        '2025-08-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 113, 73, 99,
        36.6, 7.0, 1.3, 2.4, 3089,
        '2025-08-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 129, 77, 96,
        36.8, 6.3, 4.4, 0.6, 2261,
        '2025-08-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 117, 75, 99,
        37.1, 5.2, 3.1, 0.3, 2313,
        '2025-08-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 120, 78, 98,
        36.4, 7.9, 2.1, 2.7, 2538,
        '2025-08-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 119, 79, 98,
        36.3, 7.1, 1.9, 1.7, 2953,
        '2025-08-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 140, 86, 95,
        37.5, 3.7, 2.1, 0.2, 3181,
        '2025-08-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 128, 81, 96,
        37.2, 5.1, 5.4, 0.6, 2536,
        '2025-08-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 132, 80, 98,
        36.5, 6.4, 5.3, 0.6, 2295,
        '2025-08-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 136, 97, 94,
        37.6, 3.9, 1.7, 0.3, 3012,
        '2025-08-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 125, 76, 99,
        36.4, 8.4, 1.5, 2.3, 2544,
        '2025-08-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 127, 85, 97,
        37.1, 4.5, 3.4, 0.4, 2227,
        '2025-08-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 114, 77, 97,
        36.7, 7.0, 1.6, 1.7, 2506,
        '2025-08-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 125, 83, 98,
        37.0, 5.9, 3.0, 0.4, 2384,
        '2025-08-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 123, 71, 99,
        36.7, 8.6, 1.6, 2.6, 2941,
        '2025-08-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 116, 76, 99,
        36.8, 5.8, 4.7, 0.2, 2339,
        '2025-08-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 128, 80, 96,
        36.6, 5.3, 3.6, 0.7, 2646,
        '2025-08-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 119, 77, 97,
        36.5, 8.5, 2.4, 2.1, 3078,
        '2025-08-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 113, 71, 97,
        36.5, 8.4, 2.3, 2.8, 2501,
        '2025-08-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 124, 81, 99,
        36.6, 5.2, 5.4, 0.3, 2660,
        '2025-08-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 155, 97, 97,
        37.8, 3.8, 3.0, 0.5, 2716,
        '2025-08-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 141, 91, 96,
        37.5, 3.8, 1.1, 0.3, 2646,
        '2025-08-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 133, 83, 96,
        36.9, 4.9, 4.3, 0.7, 2317,
        '2025-08-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 135, 81, 96,
        36.8, 4.6, 4.6, 0.3, 2256,
        '2025-08-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 139, 89, 94,
        37.0, 3.8, 1.3, 0.4, 3188,
        '2025-08-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 150, 91, 94,
        37.5, 3.6, 1.0, 0.3, 2609,
        '2025-08-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 136, 100, 96,
        37.6, 3.6, 2.5, 0.4, 2878,
        '2025-07-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 115, 83, 96,
        37.0, 5.9, 3.7, 0.6, 2350,
        '2025-07-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 132, 75, 97,
        36.7, 4.8, 5.8, 0.3, 2604,
        '2025-07-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 123, 82, 96,
        37.1, 5.7, 5.9, 0.7, 2395,
        '2025-07-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 118, 77, 100,
        36.8, 7.6, 1.2, 1.6, 3199,
        '2025-07-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 118, 78, 97,
        36.5, 7.7, 1.5, 2.4, 2777,
        '2025-07-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 127, 78, 97,
        36.5, 5.8, 5.1, 0.3, 2683,
        '2025-07-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 122, 77, 98,
        37.1, 4.9, 5.0, 0.3, 2608,
        '2025-07-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 119, 83, 99,
        36.5, 5.6, 3.2, 0.3, 2360,
        '2025-07-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 110, 77, 99,
        36.8, 7.6, 1.1, 2.7, 2571,
        '2025-07-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 122, 72, 100,
        36.5, 7.2, 2.1, 2.8, 2609,
        '2025-07-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 115, 80, 100,
        36.7, 8.4, 1.3, 2.1, 2592,
        '2025-07-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 96, 138, 89, 94,
        37.3, 3.7, 2.6, 0.3, 2725,
        '2025-07-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 155, 87, 95,
        37.1, 3.7, 2.8, 0.1, 2641,
        '2025-07-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 144, 94, 97,
        37.1, 4.4, 1.9, 0.3, 2686,
        '2025-07-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 112, 78, 97,
        36.3, 7.2, 1.8, 1.8, 2829,
        '2025-07-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 126, 81, 98,
        36.7, 6.2, 3.9, 0.4, 2379,
        '2025-07-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 120, 81, 99,
        36.8, 5.6, 4.1, 0.6, 2545,
        '2025-07-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 114, 73, 98,
        36.5, 8.2, 2.1, 2.6, 2538,
        '2025-07-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 124, 75, 100,
        36.5, 8.0, 2.3, 1.9, 2882,
        '2025-07-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 111, 77, 99,
        36.4, 7.6, 1.6, 1.8, 2739,
        '2025-07-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 150, 97, 95,
        37.8, 4.3, 1.5, 0.3, 3160,
        '2025-07-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 137, 96, 97,
        37.4, 4.0, 1.2, 0.2, 3037,
        '2025-07-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 144, 97, 96,
        37.1, 3.9, 2.5, 0.2, 3014,
        '2025-07-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 135, 91, 96,
        37.6, 4.6, 2.2, 0.5, 3016,
        '2025-07-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 137, 91, 95,
        37.7, 4.3, 2.7, 0.1, 2781,
        '2025-07-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 119, 73, 100,
        36.5, 7.6, 2.2, 2.9, 3017,
        '2025-07-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 152, 97, 96,
        37.7, 4.9, 2.8, 0.2, 2647,
        '2025-07-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 152, 91, 97,
        37.1, 4.3, 2.6, 0.5, 3031,
        '2025-07-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 145, 99, 94,
        37.6, 3.9, 2.4, 0.1, 2915,
        '2025-07-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 124, 79, 100,
        36.4, 8.9, 2.8, 1.7, 3090,
        '2025-07-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 124, 79, 98,
        36.6, 9.0, 1.5, 2.1, 2525,
        '2025-06-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 124, 71, 97,
        36.7, 7.8, 2.8, 2.4, 3126,
        '2025-06-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 123, 85, 99,
        36.9, 6.1, 4.9, 0.2, 2543,
        '2025-06-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 143, 92, 94,
        37.1, 4.4, 1.3, 0.2, 2673,
        '2025-06-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 125, 79, 98,
        36.6, 4.8, 3.2, 0.7, 2692,
        '2025-06-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 154, 91, 96,
        37.2, 4.5, 1.8, 0.3, 2973,
        '2025-06-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 124, 72, 97,
        36.7, 7.9, 1.6, 2.1, 2735,
        '2025-06-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 124, 85, 99,
        36.8, 5.5, 3.5, 0.4, 2339,
        '2025-06-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 155, 86, 95,
        37.5, 4.2, 2.8, 0.4, 3116,
        '2025-06-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 139, 90, 95,
        37.3, 4.1, 2.6, 0.3, 2890,
        '2025-06-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 83, 128, 84, 98,
        36.9, 5.0, 5.0, 0.4, 2699,
        '2025-06-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 146, 97, 96,
        37.0, 4.3, 2.1, 0.4, 2833,
        '2025-06-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 127, 80, 96,
        37.0, 4.7, 4.2, 0.6, 2669,
        '2025-06-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 122, 74, 98,
        36.7, 8.9, 1.1, 2.5, 2980,
        '2025-06-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 125, 76, 97,
        36.5, 8.3, 2.2, 2.9, 3159,
        '2025-06-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 116, 83, 96,
        36.5, 5.9, 5.1, 0.2, 2523,
        '2025-06-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 113, 72, 100,
        36.6, 8.9, 2.2, 2.0, 3007,
        '2025-06-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 72, 113, 73, 98,
        36.7, 7.2, 1.3, 2.2, 2923,
        '2025-06-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 134, 82, 98,
        37.1, 4.8, 3.3, 0.4, 2673,
        '2025-06-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 124, 82, 97,
        36.9, 5.6, 3.8, 0.3, 2249,
        '2025-06-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 115, 72, 100,
        36.7, 8.1, 2.2, 2.4, 2502,
        '2025-06-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 114, 79, 98,
        36.4, 8.8, 1.8, 2.3, 3096,
        '2025-06-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 116, 77, 98,
        36.9, 4.9, 4.3, 0.5, 2636,
        '2025-06-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 125, 78, 97,
        36.4, 7.1, 1.6, 1.6, 2791,
        '2025-06-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 115, 74, 98,
        36.4, 8.7, 1.3, 3.0, 2838,
        '2025-06-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 120, 77, 96,
        36.7, 6.3, 5.4, 0.8, 2608,
        '2025-06-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 113, 79, 100,
        36.7, 7.4, 2.2, 2.6, 3104,
        '2025-06-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 131, 81, 99,
        36.7, 5.6, 5.3, 0.7, 2227,
        '2025-06-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 140, 86, 95,
        37.1, 4.9, 1.1, 0.3, 3014,
        '2025-06-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 134, 84, 97,
        37.0, 4.7, 3.8, 0.4, 2530,
        '2025-06-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 151, 87, 94,
        37.1, 4.0, 2.2, 0.5, 3065,
        '2025-05-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 122, 78, 98,
        37.0, 6.0, 3.4, 0.4, 2479,
        '2025-05-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 124, 73, 98,
        36.4, 7.5, 1.5, 1.9, 2603,
        '2025-05-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 137, 87, 95,
        37.1, 4.2, 1.0, 0.2, 2635,
        '2025-05-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 148, 100, 96,
        37.1, 4.7, 1.2, 0.4, 2873,
        '2025-05-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 120, 75, 96,
        37.1, 5.6, 3.6, 0.6, 2528,
        '2025-05-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 122, 73, 99,
        36.7, 8.5, 1.7, 2.0, 2505,
        '2025-05-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 117, 80, 97,
        37.0, 4.8, 4.6, 0.6, 2260,
        '2025-05-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 121, 77, 99,
        37.0, 4.9, 3.3, 0.7, 2405,
        '2025-05-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 132, 78, 97,
        36.5, 5.4, 3.4, 0.4, 2575,
        '2025-05-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 119, 72, 100,
        36.6, 8.8, 2.6, 2.2, 2534,
        '2025-05-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 110, 80, 99,
        36.4, 8.1, 2.2, 1.6, 2849,
        '2025-05-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 116, 77, 98,
        36.8, 6.1, 3.4, 0.7, 2600,
        '2025-05-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 116, 73, 100,
        36.7, 7.0, 1.4, 2.5, 2554,
        '2025-05-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 115, 83, 99,
        37.2, 4.7, 3.3, 0.4, 2529,
        '2025-05-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 130, 75, 99,
        36.9, 6.0, 4.7, 0.5, 2561,
        '2025-05-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 150, 100, 97,
        37.8, 4.2, 1.8, 0.4, 2884,
        '2025-05-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 130, 76, 99,
        37.1, 4.6, 4.7, 0.3, 2347,
        '2025-05-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 117, 70, 98,
        36.7, 8.0, 2.9, 1.8, 2583,
        '2025-05-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 115, 73, 97,
        36.8, 8.3, 1.5, 2.2, 2711,
        '2025-05-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 125, 79, 99,
        36.6, 8.0, 1.3, 2.9, 2982,
        '2025-05-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 144, 100, 96,
        37.2, 4.9, 2.1, 0.1, 3129,
        '2025-05-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 120, 85, 97,
        36.6, 5.4, 5.1, 0.2, 2399,
        '2025-05-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 125, 76, 99,
        36.3, 8.0, 1.3, 2.1, 3137,
        '2025-05-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 135, 84, 96,
        36.7, 5.0, 4.4, 0.7, 2270,
        '2025-05-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 128, 83, 97,
        37.0, 5.4, 5.8, 0.4, 2475,
        '2025-05-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 117, 75, 98,
        36.9, 6.0, 3.5, 0.5, 2649,
        '2025-05-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 72, 121, 75, 100,
        36.6, 8.3, 1.8, 1.7, 2705,
        '2025-05-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 153, 96, 95,
        37.8, 4.5, 2.2, 0.1, 2853,
        '2025-05-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 133, 79, 98,
        36.9, 4.7, 4.4, 0.6, 2690,
        '2025-05-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 131, 85, 99,
        37.1, 5.0, 3.2, 0.3, 2497,
        '2025-05-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 123, 70, 100,
        36.8, 8.2, 2.9, 2.5, 2567,
        '2025-04-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 154, 88, 96,
        37.6, 4.1, 1.8, 0.5, 2897,
        '2025-04-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 150, 96, 94,
        37.1, 4.7, 2.2, 0.3, 3002,
        '2025-04-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 133, 75, 96,
        36.6, 5.3, 5.7, 0.5, 2273,
        '2025-04-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 118, 83, 99,
        37.1, 5.8, 3.2, 0.4, 2246,
        '2025-04-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 152, 98, 94,
        37.3, 4.8, 2.2, 0.4, 3012,
        '2025-04-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 126, 76, 96,
        36.8, 4.7, 3.9, 0.3, 2268,
        '2025-04-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 138, 100, 94,
        37.8, 4.9, 2.6, 0.2, 3154,
        '2025-04-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 121, 74, 100,
        36.8, 8.4, 2.3, 2.2, 3161,
        '2025-04-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 137, 94, 96,
        37.4, 4.7, 1.8, 0.1, 2716,
        '2025-04-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 119, 78, 96,
        36.7, 4.6, 3.2, 0.8, 2449,
        '2025-04-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 112, 74, 100,
        36.6, 7.7, 1.8, 1.7, 3142,
        '2025-04-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 132, 84, 96,
        37.2, 5.5, 5.0, 0.6, 2213,
        '2025-04-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 121, 75, 100,
        36.7, 8.9, 1.3, 2.3, 3106,
        '2025-04-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 155, 95, 96,
        37.2, 4.5, 2.2, 0.3, 2974,
        '2025-04-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 119, 79, 98,
        36.8, 4.8, 4.9, 0.3, 2581,
        '2025-04-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 96, 148, 86, 97,
        37.8, 4.3, 2.1, 0.4, 2759,
        '2025-04-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 96, 148, 94, 94,
        37.3, 4.8, 2.9, 0.3, 2728,
        '2025-04-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 140, 98, 94,
        37.6, 4.1, 1.3, 0.2, 2735,
        '2025-04-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 119, 85, 97,
        36.7, 6.4, 5.6, 0.3, 2229,
        '2025-04-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 138, 93, 96,
        37.5, 4.2, 2.6, 0.5, 2846,
        '2025-04-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 116, 82, 99,
        36.6, 5.3, 5.4, 0.6, 2291,
        '2025-04-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 110, 80, 100,
        36.3, 8.0, 2.6, 2.9, 3012,
        '2025-04-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 132, 75, 97,
        37.2, 6.2, 4.1, 0.3, 2477,
        '2025-04-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 122, 79, 99,
        36.7, 6.3, 5.3, 0.6, 2603,
        '2025-04-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 147, 87, 95,
        37.6, 4.4, 1.5, 0.5, 2796,
        '2025-04-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 142, 85, 96,
        37.0, 3.6, 1.9, 0.2, 2654,
        '2025-04-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 134, 84, 98,
        36.7, 5.1, 3.3, 0.4, 2550,
        '2025-04-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 111, 73, 98,
        36.3, 8.3, 1.9, 1.9, 2798,
        '2025-04-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 129, 77, 96,
        36.5, 6.5, 5.8, 0.4, 2515,
        '2025-04-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 146, 96, 97,
        37.2, 4.4, 2.7, 0.2, 2980,
        '2025-03-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 110, 73, 100,
        36.5, 7.1, 1.1, 1.9, 2808,
        '2025-03-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 100, 141, 90, 95,
        37.1, 4.0, 2.2, 0.1, 2882,
        '2025-03-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 121, 80, 96,
        37.1, 5.2, 5.3, 0.5, 2590,
        '2025-03-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 155, 98, 95,
        37.4, 4.8, 1.9, 0.5, 2731,
        '2025-03-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 140, 100, 97,
        37.8, 4.4, 2.8, 0.3, 2621,
        '2025-03-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 119, 82, 99,
        36.7, 5.7, 3.5, 0.2, 2578,
        '2025-03-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 111, 73, 98,
        36.4, 8.2, 2.1, 2.5, 3130,
        '2025-03-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 112, 77, 97,
        36.6, 7.6, 1.0, 2.9, 2816,
        '2025-03-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 143, 95, 96,
        37.3, 4.2, 1.3, 0.1, 2949,
        '2025-03-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 139, 86, 94,
        37.8, 4.6, 2.5, 0.5, 2734,
        '2025-03-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 126, 80, 99,
        37.0, 6.3, 4.7, 0.5, 2550,
        '2025-03-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 116, 78, 99,
        36.9, 4.9, 3.1, 0.6, 2676,
        '2025-03-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 133, 82, 98,
        37.0, 5.1, 5.2, 0.5, 2572,
        '2025-03-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 137, 93, 96,
        37.3, 3.7, 2.1, 0.2, 3162,
        '2025-03-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 143, 93, 95,
        37.5, 3.9, 2.9, 0.2, 3137,
        '2025-03-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 100, 139, 88, 96,
        37.8, 4.6, 2.3, 0.4, 2750,
        '2025-03-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 135, 78, 97,
        37.1, 4.6, 4.0, 0.6, 2352,
        '2025-03-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 146, 86, 95,
        37.1, 4.4, 2.4, 0.4, 3081,
        '2025-03-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 147, 98, 94,
        37.5, 4.4, 1.2, 0.2, 2624,
        '2025-03-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 141, 90, 97,
        37.0, 4.3, 2.2, 0.2, 2799,
        '2025-03-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 136, 85, 95,
        37.4, 4.5, 1.4, 0.4, 2886,
        '2025-03-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 150, 96, 95,
        37.6, 4.6, 2.2, 0.5, 3059,
        '2025-03-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 116, 80, 97,
        36.5, 8.6, 1.8, 1.7, 2710,
        '2025-03-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 128, 77, 97,
        37.1, 5.0, 5.6, 0.5, 2700,
        '2025-03-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 118, 81, 98,
        36.9, 5.3, 4.5, 0.3, 2587,
        '2025-03-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 123, 79, 98,
        36.6, 8.1, 2.4, 1.6, 3152,
        '2025-03-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 118, 77, 97,
        36.6, 7.9, 2.0, 2.3, 2872,
        '2025-03-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 116, 79, 97,
        36.8, 4.6, 4.3, 0.5, 2385,
        '2025-03-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 124, 74, 98,
        36.5, 7.2, 1.6, 2.1, 2950,
        '2025-03-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 124, 77, 96,
        37.0, 5.4, 4.6, 0.3, 2275,
        '2025-03-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 116, 79, 97,
        37.1, 4.7, 4.2, 0.3, 2231,
        '2025-02-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 119, 85, 98,
        36.6, 6.1, 4.1, 0.6, 2696,
        '2025-02-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 130, 84, 99,
        37.0, 6.4, 5.7, 0.7, 2579,
        '2025-02-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 123, 85, 96,
        37.1, 6.1, 5.3, 0.4, 2647,
        '2025-02-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 120, 76, 99,
        36.6, 8.9, 3.0, 2.5, 2510,
        '2025-02-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 110, 77, 98,
        36.3, 8.8, 2.0, 2.6, 2514,
        '2025-02-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 124, 78, 98,
        36.8, 5.7, 5.4, 0.5, 2692,
        '2025-02-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 129, 76, 96,
        36.9, 6.3, 5.3, 0.7, 2380,
        '2025-02-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 123, 82, 99,
        37.0, 6.4, 3.1, 0.6, 2503,
        '2025-02-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 123, 74, 100,
        36.6, 8.3, 2.4, 2.0, 3076,
        '2025-02-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 123, 77, 100,
        36.4, 7.1, 1.1, 2.0, 2696,
        '2025-02-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 142, 99, 96,
        37.0, 4.5, 1.8, 0.3, 2639,
        '2025-02-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 125, 71, 97,
        36.3, 8.6, 1.3, 2.3, 3169,
        '2025-02-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 140, 99, 95,
        37.0, 4.4, 1.4, 0.3, 2959,
        '2025-02-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 115, 70, 99,
        36.4, 7.3, 2.3, 1.6, 2959,
        '2025-02-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 118, 79, 99,
        36.5, 5.2, 5.8, 0.6, 2362,
        '2025-02-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 127, 79, 98,
        37.2, 5.3, 4.1, 0.3, 2286,
        '2025-02-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 148, 90, 95,
        37.1, 3.7, 1.2, 0.5, 2691,
        '2025-02-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 142, 96, 97,
        37.7, 4.0, 1.9, 0.5, 3088,
        '2025-02-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 112, 72, 97,
        36.8, 7.4, 1.9, 1.8, 3045,
        '2025-02-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 126, 81, 97,
        36.8, 4.6, 3.4, 0.4, 2202,
        '2025-02-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 123, 83, 98,
        37.0, 6.4, 4.7, 0.8, 2670,
        '2025-02-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 114, 74, 99,
        36.3, 8.0, 1.7, 2.2, 2756,
        '2025-02-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 121, 75, 99,
        37.2, 5.9, 4.2, 0.7, 2570,
        '2025-02-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 122, 73, 98,
        36.5, 7.7, 3.0, 2.3, 2894,
        '2025-02-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 120, 74, 98,
        36.8, 8.7, 1.5, 2.8, 2613,
        '2025-02-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 128, 79, 96,
        36.8, 6.2, 4.8, 0.6, 2609,
        '2025-02-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 119, 83, 97,
        37.0, 6.1, 4.1, 0.7, 2556,
        '2025-02-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 121, 80, 98,
        36.5, 8.7, 2.5, 2.3, 2874,
        '2025-01-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 133, 80, 98,
        36.9, 5.0, 5.0, 0.6, 2617,
        '2025-01-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 144, 90, 97,
        37.8, 4.1, 2.8, 0.3, 3012,
        '2025-01-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 122, 72, 99,
        36.6, 8.2, 1.4, 1.8, 2816,
        '2025-01-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 132, 78, 98,
        37.2, 5.2, 3.6, 0.4, 2409,
        '2025-01-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 134, 82, 99,
        37.0, 5.7, 4.4, 0.3, 2600,
        '2025-01-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 120, 75, 98,
        36.7, 8.0, 2.3, 2.0, 2629,
        '2025-01-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 116, 85, 99,
        36.7, 5.8, 3.4, 0.5, 2524,
        '2025-01-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 145, 86, 95,
        37.7, 4.5, 1.5, 0.2, 2910,
        '2025-01-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 120, 72, 99,
        36.3, 8.2, 1.2, 2.3, 2866,
        '2025-01-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 118, 79, 98,
        36.5, 7.5, 1.6, 3.0, 2952,
        '2025-01-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 125, 78, 99,
        37.0, 6.4, 4.7, 0.5, 2551,
        '2025-01-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 129, 82, 96,
        37.1, 6.2, 3.5, 0.3, 2304,
        '2025-01-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 113, 79, 99,
        36.7, 7.1, 2.4, 1.6, 3032,
        '2025-01-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 129, 81, 96,
        36.8, 4.8, 4.8, 0.7, 2691,
        '2025-01-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 83, 115, 78, 96,
        36.8, 4.7, 3.6, 0.7, 2478,
        '2025-01-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 112, 71, 98,
        36.5, 8.5, 2.8, 1.6, 2558,
        '2025-01-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 122, 75, 96,
        36.5, 5.7, 5.7, 0.5, 2598,
        '2025-01-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 128, 78, 99,
        37.0, 4.6, 3.9, 0.5, 2548,
        '2025-01-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 110, 78, 100,
        36.5, 8.7, 1.0, 1.9, 2582,
        '2025-01-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 127, 81, 97,
        36.7, 5.9, 5.1, 0.7, 2317,
        '2025-01-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 120, 76, 98,
        36.6, 5.0, 4.3, 0.4, 2415,
        '2025-01-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 117, 79, 96,
        37.1, 5.0, 4.0, 0.8, 2648,
        '2025-01-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 141, 88, 95,
        37.4, 4.9, 2.6, 0.3, 2836,
        '2025-01-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 115, 83, 97,
        37.1, 5.8, 4.0, 0.3, 2528,
        '2025-01-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 151, 89, 97,
        37.6, 3.7, 2.6, 0.4, 2966,
        '2025-01-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 123, 80, 99,
        36.6, 7.2, 2.0, 1.7, 2984,
        '2025-01-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 115, 79, 98,
        36.6, 5.6, 5.9, 0.5, 2381,
        '2025-01-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 140, 100, 95,
        37.1, 3.7, 2.5, 0.4, 2828,
        '2025-01-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 138, 98, 97,
        37.2, 4.1, 2.3, 0.5, 2670,
        '2025-01-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 121, 75, 97,
        36.6, 9.0, 2.3, 1.9, 2740,
        '2025-01-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 116, 71, 98,
        36.4, 8.1, 1.9, 1.8, 2570,
        '2024-12-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 121, 76, 99,
        36.6, 8.3, 1.8, 2.5, 2598,
        '2024-12-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 110, 74, 98,
        36.5, 7.1, 2.2, 2.4, 3194,
        '2024-12-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 118, 83, 96,
        37.1, 5.2, 5.2, 0.7, 2257,
        '2024-12-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 96, 140, 100, 94,
        37.5, 4.3, 2.1, 0.3, 2889,
        '2024-12-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 123, 76, 97,
        36.7, 7.0, 1.1, 1.7, 3027,
        '2024-12-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 114, 77, 100,
        36.6, 8.6, 2.6, 2.3, 3152,
        '2024-12-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 125, 73, 98,
        36.6, 8.3, 1.7, 2.4, 2510,
        '2024-12-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 148, 90, 95,
        37.6, 4.4, 1.6, 0.3, 2761,
        '2024-12-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 150, 96, 94,
        37.7, 4.8, 1.7, 0.2, 2704,
        '2024-12-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 120, 81, 98,
        36.9, 5.4, 5.5, 0.4, 2602,
        '2024-12-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 111, 70, 98,
        36.5, 7.6, 1.6, 2.4, 3034,
        '2024-12-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 121, 72, 97,
        36.6, 7.5, 1.4, 1.9, 3099,
        '2024-12-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 115, 76, 99,
        36.7, 8.1, 2.4, 2.7, 3134,
        '2024-12-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 120, 81, 97,
        37.1, 5.7, 5.8, 0.3, 2276,
        '2024-12-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 114, 70, 100,
        36.4, 7.6, 1.9, 2.4, 3066,
        '2024-12-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 124, 75, 98,
        36.6, 7.5, 2.1, 1.8, 2639,
        '2024-12-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 124, 81, 98,
        36.6, 5.5, 3.4, 0.2, 2567,
        '2024-12-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 124, 84, 96,
        37.1, 4.6, 3.1, 0.6, 2464,
        '2024-12-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 138, 94, 97,
        37.3, 4.5, 2.7, 0.2, 2839,
        '2024-12-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 148, 94, 95,
        37.5, 4.4, 2.1, 0.4, 3039,
        '2024-12-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 120, 79, 97,
        36.7, 7.4, 2.3, 2.1, 2915,
        '2024-12-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 135, 76, 96,
        36.9, 6.2, 3.9, 0.6, 2673,
        '2024-12-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 120, 70, 97,
        36.6, 8.8, 1.5, 2.0, 2817,
        '2024-12-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 100, 142, 92, 96,
        37.2, 4.1, 1.3, 0.5, 2954,
        '2024-12-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 140, 99, 95,
        37.2, 3.6, 1.1, 0.2, 2734,
        '2024-12-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 138, 92, 97,
        37.7, 4.4, 2.6, 0.5, 2731,
        '2024-12-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 121, 82, 96,
        37.1, 4.7, 3.5, 0.7, 2631,
        '2024-12-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 123, 74, 100,
        36.5, 8.4, 2.3, 2.4, 3033,
        '2024-12-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 133, 82, 98,
        36.9, 5.3, 3.4, 0.4, 2397,
        '2024-12-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 120, 72, 98,
        36.8, 8.2, 2.9, 1.6, 2594,
        '2024-12-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 125, 76, 98,
        36.7, 9.0, 1.9, 2.3, 2700,
        '2024-11-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 147, 91, 95,
        37.2, 4.7, 1.4, 0.5, 2883,
        '2024-11-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 149, 88, 95,
        37.1, 3.9, 2.9, 0.2, 2953,
        '2024-11-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 149, 85, 94,
        37.5, 4.2, 1.6, 0.3, 2780,
        '2024-11-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 116, 80, 96,
        36.9, 5.7, 5.2, 0.3, 2542,
        '2024-11-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 125, 72, 100,
        36.7, 8.5, 1.5, 2.2, 2788,
        '2024-11-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 153, 100, 95,
        37.7, 4.5, 2.4, 0.4, 2705,
        '2024-11-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 96, 139, 95, 94,
        37.0, 3.6, 2.1, 0.1, 3045,
        '2024-11-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 141, 98, 96,
        37.0, 3.9, 2.3, 0.2, 2668,
        '2024-11-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 113, 80, 99,
        36.8, 7.3, 2.9, 2.5, 2569,
        '2024-11-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 119, 85, 96,
        36.8, 6.5, 3.6, 0.6, 2622,
        '2024-11-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 140, 93, 97,
        37.6, 4.9, 2.6, 0.1, 2942,
        '2024-11-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 130, 83, 97,
        37.0, 5.5, 3.1, 0.8, 2637,
        '2024-11-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 153, 89, 94,
        37.4, 4.3, 2.4, 0.3, 3050,
        '2024-11-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 116, 80, 99,
        36.7, 8.8, 2.4, 2.6, 2529,
        '2024-11-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 113, 71, 97,
        36.6, 7.1, 1.2, 2.6, 2731,
        '2024-11-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 131, 84, 99,
        36.6, 5.0, 3.2, 0.5, 2418,
        '2024-11-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 118, 79, 100,
        36.3, 7.7, 1.7, 2.4, 2552,
        '2024-11-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 128, 80, 97,
        36.8, 5.2, 4.7, 0.5, 2654,
        '2024-11-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 115, 77, 97,
        36.7, 4.5, 4.9, 0.6, 2329,
        '2024-11-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 151, 94, 94,
        37.1, 4.0, 1.6, 0.1, 2877,
        '2024-11-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 121, 76, 98,
        36.3, 7.8, 2.8, 2.5, 2825,
        '2024-11-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 116, 80, 97,
        37.1, 6.1, 4.2, 0.3, 2238,
        '2024-11-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 119, 72, 97,
        36.7, 8.2, 1.2, 1.9, 3140,
        '2024-11-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 112, 79, 97,
        36.6, 7.2, 2.5, 2.9, 3107,
        '2024-11-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 83, 115, 78, 96,
        37.1, 5.9, 3.4, 0.6, 2654,
        '2024-11-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 143, 93, 97,
        37.1, 4.2, 2.9, 0.5, 2978,
        '2024-11-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 135, 81, 99,
        37.0, 5.9, 3.2, 0.6, 2273,
        '2024-11-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 119, 83, 96,
        36.9, 5.7, 5.4, 0.6, 2394,
        '2024-11-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 113, 76, 100,
        36.8, 7.3, 2.0, 2.3, 2779,
        '2024-11-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 135, 84, 99,
        37.2, 4.7, 4.7, 0.4, 2331,
        '2024-10-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 155, 91, 95,
        37.6, 4.6, 1.7, 0.3, 3170,
        '2024-10-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 118, 78, 99,
        36.7, 8.8, 1.4, 2.6, 3195,
        '2024-10-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 123, 73, 98,
        36.5, 8.1, 1.6, 2.7, 2882,
        '2024-10-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 143, 85, 97,
        37.5, 3.6, 1.3, 0.5, 3021,
        '2024-10-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 154, 95, 94,
        37.2, 4.1, 2.5, 0.5, 2752,
        '2024-10-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 143, 97, 96,
        37.3, 3.9, 2.1, 0.3, 2917,
        '2024-10-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 134, 80, 97,
        37.2, 5.4, 5.3, 0.5, 2684,
        '2024-10-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 135, 81, 96,
        36.8, 5.7, 4.3, 0.2, 2216,
        '2024-10-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 114, 80, 99,
        36.8, 8.5, 1.8, 2.3, 2981,
        '2024-10-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 121, 77, 97,
        36.7, 8.1, 1.2, 2.6, 2764,
        '2024-10-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 134, 75, 96,
        37.2, 6.2, 3.9, 0.2, 2663,
        '2024-10-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 128, 77, 98,
        36.6, 4.8, 4.1, 0.3, 2318,
        '2024-10-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 139, 93, 96,
        37.1, 4.6, 1.2, 0.1, 2781,
        '2024-10-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 123, 80, 100,
        36.5, 8.9, 2.5, 1.9, 3155,
        '2024-10-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 115, 84, 99,
        36.6, 5.0, 4.3, 0.6, 2477,
        '2024-10-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 117, 83, 97,
        36.7, 6.4, 3.9, 0.7, 2232,
        '2024-10-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 124, 77, 99,
        36.3, 8.1, 1.5, 2.4, 2999,
        '2024-10-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 123, 75, 98,
        37.2, 5.7, 5.7, 0.7, 2639,
        '2024-10-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 110, 75, 98,
        36.8, 8.5, 1.8, 1.8, 2661,
        '2024-10-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 153, 98, 96,
        37.8, 4.5, 2.7, 0.2, 3110,
        '2024-10-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 151, 96, 95,
        37.4, 3.7, 3.0, 0.3, 3140,
        '2024-10-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 142, 97, 95,
        37.5, 4.3, 1.2, 0.4, 2698,
        '2024-10-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 123, 79, 99,
        37.0, 4.9, 5.9, 0.3, 2556,
        '2024-10-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 124, 77, 98,
        36.4, 8.5, 1.4, 1.7, 2601,
        '2024-10-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 123, 78, 99,
        36.5, 8.6, 2.0, 1.5, 3173,
        '2024-10-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 119, 75, 96,
        36.7, 4.7, 4.2, 0.5, 2478,
        '2024-10-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 111, 76, 98,
        36.8, 8.9, 2.8, 2.3, 2923,
        '2024-10-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 130, 80, 98,
        37.2, 6.3, 3.2, 0.7, 2338,
        '2024-10-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 121, 78, 97,
        36.5, 5.9, 5.4, 0.7, 2461,
        '2024-10-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 135, 75, 98,
        37.2, 5.2, 4.9, 0.2, 2350,
        '2024-10-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 153, 85, 94,
        37.6, 3.6, 2.5, 0.1, 2681,
        '2024-09-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 148, 88, 94,
        37.2, 4.0, 2.2, 0.1, 2743,
        '2024-09-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 129, 83, 96,
        36.5, 4.6, 5.3, 0.4, 2367,
        '2024-09-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 138, 91, 95,
        37.7, 3.9, 2.9, 0.4, 2814,
        '2024-09-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 111, 71, 98,
        36.7, 7.4, 2.6, 1.9, 2817,
        '2024-09-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 113, 73, 98,
        36.7, 8.7, 1.3, 2.3, 2769,
        '2024-09-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 144, 94, 95,
        37.1, 4.4, 3.0, 0.2, 2614,
        '2024-09-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 120, 80, 99,
        36.7, 7.9, 2.1, 1.6, 2748,
        '2024-09-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 139, 96, 94,
        37.2, 5.0, 2.5, 0.1, 2723,
        '2024-09-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 135, 89, 96,
        37.8, 4.0, 1.1, 0.3, 2646,
        '2024-09-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 116, 77, 96,
        36.9, 6.5, 5.5, 0.2, 2600,
        '2024-09-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 117, 80, 97,
        36.4, 7.8, 1.9, 2.1, 2743,
        '2024-09-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 141, 87, 94,
        37.7, 4.5, 2.5, 0.2, 3097,
        '2024-09-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 123, 70, 97,
        36.6, 7.4, 2.0, 2.1, 2717,
        '2024-09-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 151, 88, 96,
        37.8, 4.4, 2.2, 0.4, 2907,
        '2024-09-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 154, 94, 94,
        37.3, 4.2, 3.0, 0.4, 2942,
        '2024-09-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 116, 78, 98,
        36.4, 7.6, 2.6, 1.7, 2843,
        '2024-09-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 128, 79, 97,
        37.1, 5.5, 5.5, 0.5, 2331,
        '2024-09-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 147, 94, 95,
        37.1, 4.8, 1.7, 0.2, 2730,
        '2024-09-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 126, 83, 96,
        36.7, 5.1, 3.8, 0.7, 2430,
        '2024-09-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 122, 76, 98,
        36.4, 7.1, 1.1, 1.9, 2720,
        '2024-09-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 110, 77, 98,
        36.4, 7.5, 2.3, 2.0, 2830,
        '2024-09-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 119, 72, 100,
        36.5, 8.6, 1.5, 2.9, 2956,
        '2024-09-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 112, 71, 98,
        36.6, 7.3, 2.6, 3.0, 2611,
        '2024-09-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 117, 73, 99,
        36.5, 7.8, 2.0, 3.0, 2626,
        '2024-09-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 144, 91, 94,
        37.2, 3.8, 2.4, 0.1, 3122,
        '2024-09-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 136, 85, 95,
        37.2, 4.6, 2.3, 0.3, 2904,
        '2024-09-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 137, 99, 95,
        37.7, 3.8, 2.0, 0.3, 2658,
        '2024-09-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 122, 75, 99,
        36.5, 8.7, 1.1, 3.0, 3001,
        '2024-09-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 123, 76, 98,
        36.7, 8.7, 1.3, 2.8, 3047,
        '2024-09-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 123, 79, 99,
        36.4, 8.9, 1.7, 2.5, 2522,
        '2024-08-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 154, 91, 96,
        37.7, 4.9, 2.9, 0.4, 3138,
        '2024-08-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 150, 98, 94,
        37.6, 3.8, 2.0, 0.2, 2942,
        '2024-08-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 135, 76, 97,
        37.2, 5.9, 5.1, 0.2, 2553,
        '2024-08-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 116, 84, 98,
        36.7, 5.1, 3.7, 0.7, 2273,
        '2024-08-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 100, 144, 86, 96,
        37.0, 4.1, 2.3, 0.2, 3002,
        '2024-08-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 113, 74, 99,
        36.5, 8.2, 2.8, 3.0, 3052,
        '2024-08-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 119, 80, 98,
        36.7, 7.4, 1.8, 2.0, 2634,
        '2024-08-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 119, 75, 99,
        36.7, 8.0, 1.9, 2.6, 2779,
        '2024-08-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 122, 76, 99,
        36.7, 8.1, 1.8, 1.5, 3181,
        '2024-08-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 114, 77, 97,
        36.8, 8.2, 2.6, 2.8, 3158,
        '2024-08-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 126, 79, 99,
        36.6, 4.8, 5.7, 0.6, 2611,
        '2024-08-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 124, 76, 97,
        36.5, 7.1, 1.5, 2.4, 2779,
        '2024-08-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 121, 80, 99,
        36.5, 7.6, 1.3, 1.7, 2540,
        '2024-08-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 115, 76, 97,
        36.7, 8.9, 1.1, 2.0, 2562,
        '2024-08-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 142, 99, 94,
        37.4, 4.5, 1.7, 0.3, 2927,
        '2024-08-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 110, 72, 98,
        36.6, 8.2, 2.8, 3.0, 2656,
        '2024-08-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 96, 151, 100, 96,
        37.6, 4.2, 1.9, 0.4, 2982,
        '2024-08-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 144, 93, 95,
        37.5, 4.1, 2.7, 0.4, 2752,
        '2024-08-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 119, 77, 97,
        36.4, 8.8, 1.3, 2.6, 3058,
        '2024-08-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 110, 78, 97,
        36.7, 8.1, 1.5, 2.6, 2787,
        '2024-08-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 118, 77, 99,
        36.4, 8.3, 1.3, 1.5, 2768,
        '2024-08-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 136, 99, 94,
        37.6, 4.4, 3.0, 0.1, 3028,
        '2024-08-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 128, 85, 98,
        36.6, 4.8, 4.0, 0.7, 2610,
        '2024-08-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 146, 92, 96,
        37.0, 4.9, 1.3, 0.2, 2708,
        '2024-08-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 121, 79, 100,
        36.5, 8.8, 1.9, 1.8, 2675,
        '2024-08-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 148, 92, 94,
        37.1, 4.4, 2.4, 0.4, 2957,
        '2024-08-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 140, 94, 95,
        37.4, 4.3, 1.4, 0.5, 2640,
        '2024-08-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 119, 70, 98,
        36.6, 7.9, 1.8, 2.4, 2721,
        '2024-08-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 137, 93, 94,
        37.2, 4.4, 1.1, 0.3, 2647,
        '2024-08-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 115, 70, 97,
        36.5, 8.3, 2.2, 2.1, 2553,
        '2024-08-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 131, 84, 98,
        36.9, 5.7, 4.1, 0.4, 2657,
        '2024-07-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 155, 97, 94,
        37.7, 4.4, 2.4, 0.3, 3126,
        '2024-07-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 113, 71, 99,
        36.7, 7.8, 1.9, 1.8, 3076,
        '2024-07-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 72, 118, 75, 97,
        36.7, 8.9, 2.5, 2.4, 2740,
        '2024-07-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 110, 76, 98,
        36.7, 7.4, 1.4, 1.8, 2998,
        '2024-07-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 123, 74, 100,
        36.7, 7.9, 1.1, 1.9, 2814,
        '2024-07-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 139, 86, 97,
        37.2, 3.6, 1.5, 0.4, 3046,
        '2024-07-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 117, 72, 99,
        36.5, 8.7, 1.0, 2.3, 3060,
        '2024-07-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 118, 71, 99,
        36.6, 8.6, 2.3, 2.0, 2886,
        '2024-07-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 132, 79, 98,
        37.0, 5.6, 3.7, 0.5, 2203,
        '2024-07-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 146, 99, 94,
        37.1, 3.6, 2.4, 0.4, 2954,
        '2024-07-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 120, 79, 96,
        36.9, 6.4, 5.8, 0.7, 2672,
        '2024-07-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 139, 95, 94,
        37.4, 4.8, 2.5, 0.4, 2843,
        '2024-07-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 122, 76, 99,
        36.4, 8.5, 1.4, 2.6, 3128,
        '2024-07-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 123, 72, 97,
        36.7, 7.7, 2.8, 2.8, 2538,
        '2024-07-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 119, 71, 99,
        36.5, 8.8, 1.7, 2.7, 2565,
        '2024-07-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 136, 93, 96,
        37.3, 4.4, 1.4, 0.1, 2606,
        '2024-07-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 122, 80, 99,
        36.5, 8.8, 2.0, 1.9, 2848,
        '2024-07-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 118, 77, 97,
        36.7, 7.6, 1.2, 2.0, 3149,
        '2024-07-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 151, 92, 94,
        37.1, 4.8, 2.5, 0.4, 3049,
        '2024-07-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 116, 81, 96,
        36.8, 6.4, 5.4, 0.3, 2676,
        '2024-07-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 131, 79, 99,
        36.5, 5.4, 3.0, 0.7, 2381,
        '2024-07-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 155, 98, 97,
        37.4, 4.6, 2.0, 0.2, 2730,
        '2024-07-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 110, 71, 99,
        36.4, 7.9, 1.4, 2.7, 3028,
        '2024-07-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 72, 112, 75, 100,
        36.8, 8.7, 1.1, 1.7, 2580,
        '2024-07-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 123, 71, 97,
        36.5, 8.5, 1.9, 1.8, 2512,
        '2024-07-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 118, 77, 98,
        36.8, 4.6, 5.5, 0.6, 2390,
        '2024-07-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 133, 82, 97,
        36.6, 5.7, 3.3, 0.5, 2457,
        '2024-07-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 112, 75, 100,
        36.5, 8.5, 1.7, 1.5, 2848,
        '2024-07-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 133, 81, 99,
        36.7, 6.2, 4.4, 0.6, 2499,
        '2024-07-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 142, 94, 96,
        37.2, 4.4, 2.5, 0.3, 2633,
        '2024-07-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 121, 79, 98,
        36.7, 8.3, 2.0, 2.4, 2536,
        '2024-06-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 131, 85, 99,
        36.8, 4.7, 3.8, 0.7, 2443,
        '2024-06-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 115, 71, 98,
        36.5, 7.9, 2.2, 1.9, 2696,
        '2024-06-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 111, 77, 99,
        36.5, 7.9, 3.0, 1.6, 2796,
        '2024-06-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 146, 89, 96,
        37.4, 4.5, 1.0, 0.3, 2932,
        '2024-06-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 112, 80, 99,
        36.8, 8.6, 2.4, 2.0, 2513,
        '2024-06-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 124, 79, 99,
        36.7, 8.7, 2.5, 2.2, 3177,
        '2024-06-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 124, 85, 98,
        37.1, 5.1, 5.4, 0.4, 2304,
        '2024-06-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 112, 77, 97,
        36.7, 7.9, 2.9, 1.7, 3066,
        '2024-06-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 119, 70, 100,
        36.4, 7.1, 2.5, 2.6, 2909,
        '2024-06-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 138, 95, 97,
        37.3, 3.9, 2.1, 0.2, 3198,
        '2024-06-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 132, 81, 98,
        36.6, 4.7, 5.7, 0.7, 2625,
        '2024-06-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 114, 72, 100,
        36.5, 8.3, 1.8, 2.1, 3083,
        '2024-06-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 136, 95, 94,
        37.1, 4.1, 2.4, 0.3, 2804,
        '2024-06-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 118, 75, 98,
        36.7, 7.8, 2.7, 2.0, 2984,
        '2024-06-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 119, 84, 97,
        37.2, 6.1, 5.5, 0.6, 2401,
        '2024-06-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 127, 81, 98,
        36.9, 5.6, 3.3, 0.2, 2656,
        '2024-06-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 152, 90, 95,
        37.8, 4.0, 1.7, 0.2, 3104,
        '2024-06-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 125, 78, 97,
        36.9, 6.0, 5.8, 0.2, 2316,
        '2024-06-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 124, 80, 98,
        36.6, 8.3, 2.6, 2.6, 3010,
        '2024-06-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 117, 71, 100,
        36.6, 8.2, 1.4, 2.8, 2791,
        '2024-06-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 121, 75, 96,
        36.7, 6.0, 3.2, 0.7, 2505,
        '2024-06-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 124, 79, 97,
        36.7, 5.4, 6.0, 0.4, 2501,
        '2024-06-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 155, 91, 94,
        37.3, 4.3, 1.2, 0.2, 2718,
        '2024-06-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 145, 93, 97,
        37.5, 3.6, 1.6, 0.1, 3180,
        '2024-06-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 126, 82, 99,
        37.2, 5.3, 3.5, 0.6, 2510,
        '2024-06-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 112, 70, 100,
        36.5, 8.7, 2.9, 2.2, 3071,
        '2024-06-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 147, 93, 97,
        37.6, 3.9, 1.4, 0.2, 2759,
        '2024-06-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 116, 71, 100,
        36.3, 8.7, 2.0, 2.7, 3111,
        '2024-06-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 117, 82, 96,
        36.7, 5.8, 5.1, 0.3, 2289,
        '2024-06-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 148, 91, 95,
        37.4, 4.6, 1.8, 0.2, 2650,
        '2024-05-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 135, 88, 97,
        37.6, 4.3, 3.0, 0.1, 2955,
        '2024-05-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 153, 97, 96,
        37.6, 4.9, 2.9, 0.1, 2822,
        '2024-05-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 72, 121, 71, 99,
        36.6, 8.6, 1.8, 2.8, 2918,
        '2024-05-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 112, 78, 99,
        36.5, 7.2, 2.2, 2.2, 2730,
        '2024-05-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 138, 92, 96,
        37.7, 4.7, 2.6, 0.4, 2878,
        '2024-05-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 119, 76, 99,
        36.5, 7.2, 1.7, 2.3, 2824,
        '2024-05-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 148, 89, 96,
        37.6, 4.2, 1.1, 0.4, 3034,
        '2024-05-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 121, 78, 99,
        37.2, 6.5, 3.9, 0.4, 2288,
        '2024-05-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 149, 90, 94,
        37.4, 4.8, 1.1, 0.3, 3119,
        '2024-05-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 143, 91, 94,
        37.4, 4.1, 2.1, 0.2, 2976,
        '2024-05-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 121, 82, 99,
        36.8, 5.0, 5.0, 0.4, 2266,
        '2024-05-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 150, 86, 95,
        37.7, 3.9, 1.4, 0.4, 3009,
        '2024-05-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 83, 117, 76, 98,
        36.7, 4.5, 4.8, 0.7, 2626,
        '2024-05-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 111, 77, 97,
        36.7, 8.4, 2.8, 1.8, 2961,
        '2024-05-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 121, 76, 99,
        36.4, 8.0, 2.1, 2.0, 2989,
        '2024-05-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 121, 75, 100,
        36.8, 8.6, 2.3, 2.6, 2798,
        '2024-05-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 135, 82, 98,
        36.5, 5.7, 5.8, 0.2, 2276,
        '2024-05-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 149, 88, 94,
        37.8, 3.7, 1.6, 0.3, 2652,
        '2024-05-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 124, 81, 96,
        36.6, 4.6, 4.0, 0.2, 2483,
        '2024-05-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 129, 82, 97,
        36.7, 4.8, 5.5, 0.7, 2617,
        '2024-05-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 137, 91, 96,
        37.7, 4.8, 1.3, 0.1, 3051,
        '2024-05-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 117, 72, 99,
        36.5, 7.1, 1.2, 2.9, 2666,
        '2024-05-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 135, 96, 97,
        37.2, 4.6, 1.4, 0.4, 2674,
        '2024-05-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 117, 76, 99,
        36.7, 7.6, 2.8, 2.0, 3086,
        '2024-05-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 135, 82, 96,
        36.9, 5.2, 5.1, 0.8, 2669,
        '2024-05-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 123, 73, 98,
        36.8, 7.3, 1.9, 1.5, 3052,
        '2024-05-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 127, 77, 96,
        36.8, 5.3, 5.3, 0.5, 2475,
        '2024-05-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 116, 82, 99,
        37.1, 5.1, 5.6, 0.7, 2511,
        '2024-05-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 122, 72, 97,
        36.7, 8.7, 1.9, 1.9, 2800,
        '2024-05-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 131, 77, 99,
        37.1, 5.0, 5.6, 0.6, 2595,
        '2024-05-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 119, 75, 97,
        36.8, 5.1, 3.5, 0.3, 2299,
        '2024-04-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 114, 77, 99,
        36.7, 7.1, 1.3, 1.8, 2790,
        '2024-04-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 124, 77, 97,
        36.6, 8.3, 2.8, 2.6, 2734,
        '2024-04-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 122, 72, 97,
        36.7, 9.0, 1.2, 2.9, 2686,
        '2024-04-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 155, 91, 94,
        37.6, 4.9, 2.7, 0.3, 3116,
        '2024-04-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 152, 85, 96,
        37.6, 5.0, 1.7, 0.2, 3125,
        '2024-04-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 125, 85, 97,
        36.5, 5.4, 5.5, 0.5, 2247,
        '2024-04-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 112, 76, 99,
        36.7, 8.8, 2.6, 2.0, 2699,
        '2024-04-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 126, 75, 96,
        37.0, 6.0, 5.0, 0.4, 2429,
        '2024-04-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 112, 76, 97,
        36.8, 8.8, 1.2, 1.9, 2502,
        '2024-04-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 120, 77, 99,
        36.5, 4.9, 5.8, 0.8, 2207,
        '2024-04-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 117, 78, 97,
        37.0, 6.2, 4.6, 0.4, 2327,
        '2024-04-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 146, 96, 94,
        37.5, 4.7, 2.6, 0.1, 2620,
        '2024-04-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 138, 100, 94,
        37.6, 3.8, 1.4, 0.3, 3195,
        '2024-04-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 117, 73, 100,
        36.5, 8.9, 2.5, 1.9, 2543,
        '2024-04-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 117, 76, 97,
        36.7, 7.2, 1.7, 1.7, 3118,
        '2024-04-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 140, 85, 95,
        37.2, 3.9, 1.3, 0.1, 2711,
        '2024-04-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 149, 94, 95,
        37.4, 4.7, 2.4, 0.5, 2901,
        '2024-04-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 111, 71, 97,
        36.5, 7.3, 2.2, 1.7, 3012,
        '2024-04-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 120, 79, 99,
        36.5, 5.1, 3.8, 0.8, 2543,
        '2024-04-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 130, 76, 97,
        37.1, 4.6, 3.1, 0.7, 2588,
        '2024-04-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 125, 84, 99,
        36.7, 5.3, 5.7, 0.8, 2326,
        '2024-04-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 118, 76, 100,
        36.8, 7.5, 2.3, 2.0, 3091,
        '2024-04-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 115, 75, 97,
        36.7, 7.7, 1.5, 2.0, 3098,
        '2024-04-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 115, 80, 96,
        36.9, 4.8, 4.1, 0.4, 2295,
        '2024-04-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 142, 96, 96,
        37.1, 3.8, 2.7, 0.3, 2985,
        '2024-04-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 116, 85, 99,
        36.5, 5.1, 3.5, 0.5, 2633,
        '2024-04-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 115, 83, 96,
        37.2, 5.3, 3.6, 0.5, 2384,
        '2024-04-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 122, 73, 99,
        36.5, 7.6, 2.4, 1.6, 3089,
        '2024-04-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 126, 75, 99,
        36.7, 6.0, 4.7, 0.4, 2605,
        '2024-04-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 125, 80, 100,
        36.5, 8.5, 2.9, 2.1, 3033,
        '2024-03-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 83, 131, 77, 99,
        36.6, 4.8, 4.7, 0.6, 2427,
        '2024-03-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 116, 75, 98,
        37.0, 5.7, 3.0, 0.3, 2674,
        '2024-03-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 122, 77, 99,
        37.2, 5.6, 5.1, 0.5, 2389,
        '2024-03-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 111, 70, 98,
        36.7, 7.5, 2.6, 1.9, 2902,
        '2024-03-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 124, 75, 100,
        36.8, 7.6, 2.8, 2.6, 2522,
        '2024-03-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 72, 122, 76, 98,
        36.6, 7.6, 1.2, 1.8, 2704,
        '2024-03-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 116, 80, 96,
        36.8, 5.6, 3.9, 0.3, 2468,
        '2024-03-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 144, 96, 97,
        37.6, 3.6, 1.1, 0.2, 3002,
        '2024-03-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 111, 77, 99,
        36.4, 7.1, 2.3, 1.9, 2982,
        '2024-03-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 127, 81, 99,
        36.8, 6.4, 5.5, 0.7, 2685,
        '2024-03-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 130, 84, 99,
        36.6, 5.5, 5.8, 0.2, 2362,
        '2024-03-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 127, 83, 97,
        37.0, 6.0, 3.9, 0.6, 2524,
        '2024-03-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 135, 94, 97,
        37.3, 3.9, 2.9, 0.3, 2886,
        '2024-03-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 112, 77, 99,
        36.7, 8.0, 2.8, 1.8, 2720,
        '2024-03-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 143, 88, 94,
        37.4, 3.9, 1.2, 0.1, 2814,
        '2024-03-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 114, 80, 100,
        36.6, 8.9, 1.5, 2.7, 2699,
        '2024-03-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 135, 95, 96,
        37.0, 4.6, 2.0, 0.2, 3056,
        '2024-03-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 144, 87, 95,
        37.5, 3.6, 1.2, 0.2, 2826,
        '2024-03-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 120, 79, 98,
        36.5, 8.0, 1.2, 2.3, 2584,
        '2024-03-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 123, 72, 98,
        36.4, 8.6, 1.9, 2.5, 2815,
        '2024-03-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 148, 95, 97,
        37.7, 5.0, 2.1, 0.4, 2863,
        '2024-03-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 138, 96, 94,
        37.6, 3.6, 1.1, 0.3, 2742,
        '2024-03-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 152, 91, 95,
        37.4, 4.6, 2.5, 0.3, 2713,
        '2024-03-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 122, 83, 96,
        37.1, 5.6, 3.3, 0.3, 2669,
        '2024-03-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 83, 118, 83, 96,
        37.0, 6.1, 4.8, 0.5, 2555,
        '2024-03-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 72, 113, 77, 100,
        36.8, 7.3, 2.5, 2.9, 3076,
        '2024-03-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 113, 77, 100,
        36.6, 8.2, 1.1, 2.0, 3101,
        '2024-03-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 137, 89, 94,
        37.5, 4.2, 2.5, 0.4, 2808,
        '2024-03-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 112, 72, 99,
        36.5, 8.1, 1.5, 2.5, 2726,
        '2024-03-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 121, 80, 99,
        37.1, 6.3, 4.2, 0.3, 2649,
        '2024-03-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 146, 99, 97,
        37.1, 4.2, 2.6, 0.4, 2947,
        '2024-02-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 127, 84, 96,
        37.2, 6.5, 5.8, 0.5, 2444,
        '2024-02-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 100, 140, 99, 96,
        37.1, 4.5, 1.1, 0.1, 2938,
        '2024-02-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 153, 93, 96,
        37.0, 3.7, 2.7, 0.4, 2959,
        '2024-02-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 119, 75, 100,
        36.7, 8.1, 2.9, 2.6, 2792,
        '2024-02-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 147, 93, 96,
        37.5, 4.3, 2.6, 0.4, 2721,
        '2024-02-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 111, 72, 97,
        36.7, 8.2, 2.3, 2.7, 2570,
        '2024-02-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 118, 80, 99,
        36.4, 8.9, 1.8, 2.0, 2587,
        '2024-02-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 110, 80, 97,
        36.3, 7.7, 2.4, 2.4, 2520,
        '2024-02-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 125, 85, 99,
        36.8, 4.5, 4.4, 0.4, 2356,
        '2024-02-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 122, 85, 97,
        36.9, 6.0, 4.0, 0.5, 2426,
        '2024-02-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 137, 94, 96,
        37.3, 5.0, 2.8, 0.3, 3189,
        '2024-02-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 149, 89, 96,
        37.1, 4.9, 1.7, 0.2, 2849,
        '2024-02-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 123, 73, 99,
        36.3, 7.1, 2.4, 2.0, 2527,
        '2024-02-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 147, 95, 96,
        37.0, 4.6, 2.3, 0.4, 3018,
        '2024-02-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 124, 72, 98,
        36.6, 8.2, 1.4, 2.2, 2614,
        '2024-02-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 130, 76, 96,
        36.6, 5.9, 5.4, 0.6, 2563,
        '2024-02-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 114, 79, 100,
        36.8, 8.0, 1.5, 2.7, 2514,
        '2024-02-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 153, 100, 97,
        37.2, 4.9, 1.2, 0.2, 2847,
        '2024-02-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 117, 77, 97,
        37.2, 5.1, 5.0, 0.5, 2290,
        '2024-02-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 151, 98, 97,
        37.1, 5.0, 1.5, 0.2, 3057,
        '2024-02-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 125, 78, 97,
        36.5, 7.8, 1.4, 1.5, 3040,
        '2024-02-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 82, 124, 77, 97,
        37.1, 6.0, 3.6, 0.5, 2213,
        '2024-02-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 120, 75, 98,
        37.2, 6.3, 3.2, 0.6, 2319,
        '2024-02-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 119, 78, 99,
        37.1, 5.1, 4.0, 0.8, 2338,
        '2024-02-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 138, 93, 97,
        37.1, 3.8, 1.6, 0.5, 2608,
        '2024-02-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 72, 120, 70, 98,
        36.4, 7.3, 2.8, 2.3, 3025,
        '2024-02-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 152, 94, 95,
        37.5, 3.6, 2.5, 0.5, 3190,
        '2024-02-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 118, 77, 99,
        37.0, 5.0, 4.2, 0.5, 2311,
        '2024-02-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 117, 71, 100,
        36.5, 8.7, 1.2, 1.6, 2950,
        '2024-01-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 117, 74, 100,
        36.7, 8.5, 1.4, 2.2, 2506,
        '2024-01-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 111, 80, 98,
        36.5, 7.6, 2.6, 1.7, 3063,
        '2024-01-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 135, 84, 97,
        37.2, 5.3, 4.0, 0.6, 2385,
        '2024-01-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 153, 87, 94,
        37.5, 4.4, 1.0, 0.1, 2653,
        '2024-01-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 145, 85, 94,
        37.0, 4.8, 2.6, 0.2, 3101,
        '2024-01-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 114, 73, 98,
        36.7, 8.9, 1.5, 2.1, 2935,
        '2024-01-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 149, 98, 95,
        37.8, 3.8, 1.8, 0.4, 3000,
        '2024-01-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 124, 79, 97,
        36.6, 8.7, 1.8, 2.3, 3195,
        '2024-01-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 119, 77, 98,
        37.2, 5.4, 3.4, 0.3, 2222,
        '2024-01-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 138, 86, 97,
        37.5, 4.4, 2.8, 0.3, 3082,
        '2024-01-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 146, 95, 96,
        37.1, 3.8, 2.2, 0.2, 3062,
        '2024-01-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 110, 75, 100,
        36.3, 7.0, 2.6, 1.8, 2752,
        '2024-01-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 118, 75, 96,
        37.2, 6.3, 4.3, 0.8, 2580,
        '2024-01-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 138, 100, 94,
        37.7, 4.9, 2.8, 0.3, 2939,
        '2024-01-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 96, 148, 91, 94,
        37.1, 4.8, 2.5, 0.4, 2800,
        '2024-01-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 147, 94, 95,
        37.4, 4.2, 1.9, 0.3, 3196,
        '2024-01-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 150, 87, 96,
        37.5, 4.9, 1.4, 0.3, 2616,
        '2024-01-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 117, 80, 99,
        36.7, 8.5, 1.3, 2.9, 3021,
        '2024-01-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 146, 85, 97,
        37.3, 4.8, 1.2, 0.4, 2939,
        '2024-01-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 110, 75, 97,
        36.4, 7.9, 1.4, 2.8, 2820,
        '2024-01-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 145, 94, 97,
        37.0, 4.1, 1.9, 0.1, 2711,
        '2024-01-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 150, 87, 95,
        37.6, 3.6, 1.7, 0.1, 3171,
        '2024-01-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 146, 95, 95,
        37.4, 3.8, 1.2, 0.4, 3081,
        '2024-01-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 88, 118, 76, 99,
        37.1, 5.8, 3.3, 0.6, 2465,
        '2024-01-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 126, 76, 98,
        36.5, 4.7, 5.8, 0.4, 2239,
        '2024-01-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 151, 86, 97,
        37.6, 3.9, 2.2, 0.5, 3025,
        '2024-01-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 127, 78, 98,
        36.9, 5.9, 5.3, 0.6, 2363,
        '2024-01-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 121, 82, 97,
        36.6, 5.5, 3.4, 0.3, 2485,
        '2024-01-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 129, 83, 98,
        36.5, 4.8, 3.8, 0.7, 2413,
        '2024-01-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 118, 76, 96,
        36.8, 4.9, 3.4, 0.5, 2668,
        '2024-01-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 122, 79, 97,
        36.6, 7.0, 2.7, 1.8, 2680,
        '2023-12-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 144, 91, 97,
        37.1, 4.8, 2.5, 0.4, 3024,
        '2023-12-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 130, 75, 96,
        37.1, 6.4, 4.3, 0.4, 2639,
        '2023-12-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 116, 70, 100,
        36.5, 7.0, 2.2, 2.2, 2647,
        '2023-12-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 111, 78, 100,
        36.7, 8.1, 2.8, 2.4, 2710,
        '2023-12-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 124, 76, 98,
        36.7, 6.2, 5.8, 0.4, 2384,
        '2023-12-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 124, 82, 98,
        37.0, 5.2, 3.8, 0.5, 2678,
        '2023-12-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 119, 79, 97,
        37.1, 4.8, 4.3, 0.7, 2568,
        '2023-12-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 108, 140, 98, 97,
        37.4, 4.3, 3.0, 0.2, 2813,
        '2023-12-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 121, 76, 97,
        36.5, 5.8, 3.9, 0.3, 2351,
        '2023-12-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 120, 76, 97,
        36.5, 6.3, 3.2, 0.5, 2549,
        '2023-12-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 116, 74, 98,
        36.4, 8.8, 2.8, 2.1, 3036,
        '2023-12-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 152, 97, 96,
        37.5, 4.2, 2.4, 0.2, 3034,
        '2023-12-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 121, 80, 99,
        36.6, 8.1, 2.4, 2.4, 3171,
        '2023-12-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 140, 99, 94,
        37.8, 3.5, 1.8, 0.4, 2930,
        '2023-12-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 110, 80, 97,
        36.5, 8.4, 2.9, 2.7, 2725,
        '2023-12-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 114, 76, 98,
        36.6, 7.3, 2.0, 2.9, 2595,
        '2023-12-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 125, 75, 100,
        36.8, 8.5, 1.1, 1.7, 2639,
        '2023-12-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 116, 71, 99,
        36.7, 8.7, 2.4, 1.5, 2568,
        '2023-12-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 124, 78, 99,
        37.0, 6.1, 5.1, 0.7, 2496,
        '2023-12-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 110, 70, 100,
        36.6, 7.7, 1.0, 2.6, 2734,
        '2023-12-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 120, 83, 97,
        37.0, 4.7, 5.8, 0.8, 2565,
        '2023-12-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 135, 75, 96,
        36.5, 6.3, 5.2, 0.5, 2448,
        '2023-12-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 124, 77, 96,
        37.0, 6.1, 5.5, 0.5, 2343,
        '2023-12-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 115, 79, 98,
        36.3, 8.2, 1.8, 2.7, 2632,
        '2023-12-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 150, 99, 96,
        37.4, 3.9, 2.9, 0.4, 2812,
        '2023-12-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 121, 75, 97,
        36.9, 6.0, 3.6, 0.3, 2414,
        '2023-12-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 138, 87, 95,
        37.1, 3.7, 1.3, 0.5, 3199,
        '2023-12-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 114, 76, 99,
        36.7, 7.8, 1.3, 1.8, 2698,
        '2023-12-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 138, 88, 95,
        37.2, 4.5, 1.1, 0.5, 3025,
        '2023-12-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 112, 79, 99,
        36.8, 8.7, 1.4, 1.7, 2762,
        '2023-12-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 125, 73, 100,
        36.6, 7.8, 1.4, 2.1, 3158,
        '2023-11-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 115, 82, 98,
        36.8, 4.9, 4.0, 0.5, 2265,
        '2023-11-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 63, 118, 71, 100,
        36.6, 8.2, 1.3, 1.6, 3186,
        '2023-11-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 134, 83, 96,
        37.0, 6.0, 4.8, 0.3, 2453,
        '2023-11-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 128, 83, 99,
        37.0, 4.6, 5.1, 0.6, 2441,
        '2023-11-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 147, 90, 97,
        37.5, 3.5, 1.3, 0.4, 2920,
        '2023-11-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 145, 100, 97,
        37.8, 4.7, 2.0, 0.2, 2733,
        '2023-11-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 121, 71, 97,
        36.7, 7.6, 2.7, 2.0, 2657,
        '2023-11-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 149, 86, 97,
        37.2, 3.6, 1.7, 0.2, 2748,
        '2023-11-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 112, 75, 97,
        36.5, 8.3, 2.1, 2.9, 2861,
        '2023-11-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 138, 95, 94,
        37.8, 4.0, 1.4, 0.3, 3075,
        '2023-11-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 124, 72, 98,
        36.7, 8.2, 2.2, 1.7, 2781,
        '2023-11-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 123, 83, 96,
        37.2, 5.2, 6.0, 0.6, 2224,
        '2023-11-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 142, 96, 96,
        37.5, 4.7, 2.7, 0.3, 2860,
        '2023-11-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 122, 77, 99,
        36.5, 7.4, 2.5, 1.7, 2594,
        '2023-11-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 110, 147, 100, 95,
        37.1, 4.9, 1.7, 0.3, 2876,
        '2023-11-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 120, 77, 98,
        37.0, 5.8, 4.7, 0.6, 2519,
        '2023-11-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 113, 77, 99,
        36.7, 7.8, 2.5, 2.6, 3064,
        '2023-11-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 110, 71, 100,
        36.7, 8.9, 1.9, 2.0, 2903,
        '2023-11-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 135, 79, 99,
        37.2, 6.4, 4.3, 0.5, 2553,
        '2023-11-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 119, 84, 99,
        37.2, 5.3, 3.7, 0.3, 2364,
        '2023-11-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 100, 152, 92, 96,
        37.3, 5.0, 2.1, 0.3, 2936,
        '2023-11-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 116, 78, 98,
        36.6, 5.6, 4.4, 0.7, 2428,
        '2023-11-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 124, 72, 97,
        36.5, 8.2, 1.3, 2.0, 2972,
        '2023-11-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 136, 87, 95,
        37.6, 3.6, 1.8, 0.2, 2889,
        '2023-11-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 148, 85, 95,
        37.6, 4.1, 2.5, 0.1, 2764,
        '2023-11-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 119, 85, 99,
        36.9, 6.4, 5.2, 0.6, 2361,
        '2023-11-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 111, 74, 97,
        36.6, 8.2, 1.2, 2.2, 2752,
        '2023-11-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 80, 124, 75, 97,
        37.1, 5.2, 5.2, 0.7, 2693,
        '2023-11-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 122, 70, 97,
        36.7, 7.1, 2.3, 2.3, 3178,
        '2023-11-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 149, 96, 97,
        37.7, 4.5, 1.9, 0.4, 2870,
        '2023-10-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 91, 116, 79, 96,
        37.2, 5.1, 4.5, 0.4, 2267,
        '2023-10-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 135, 76, 96,
        36.8, 6.3, 3.9, 0.8, 2466,
        '2023-10-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 121, 83, 97,
        36.7, 5.3, 3.1, 0.6, 2579,
        '2023-10-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 142, 92, 96,
        37.7, 4.5, 1.7, 0.2, 2672,
        '2023-10-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 136, 86, 96,
        37.6, 3.5, 2.3, 0.4, 3140,
        '2023-10-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 127, 82, 99,
        37.1, 4.8, 3.8, 0.6, 2601,
        '2023-10-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 62, 115, 74, 100,
        36.7, 8.3, 1.2, 2.0, 2858,
        '2023-10-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 153, 94, 95,
        37.7, 4.6, 2.3, 0.4, 2892,
        '2023-10-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 117, 79, 98,
        36.5, 8.0, 1.1, 2.8, 3180,
        '2023-10-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 71, 124, 75, 98,
        36.8, 8.1, 2.5, 2.3, 2913,
        '2023-10-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 86, 131, 77, 98,
        36.6, 5.7, 4.0, 0.7, 2302,
        '2023-10-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 117, 80, 97,
        37.1, 4.8, 3.9, 0.4, 2209,
        '2023-10-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 124, 80, 100,
        36.3, 7.1, 2.7, 2.0, 2848,
        '2023-10-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 125, 78, 97,
        36.6, 7.4, 2.2, 2.2, 2791,
        '2023-10-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 96, 145, 96, 97,
        37.7, 4.2, 2.0, 0.2, 3004,
        '2023-10-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 148, 86, 94,
        37.2, 3.7, 2.5, 0.4, 2730,
        '2023-10-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 96, 144, 99, 94,
        37.0, 4.6, 2.1, 0.2, 2685,
        '2023-10-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 118, 78, 100,
        36.8, 7.2, 2.1, 2.6, 2699,
        '2023-10-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 64, 120, 70, 99,
        36.3, 8.4, 1.3, 2.8, 2852,
        '2023-10-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 98, 150, 91, 95,
        37.4, 4.7, 1.0, 0.4, 2951,
        '2023-10-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 77, 126, 78, 98,
        37.0, 6.3, 4.0, 0.5, 2346,
        '2023-10-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 111, 76, 98,
        36.5, 7.6, 1.7, 1.9, 3073,
        '2023-10-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 83, 119, 80, 98,
        36.6, 5.9, 4.8, 0.7, 2360,
        '2023-10-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 55, 118, 77, 98,
        36.7, 8.9, 1.9, 2.6, 2654,
        '2023-10-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 128, 79, 97,
        36.8, 5.6, 3.8, 0.3, 2503,
        '2023-10-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 137, 98, 94,
        37.8, 4.7, 1.9, 0.3, 2871,
        '2023-10-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 119, 75, 100,
        36.4, 7.0, 2.6, 1.9, 2612,
        '2023-10-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 148, 99, 97,
        37.5, 3.9, 2.2, 0.2, 3075,
        '2023-10-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 85, 118, 76, 96,
        36.7, 6.5, 5.1, 0.3, 2513,
        '2023-10-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 65, 122, 71, 99,
        36.3, 7.4, 2.7, 1.8, 2892,
        '2023-10-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 134, 82, 96,
        36.9, 5.4, 4.2, 0.3, 2448,
        '2023-09-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 155, 89, 94,
        37.2, 4.6, 2.9, 0.1, 2973,
        '2023-09-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 94, 152, 90, 97,
        37.4, 4.9, 2.1, 0.3, 3095,
        '2023-09-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 153, 87, 97,
        37.4, 4.2, 1.6, 0.2, 2877,
        '2023-09-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 145, 86, 97,
        37.8, 4.3, 2.8, 0.1, 2968,
        '2023-09-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 128, 79, 96,
        36.8, 5.4, 5.2, 0.8, 2220,
        '2023-09-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 105, 145, 88, 97,
        37.1, 3.6, 1.8, 0.3, 2746,
        '2023-09-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 129, 82, 99,
        36.8, 5.8, 3.4, 0.6, 2662,
        '2023-09-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 100, 147, 97, 97,
        37.7, 4.6, 1.1, 0.1, 2639,
        '2023-09-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 101, 146, 94, 95,
        37.3, 4.0, 2.4, 0.4, 2635,
        '2023-09-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 69, 113, 76, 100,
        36.6, 8.9, 2.7, 2.6, 2786,
        '2023-09-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 143, 98, 94,
        37.8, 4.3, 1.5, 0.5, 2955,
        '2023-09-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 118, 83, 98,
        36.9, 4.7, 3.8, 0.7, 2550,
        '2023-09-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 79, 126, 79, 97,
        37.2, 5.0, 3.1, 0.3, 2285,
        '2023-09-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 58, 113, 80, 99,
        36.7, 8.9, 2.1, 2.1, 3054,
        '2023-09-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 113, 73, 98,
        36.4, 8.8, 2.8, 2.5, 2506,
        '2023-09-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 145, 98, 97,
        37.7, 4.4, 1.1, 0.4, 3011,
        '2023-09-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 67, 125, 76, 100,
        36.3, 7.6, 1.6, 1.9, 2815,
        '2023-09-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 99, 155, 86, 97,
        37.0, 3.5, 2.6, 0.3, 2686,
        '2023-09-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 128, 84, 97,
        37.2, 4.9, 4.9, 0.7, 2211,
        '2023-09-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 112, 72, 100,
        36.6, 8.4, 2.6, 1.6, 2843,
        '2023-09-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 89, 127, 75, 99,
        36.7, 4.7, 5.7, 0.6, 2207,
        '2023-09-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 119, 82, 99,
        36.8, 5.9, 4.3, 0.7, 2604,
        '2023-09-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 115, 76, 97,
        36.5, 7.1, 1.2, 2.5, 3166,
        '2023-09-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 138, 89, 95,
        37.0, 4.8, 2.7, 0.1, 2881,
        '2023-09-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 104, 153, 85, 94,
        37.4, 4.5, 2.0, 0.3, 2704,
        '2023-09-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 141, 89, 97,
        37.2, 4.9, 1.2, 0.5, 3092,
        '2023-09-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 124, 80, 97,
        36.5, 7.9, 1.8, 2.6, 2636,
        '2023-09-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 149, 100, 97,
        37.6, 4.2, 2.8, 0.3, 2981,
        '2023-09-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 68, 123, 80, 98,
        36.4, 8.7, 1.8, 2.7, 2622,
        '2023-09-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 139, 86, 97,
        37.3, 4.9, 2.5, 0.3, 3092,
        '2023-08-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 111, 75, 99,
        36.8, 8.2, 1.1, 2.3, 2836,
        '2023-08-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 75, 135, 80, 96,
        36.6, 6.3, 3.5, 0.7, 2484,
        '2023-08-29 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 95, 138, 87, 97,
        37.5, 3.9, 2.5, 0.4, 2673,
        '2023-08-28 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 74, 120, 80, 97,
        36.4, 7.6, 1.9, 1.9, 2763,
        '2023-08-27 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 76, 129, 76, 98,
        36.8, 5.5, 4.1, 0.4, 2684,
        '2023-08-26 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 97, 153, 85, 95,
        37.2, 4.8, 1.9, 0.3, 2860,
        '2023-08-25 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 73, 111, 72, 100,
        36.7, 7.9, 1.5, 3.0, 2972,
        '2023-08-24 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 122, 83, 96,
        37.0, 6.3, 5.1, 0.2, 2699,
        '2023-08-23 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 60, 116, 79, 100,
        36.5, 8.4, 2.0, 2.3, 3121,
        '2023-08-22 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 84, 122, 80, 99,
        36.7, 4.9, 4.4, 0.4, 2211,
        '2023-08-21 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 125, 79, 98,
        36.6, 7.5, 1.8, 1.6, 2707,
        '2023-08-20 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 90, 123, 85, 96,
        36.8, 6.2, 3.7, 0.5, 2430,
        '2023-08-19 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 143, 93, 97,
        37.5, 4.4, 2.1, 0.2, 2613,
        '2023-08-18 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 59, 111, 71, 97,
        36.6, 8.8, 1.9, 2.3, 2778,
        '2023-08-17 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 139, 94, 94,
        37.7, 4.8, 1.2, 0.1, 2741,
        '2023-08-16 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 61, 110, 78, 97,
        36.7, 8.4, 1.4, 2.6, 2982,
        '2023-08-15 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 109, 146, 96, 95,
        37.0, 4.6, 1.8, 0.4, 3004,
        '2023-08-14 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 102, 153, 99, 97,
        37.4, 4.7, 2.7, 0.4, 3058,
        '2023-08-13 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 103, 152, 93, 97,
        37.0, 4.2, 1.3, 0.2, 3171,
        '2023-08-12 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 125, 80, 98,
        36.9, 5.9, 4.1, 0.6, 2409,
        '2023-08-11 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 100, 151, 88, 97,
        37.2, 4.8, 1.8, 0.4, 3090,
        '2023-08-10 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 123, 82, 96,
        37.1, 5.8, 5.6, 0.4, 2292,
        '2023-08-09 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 81, 115, 82, 98,
        37.1, 4.7, 5.9, 0.6, 2311,
        '2023-08-08 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 106, 150, 100, 97,
        37.1, 4.9, 2.2, 0.5, 2976,
        '2023-08-07 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 78, 115, 76, 98,
        36.8, 4.7, 3.9, 0.2, 2469,
        '2023-08-06 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 93, 124, 78, 96,
        37.0, 4.6, 3.4, 0.8, 2363,
        '2023-08-05 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 56, 124, 75, 99,
        36.5, 7.6, 1.2, 2.2, 2959,
        '2023-08-04 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 57, 112, 74, 98,
        36.6, 8.0, 2.1, 2.9, 2977,
        '2023-08-03 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 92, 146, 87, 94,
        37.2, 3.6, 1.7, 0.4, 2878,
        '2023-08-02 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 87, 122, 81, 97,
        37.1, 6.2, 5.6, 0.6, 2447,
        '2023-08-01 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 66, 110, 73, 100,
        36.7, 8.6, 1.5, 2.2, 2627,
        '2023-07-31 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 107, 139, 92, 97,
        37.5, 4.6, 1.6, 0.3, 2937,
        '2023-07-30 15:11:48');

INSERT INTO daily_logs 
(user_id, heart_rate, systolic_bp, diastolic_bp, spo2,
 temperature, sleep_hours, study_hours, workout_hours, calories, timestamp)
VALUES (1, 70, 114, 80, 98,
        36.5, 8.9, 1.9, 1.7, 2822,
        '2023-07-29 15:11:48');
select * from daily_logs;