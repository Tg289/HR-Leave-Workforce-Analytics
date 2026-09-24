# Requirements

## Functional Requirements

### FR-01 Employee Overview
The solution shall display active employee headcount and department distribution.

### FR-02 Leave KPIs
The solution shall calculate leave requests, approved leave days, pending requests, and approval rate.

### FR-03 Leave Analysis
Users shall be able to analyze leave by department, leave type, employee, and month.

### FR-04 Attendance Analysis
Users shall be able to compare average attendance rates across departments.

### FR-05 Workforce Availability
The solution shall provide indicators that help HR understand employee availability patterns.

### FR-06 Data Quality
The SQL layer shall include checks for duplicate IDs, invalid durations, unknown employees, and invalid attendance rates.

### FR-07 Recommendations
The final analysis shall translate observed patterns into actionable HR recommendations.

## Non-Functional Requirements

- Reports should be easy to understand.
- KPI definitions should be consistent.
- Synthetic data should not contain real employee information.
- SQL queries should be reusable and readable.