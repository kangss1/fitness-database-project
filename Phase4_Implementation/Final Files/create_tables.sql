-- ===========================================
-- File: create_tables.sql
-- Description: Creates all tables for the fitness database
-- ===========================================

CREATE TABLE user (
    userId INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100),
    birthDate DATE,
    gender VARCHAR(10),
    heightCm INT,
    weightKg INT
);

CREATE TABLE goal (
    goalId INT PRIMARY KEY AUTO_INCREMENT,
    userId INT,
    goalDescription VARCHAR(255),
    targetDate DATE,
    isAchieved BOOLEAN DEFAULT FALSE,
    goalType VARCHAR(50),
    FOREIGN KEY (userId) REFERENCES user(userId)
);

CREATE TABLE workout (
    workoutId INT PRIMARY KEY AUTO_INCREMENT,
    userId INT,
    workoutDate DATE,
    durationMinutes INT,
    workoutType VARCHAR(50),
    notes TEXT,
    FOREIGN KEY (userId) REFERENCES user(userId)
);

CREATE TABLE exercise (
    exerciseId INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    muscleGroup VARCHAR(50),
    difficultyLevel VARCHAR(20),
    isBodyweight BOOLEAN
);

CREATE TABLE equipment (
    equipmentId INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description VARCHAR(255),
    category VARCHAR(50)
);

CREATE TABLE exerciseEquipment (
    exerciseEquipmentId INT PRIMARY KEY AUTO_INCREMENT,
    exerciseId INT,
    equipmentId INT,
    FOREIGN KEY (exerciseId) REFERENCES exercise(exerciseId),
    FOREIGN KEY (equipmentId) REFERENCES equipment(equipmentId)
);

CREATE TABLE workoutExercise (
    workoutExerciseId INT PRIMARY KEY AUTO_INCREMENT,
    workoutId INT,
    sequenceOrder INT,
    FOREIGN KEY (workoutId) REFERENCES workout(workoutId)
);

CREATE TABLE workoutExerciseDetail (
    workoutExerciseDetailId INT PRIMARY KEY AUTO_INCREMENT,
    workoutExerciseId INT,
    exerciseId INT,
    sets INT,
    reps INT,
    weightUsed DECIMAL(5,2),
    restSeconds INT,
    FOREIGN KEY (workoutExerciseId) REFERENCES workoutExercise(workoutExerciseId),
    FOREIGN KEY (exerciseId) REFERENCES exercise(exerciseId)
);

CREATE TABLE progressEntry (
    progressId INT PRIMARY KEY AUTO_INCREMENT,
    userId INT,
    workoutExerciseDetailId INT,
    weightLifted DECIMAL(5,2),
    repsCompleted INT,
    caloriesBurned DECIMAL(6,2),
    moodRating INT,
    perceivedExertion INT,
    notes TEXT,
    FOREIGN KEY (userId) REFERENCES user(userId),
    FOREIGN KEY (workoutExerciseDetailId) REFERENCES workoutExerciseDetail(workoutExerciseDetailId)
);