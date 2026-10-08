# Student Performance Analysis using SQL

A SQL data analysis project in MySQL that analyzes student performance using student details, subject-wise marks and attendance data.

## Project Objective

Answer practical questions such as:
- Which students and cities perform best?
- Which subjects have the highest and lowest average marks?
- Which students need improvement?
- How can students be ranked and grouped by performance level?

## Tools Used

- MySQL
- Microsoft PowerPoint (project presentation)

## Dataset

The database `student_performance` has 3 tables (sample data):

| Table | Description | Rows |
|-------|-------------|------|
| `students` | student_id, name, city, gender | 20 |
| `subjects` | subject_id, subject_name (SQL, Python, Excel, Power BI, Statistics) | 5 |
| `marks` | mark_id, student_id, subject_id, marks, attendance | 100 |

Cities: Delhi, Mumbai, Noida, Lucknow

## SQL Concepts Used

- `SELECT`, `WHERE`, `ORDER BY`
- Aggregate functions: `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`
- `GROUP BY` and `HAVING`
- `INNER JOIN`
- `CASE WHEN`
- Subqueries
- CTEs (`WITH`)
- `EXISTS`
- `UNION`
- Window functions: `RANK()`, `LAG()`

## Analysis Covered (30 queries)

| Level | Questions |
|-------|-----------|
| Basic (1-5) | Total students and subjects, record count per subject, average marks per subject |
| Filtering and Joins (6-11) | Students scoring above 80 and above 90, students per city, average marks per city, highest mark per subject |
| Aggregation (12-20) | Total, average, highest and lowest marks per student, `HAVING` filters, students scoring below 70 |
| Advanced (21-30) | Performance levels with `CASE`, CTEs, subqueries, `EXISTS`, `UNION`, ranking with `RANK()`, previous-record comparison with `LAG()`, and a final complete performance report |

The final query (Analysis 30) combines everything into one report: total, average, highest and lowest marks, performance level, overall rank and previous student's total.

### Performance Levels

| Average Marks | Level |
|---------------|-------|
| 85 and above | Excellent |
| 70 to 84 | Good |
| Below 70 | Needs Improvement |

## Key Insights

- The overall average across all 100 records is **83.3**.
- **Excel** has the highest average (84.45) and **Python** the lowest (82.55).
- **Mumbai** has the best city average (85.08) and **Noida** the lowest (82.24).
- Top performers by total marks: **Pooja (468)**, **Priya (466)** and **Arjun (458)**.
- 8 students are rated Excellent, 11 Good and 1 (Rahul) Needs Improvement.
- 14 of 20 students have an average above 80.
- Only 3 students (Priya, Arjun, Pooja) scored 95 or above in at least one subject.
- 5 marks records are below 70, belonging to Rohit, Rahul and Vikas.

## Project Structure

```
student-performance-sql-project/
├── student_performance_analysis.sql
├── Student_Performance_SQL_Project_Presentation.pptx
└── README.md
```

## How to Run

1. Install MySQL and open MySQL Workbench or the MySQL command line.
2. Open `student_performance_analysis.sql`.
3. Run the first section to create the database, tables and insert data.
4. Run the analysis queries one by one and check the output.

## Author

**Prashant Pandey**
Aspiring Data Analyst | MySQL | Excel | Power BI

- GitHub: [prashantpandey-data](https://github.com/prashantpandey-data)
- LinkedIn: [prashant-pandey](https://www.linkedin.com/in/prashant-pandey-39694b3b0)
- LeetCode: [prashantpandey-data](https://leetcode.com/u/prashantpandey-data/)
- 
