-- ===========================================
-- File: sample_queries.sql
-- Description: Demonstrates common database queries
-- ===========================================

-- 1. Show all workouts with user names
SELECT u.firstName, u.lastName, w.workoutDate, w.workoutType
FROM user u
JOIN workout w ON u.userId = w.userId;

-- 2. Count total exercises per muscle group
SELECT muscleGroup, COUNT(*) AS total_exercises
FROM exercise
GROUP BY muscleGroup;

-- 3. View user goals that are not yet achieved
SELECT firstName, lastName, goalDescription, targetDate
FROM user
JOIN goal ON user.userId = goal.userId
WHERE goal.isAchieved = FALSE;

-- 4. Average calories burned per workout
SELECT u.firstName, AVG(p.caloriesBurned) AS avg_calories
FROM user u
JOIN progressEntry p ON u.userId = p.userId
GROUP BY u.userId;

-- 5. Show workout details including exercises and sets
SELECT w.workoutDate, e.name AS exercise, wed.sets, wed.reps, wed.weightUsed
FROM workout w
JOIN workoutExercise we ON w.workoutId = we.workoutId
JOIN workoutExerciseDetail wed ON we.workoutExerciseId = wed.workoutExerciseId
JOIN exercise e ON wed.exerciseId = e.exerciseId;