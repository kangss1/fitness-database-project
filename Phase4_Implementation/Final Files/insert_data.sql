-- ===========================================
-- File: insert_data.sql
-- Description: Inserts sample records for testing
-- ===========================================

INSERT INTO user (firstName, lastName, email, birthDate, gender, heightCm, weightKg)
VALUES
('Alex', 'Miller', 'alex@example.com', '1998-07-15', 'Male', 178, 72),
('Sara', 'Khan', 'sara@example.com', '1994-03-22', 'Female', 165, 59);

INSERT INTO goal (userId, goalDescription, targetDate, isAchieved, goalType)
VALUES
(1, 'Gain 5 kg of muscle', '2025-06-01', FALSE, 'Strength'),
(2, 'Run a 10k in under 50 minutes', '2025-08-15', FALSE, 'Endurance');

INSERT INTO exercise (name, muscleGroup, difficultyLevel, isBodyweight)
VALUES
('Bench Press', 'Chest', 'Intermediate', FALSE),
('Squat', 'Legs', 'Intermediate', FALSE),
('Push-up', 'Chest', 'Beginner', TRUE);

INSERT INTO equipment (name, description, category)
VALUES
('Barbell', 'Standard Olympic barbell', 'Strength'),
('Dumbbell', 'Adjustable dumbbell set', 'Strength'),
('Yoga Mat', 'For floor exercises', 'Accessory');

INSERT INTO exerciseEquipment (exerciseId, equipmentId)
VALUES
(1, 1), (2, 1), (3, 3);

INSERT INTO workout (userId, workoutDate, durationMinutes, workoutType, notes)
VALUES
(1, '2025-12-15', 60, 'Strength', 'Chest and legs focus'),
(2, '2025-12-16', 45, 'Cardio', 'Outdoor running');

INSERT INTO workoutExercise (workoutId, sequenceOrder)
VALUES
(1, 1),
(1, 2);

INSERT INTO workoutExerciseDetail (workoutExerciseId, exerciseId, sets, reps, weightUsed, restSeconds)
VALUES
(1, 1, 4, 8, 60, 90),
(2, 2, 4, 10, 80, 120);

INSERT INTO progressEntry (userId, workoutExerciseDetailId, weightLifted, repsCompleted, caloriesBurned, moodRating, perceivedExertion, notes)
VALUES
(1, 1, 60, 8, 200, 8, 7, 'Felt strong today'),
(1, 2, 80, 10, 250, 7, 8, 'Good leg session');