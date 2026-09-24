# Power BI Dashboard

This folder contains the complete Power BI build specification for the HR Leave & Workforce Analytics portfolio project.

## Build target

Create a 3-page Power BI report:

1. **HR Overview**
2. **Leave Analysis**
3. **Workforce & Attendance**

The report should use the CSV files in `data/` and the DAX measures in `powerbi/dax_measures.dax`.

> A native `.pbix` file cannot be generated reliably outside Power BI Desktop. Everything required to build the report is included here: model, measures, page layouts, theme, QA checklist, and a dashboard wireframe.

## Data model

```
Employees (1) ─────── (*) Leave Records
     │
     └─────────────── (*) Attendance Summary

DateTable (1) ─────── (*) Leave Records
DateTable (1) ─────── (*) Attendance Summary
```

### Relationships

- `Employees[employee_id]` → `Leave Records[employee_id]`, one-to-many
- `Employees[employee_id]` → `Attendance Summary[employee_id]`, one-to-many
- `DateTable[Date]` → `Leave Records[start_date]`, one-to-many
- `DateTable[Date]` → `Attendance Summary[month_date]`, one-to-many

Use single-direction filtering from dimensions to facts.

## Pages

### Page 1: HR Overview
KPI cards:
- Active Headcount
- Total Leave Requests
- Approved Leave Days
- Leave Approval Rate
- Average Attendance Rate

Visuals:
- Monthly Approved Leave Trend
- Approved Leave Days by Department
- Leave Mix by Type
- Department KPI table

Slicers:
- Department
- Leave Type
- Month Year

### Page 2: Leave Analysis
KPI cards:
- Total Leave Requests
- Approved Leave Days
- Pending Leave Requests
- Avg Leave Days per Request

Visuals:
- Monthly Leave Requests
- Leave Days by Type
- Leave Days by Department
- Employee Leave Utilization table
- Pending Requests table

### Page 3: Workforce & Attendance
KPI cards:
- Average Attendance Rate
- Total Present Days
- Total WFH Days
- WFH Utilization Rate

Visuals:
- Attendance Rate by Department
- Present vs Leave Days by Department
- WFH Days by Department
- Employee Attendance table
- Workforce Availability matrix

## Data limitation

The current attendance sample contains January and February 2025 only. Do not describe attendance KPIs as full-year 2025 results unless the attendance dataset is expanded. Leave records cover the full 2025 year.