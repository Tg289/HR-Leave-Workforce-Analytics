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
- Full-year 2025 monthly attendance dataset
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
- 3 dashboard wireframes
- QA checklist
- Expected KPI snapshot
- Business recommendations
- Portfolio case study
- Power BI Desktop build instructions
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

See `powerbi/` for the model, DAX, visual configuration, theme, QA checklist, and exact build steps.

## Current KPI Snapshot

From the current synthetic data:

- Active Headcount: **20**
- Total Leave Requests: **35**
- Approved Leave Requests: **34**
- Pending Leave Requests: **1**
- Approved Leave Days: **77**
- Leave Approval Rate: **97.1%**
- Average Leave Days per Approved Request: **2.26**
- Average Attendance Rate (2025): **98.50%**
- Total Working Days (2025): **5,180**
- Total Present Days (2025): **5,103**
- Total WFH Days (2025): **196**
- WFH Utilization: **3.78%**

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
│   ├── build_instructions.md
│   ├── theme.json
│   ├── expected_kpi_snapshot.md
│   └── qa_checklist.md
├── dashboard/
│   ├── README.md
│   ├── hr_overview_wireframe.svg
│   ├── leave_analysis_wireframe.svg
│   └── workforce_attendance_wireframe.svg
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

## Final manual step
The only major artifact not generated here is the actual **.pbix** file. Build it in Power BI Desktop using `powerbi/build_instructions.md`, run the QA checklist, then export the three page screenshots into `dashboard/`.
