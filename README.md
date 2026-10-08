 # Student Performance Analysis — SQL Project

## 📌 Project Overview

This project analyzes student academic performance using SQL.

The project contains student details, subjects, marks, and attendance data.
SQL queries are used to analyze student performance and generate meaningful insights.

---

## 🎯 Project Objectives

The main objectives of this project are:

- Analyze student performance
- Calculate total and average marks
- Identify high and low performing students
- Analyze subject-wise performance
- Analyze city-wise student performance
- Analyze attendance and marks
- Rank students based on their performance
- Generate a complete student performance report

---

## 🛠️ Tools & Technologies

- MySQL
- MySQL Workbench
- SQL

---

## 🗄️ Database Structure

**Database Name:** `student_performance`

The project contains 3 tables:

### 1. Students

Stores student information.

**Columns:**
- `student_id`
- `name`
- `city`
- `gender`

### 2. Subjects

Stores subject information.

**Columns:**
- `subject_id`
- `subject_name`

### 3. Marks

Stores student performance data.

**Columns:**
- `mark_id`
- `student_id`
- `subject_id`
- `marks`
- `attendance`

---

## 🔗 Table Relationships

The tables are connected using:

```text
students.student_id → marks.student_id
subjects.subject_id → marks.subject_id


📊 SQL Concepts Used

This project uses the following SQL concepts:

SELECT
WHERE
ORDER BY
GROUP BY
HAVING
Aggregate Functions
INNER JOIN
LEFT JOIN
Subqueries
CTE (Common Table Expressions)
Window Functions
ROW_NUMBER()
RANK()
DENSE_RANK()
LAG()
LEAD()
CASE
Filtering and Sorting
🔍 Analysis Performed

The project performs analysis related to:

Student-wise performance
Subject-wise performance
City-wise performance
Average marks
Total marks
Attendance analysis
Student rankings
High and low performers
Performance comparison between students and subjects
