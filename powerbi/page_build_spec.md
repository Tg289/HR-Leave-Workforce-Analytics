# Exact Page Build Specification

## PAGE 1 — HR Overview

Canvas: 16:9

### Top row
Five cards from left to right:
1. Active Headcount
2. Total Leave Requests
3. Approved Leave Days
4. Leave Approval Rate
5. Average Attendance Rate

### Middle row
**Left 60%:** Line chart
- X-axis: DateTable[Month Year]
- Y-axis: [Approved Leave Days]
- Title: Monthly Approved Leave Days

**Right 40%:** Donut chart
- Legend: Leave Records[leave_type]
- Values: [Approved Leave Days]
- Title: Approved Leave Mix

### Bottom row
**Left 50%:** Clustered bar chart
- Y-axis: Employees[department]
- X-axis: [Approved Leave Days]
- Title: Approved Leave Days by Department

**Right 50%:** Matrix
Rows: department
Values:
- Active Headcount
- Total Leave Requests
- Approved Leave Days
- Leave Approval Rate
- Average Attendance Rate

### Slicers
Place at the top/right:
- Department
- Leave Type
- Month Year

---

## PAGE 2 — Leave Analysis

### KPI row
- Total Leave Requests
- Approved Leave Days
- Pending Leave Requests
- Avg Leave Days per Request

### Main visuals
1. Line chart: Month Year vs Total Leave Requests
2. Bar chart: Leave Type vs Approved Leave Days
3. Bar chart: Department vs Approved Leave Days
4. Table: Employee Name, Department, Approved Leave Days, Leave Requests
5. Table: Pending Leave ID, Employee Name, Leave Type, Start Date, Leave Days, Status

### Conditional formatting
- Pending status: amber background
- High leave utilization: use data bars
- Approval rate: percentage format

---

## PAGE 3 — Workforce & Attendance

### KPI row
- Average Attendance Rate
- Total Present Days
- Total WFH Days
- WFH Utilization Rate

### Main visuals
1. Bar chart: Department vs Average Attendance Rate
2. Stacked column: Department vs Present Days + Attendance Leave Days
3. Bar chart: Department vs Total WFH Days
4. Employee attendance table
5. Workforce availability matrix

### Insight box
Add a text box titled **Business Interpretation** with:
- departments with relatively high leave volume
- attendance patterns visible in the sample
- WFH usage pattern
- recommended HR action

Do not hard-code claims that are not supported by the filtered data.

## Navigation

Add three page-navigation buttons:
- Overview
- Leave Analysis
- Workforce & Attendance

Use consistent titles, spacing, and number formatting across all pages.