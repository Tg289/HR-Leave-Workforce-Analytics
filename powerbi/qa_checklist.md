# Power BI QA Checklist

## Data
- [ ] All three CSV files load without errors.
- [ ] Employee IDs are unique.
- [ ] Fact-table employee IDs all match Employees.
- [ ] Date columns have Date data type.
- [ ] Numeric day fields are Whole Number.
- [ ] Attendance rate is numeric.

## Relationships
- [ ] Employees → Leave Records is 1:*.
- [ ] Employees → Attendance Summary is 1:*.
- [ ] DateTable → Leave Records is 1:*.
- [ ] DateTable → Attendance Summary is 1:*.
- [ ] Cross-filter direction is single.

## Measures
- [ ] Leave Approval Rate is formatted as percentage.
- [ ] Average Attendance Rate is formatted as percentage.
- [ ] WFH Utilization Rate is formatted as percentage.
- [ ] Day counts use whole numbers.
- [ ] KPI cards respond to slicers.

## Visuals
- [ ] All visual titles are business-readable.
- [ ] Month ordering is chronological.
- [ ] No unnecessary pie/donut charts beyond the single leave-mix visual.
- [ ] Department labels are fully visible.
- [ ] Tables have sensible column widths.
- [ ] Slicers work across the intended page.

## Business integrity
- [ ] Attendance is not presented as a full-year metric while the sample covers only Jan-Feb 2025.
- [ ] Synthetic data is clearly identified.
- [ ] No unsupported conclusions are written in the dashboard.
- [ ] Recommendations are traceable to observed metrics.

## Portfolio quality
- [ ] README explains the business problem.
- [ ] BRD and requirements are included.
- [ ] SQL scripts are included.
- [ ] DAX measures are documented.
- [ ] Dashboard screenshots are added after the report is built.
- [ ] GitHub repository contains a clean folder structure.
