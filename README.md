# Student Depression Analysis

An exploratory data analysis project built with **Microsoft SQL Server** and
**Tableau**. The project prepares a student mental-health dataset in SSMS and
uses an interactive Tableau dashboard to explore the distribution of academic,
financial, sleep, and study-related factors across age groups.

> This is a descriptive portfolio project. The dataset labels are not clinical
> diagnoses, and the results should not be interpreted as medical or causal
> conclusions.

## Project Objectives

- Clean and standardize the imported data using SQL Server.
- Validate categorical fields and check for missing values.
- Create age groups for demographic filtering.
- Explore student counts across academic pressure, financial stress, sleep
  duration, study hours, and study satisfaction.
- Identify associations between selected factors and the recorded depression
  outcome.
- Present the results through an interactive Tableau dashboard.

## Tools Used

- **SQL Server and SSMS** — data inspection, cleaning, transformation, and
  aggregation
- **Tableau** — dashboard creation, filters, and interactive visual analysis
- **CSV** — source data

## Dataset Overview

The dataset contains **502 student records** and **11 original fields**. The
records cover students aged **18–34** and contain:

- Demographics: gender and age
- Academic factors: academic pressure, study satisfaction, and study hours
- Lifestyle factors: sleep duration and dietary habits
- Financial stress
- Family history of mental illness
- Self-reported suicidal thoughts
- Recorded depression outcome

The supplied CSV contains no missing values or exact duplicate rows.

### Age-Group Definition

| Code | Age range | Students | Share |
|---|---:|---:|---:|
| A1 | 18–24 | 200 | 39.8% |
| A2 | 25–30 | 180 | 35.9% |
| A3 | 31–34 | 122 | 24.3% |

## Data Preparation

The SQL workflow:

1. Selects the project database and previews the imported table.
2. Standardizes gender values from `Female` and `Male` to `F` and `M`.
3. Adds an identity column for counting records in Tableau.
4. Converts binary depression values from `0` and `1` to `No` and `Yes` when
   required by the imported table.
5. Creates the `Age Groups` field.
6. Profiles categorical columns and checks their value distributions.
7. Runs aggregate queries used to reproduce the reported findings.

The SQL scripts are numbered in their recommended execution order.

## Dashboard

The Tableau dashboard contains:

- **Study Hours and Student Count** — area chart
- **Sleep Duration and Student Count** — pie chart
- **Study Satisfaction and Student Count** — column chart
- **Academic Pressure and Student Count** — square-mark chart
- **Financial Stress and Student Count** — circle-mark chart
- **Age Groups** — shared dashboard filter
- Cross-filter actions between the dashboard views

The current views display respondent counts. They do not directly split the
marks by the `Depression` outcome, so the observations in the next section are
presented separately as dashboard observations and outcome-focused findings.

## Key Insights

### Observations from the Current Dashboard

- **Academic pressure level 3 is the most common**, representing 125 students
  (24.9%). Level 2 is the least common with 88 students (17.5%).
- **Study satisfaction level 4 has the largest count** at 116 students (23.1%),
  while level 1 has the smallest count at 86 students (17.1%).
- **Sleep duration is almost evenly distributed.** Each category contains
  between 123 and 128 students, or approximately 24.5%–25.5% of the dataset.
  No single sleep-duration category dominates the sample.
- **Ten study hours is the most frequent value**, recorded for 53 students
  (10.6%). One study hour is the least frequent value, recorded for 29 students
  (5.8%).
- **Financial-stress levels are relatively balanced.** Level 1 has the largest
  count at 110 students (21.9%), while level 4 has the smallest count at 94
  students (18.7%).
- The **18–24 age group is the largest segment** with 200 students (39.8%),
  followed by ages 25–30 with 180 students (35.9%).

### Outcome-Focused SQL Findings

- The recorded depression outcome is almost evenly divided: **252 students
  (50.2%) are labelled `Yes`** and 250 (49.8%) are labelled `No`.
- The share labelled `Yes` rises from **17.2% at academic-pressure level 1** to
  **84.7% at level 5**.
- The share labelled `Yes` falls from **73.3% at study-satisfaction level 1** to
  **30.9% at level 5**.
- The share labelled `Yes` rises from **30.9% at financial-stress level 1** to
  **70.8% at level 5**.
- By the project age bands, the recorded `Yes` share is **61.5% for A1**,
  **47.2% for A2**, and **36.1% for A3**.

These comparisons show associations within this dataset only. They do not
establish that any factor causes depression.

## Repository Structure

```text
student-depression-analysis/
├── README.md
├── data/
│   └── student_depression_dataset.csv
├── sql/
│   ├── 01_preview_imported_data.sql
│   ├── 02_standardize_gender_values.sql
│   ├── 03_prepare_analysis_columns.sql
│   ├── 04_create_age_groups.sql
│   ├── 05_validate_column_values.sql
│   └── 06_analysis_queries.sql
└── tableau/
    └── student_depression_dashboard.twb
```

## How to Reproduce the Project

### 1. Import the Dataset into SQL Server

1. Create a database named `student_depression_analysis`.
2. Import `data/student_depression_dataset.csv` using the SSMS Import Flat File
   wizard.
3. Name the table `Student Depression Dataset` in the `dbo` schema.
4. Ensure the imported SQL column names match those referenced in the scripts,
   including `Academic_Pressure`, `Study_Satisfaction`, `Sleep_Duration`,
   `Study_Hours`, and `Financial_Stress`.

### 2. Execute the SQL Scripts

Open the scripts from the `sql` directory in SSMS and execute them in numerical
order. Scripts that add columns are intended for a newly imported table and may
fail if rerun after those columns already exist.

### 3. Open the Tableau Workbook

Open `tableau/student_depression_dashboard.twb` in Tableau Desktop or Tableau
Public. The public repository copy points to `localhost` and the
`student_depression_analysis` database. Update the SQL Server connection if
your instance uses a different server name.

## Limitations

- The original source URL, sampling method, and data-collection context were
  not supplied with the project files. Add the original dataset URL and licence
  before publishing or redistributing the CSV.
- The sample may not represent a wider student population.
- The current dashboard focuses on record counts and does not directly encode
  the depression outcome in its marks.
- The analysis is descriptive and does not control for confounding variables.
- Document the dataset source and licence.

## Author

**Soumya Luhach**

