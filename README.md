# HR Leave & Workforce Analytics

A portfolio-ready Data Analyst / Business Analyst project that converts synthetic HR leave and attendance data into SQL analysis, Power BI KPIs, and business recommendations.

## Business Problem

HR teams often track employee, leave, and attendance information across disconnected spreadsheets. This makes it difficult to monitor workforce availability, compare departments, identify leave patterns, and produce consistent management reporting.

## Project Objective

Build a repeatable HR analytics workflow:

**Business Problem → Requirements → Data → SQL → Power BI/DAX → Insights → Recommendations**

## Deliverables

- Synthetic HR employee dataset
- Synthetic leave transaction dataset
- Monthly attendance sample
- SQL data-quality checks
- SQL leave analysis
- SQL KPI queries
- BRD
- Functional requirements
- User stories + acceptance criteria
- As-Is / To-Be process
- DAX KPI measures
- Power BI data model
- 3-page dashboard specification
- Power BI theme
- Dashboard wireframe
- QA checklist
- Expected KPI snapshot
- Business recommendations
- Portfolio case study
- Attribution/license note

## Power BI Dashboard

The report is designed as three pages:

1. **HR Overview**
   - Active Headcount
   - Leave Requests
   - Approved Leave Days
   - Leave Approval Rate
   - Average Attendance Rate
   - Monthly leave trend
   - Leave mix
   - Department comparison

2. **Leave Analysis**
   - Leave request trend
   - Leave type analysis
   - Department analysis
   - Employee leave utilization
   - Pending requests

3. **Workforce & Attendance**
   - Attendance rate
   - Present days
   - WFH days
   - WFH utilization
   - Department and employee attendance analysis

See the powerbi folder for the exact model, DAX, visual configuration, theme, and QA checklist.

## Current KPI Snapshot

From the current synthetic data:

- Active Headcount: **20**
- Total Leave Requests: **35**
- Approved Leave Requests: **34**
- Pending Leave Requests: **1**
- Approved Leave Days: **77**
- Leave Approval Rate: **97.1%**
- Average Leave Days per Approved Request: **2.26**

Attendance metrics are based only on the January-February 2025 sample:

- Average Attendance Rate: **91.48%**
- Total Working Days: **420**
- Total Present Days: **384**
- Total WFH Days: **9**
- WFH Utilization: **2.14%**

## Repository Structure

HR-Leave-Workforce-Analytics/
├── data/
│   ├── employees.csv
│   ├── leave_records.csv
│   └── attendance_summary.csv
├── sql/
│   ├── 01_data_quality.sql
│   ├── 02_leave_analysis.sql
│   └── 03_hr_kpis.sql
├── powerbi/
│   ├── README.md
│   ├── dax_measures.dax
│   ├── data_model.md
│   ├── page_build_spec.md
│   ├── theme.json
│   ├── expected_kpi_snapshot.md
│   └── qa_checklist.md
├── dashboard/
│   ├── README.md
│   └── hr_overview_wireframe.svg
├── documentation/
│   ├── BRD.md
│   ├── requirements.md
│   ├── user_stories.md
│   ├── as-is-to-be-process.md
│   └── portfolio_case_study.md
├── insights/
│   └── business_recommendations.md
└── LICENSES_AND_ATTRIBUTION.md

## Dataset

All included data is synthetic and created for portfolio/learning purposes. It does not contain real employee information.

## Important Limitation

The attendance sample currently covers **January and February 2025 only**. Therefore, attendance KPIs must be presented as sample-period metrics, not full-year 2025 results.

## Portfolio Positioning

This project demonstrates:

- SQL analytics
- Power BI dashboard design
- DAX KPI development
- Data modeling
- Requirements gathering
- User stories and acceptance criteria
- Process analysis
- Business interpretation
- Recommendation writing

The implementation is an original portfolio project. Public HR analytics repositories were used only as references for analytical direction; their code, dashboards, documentation, and branding are not reproduced.
