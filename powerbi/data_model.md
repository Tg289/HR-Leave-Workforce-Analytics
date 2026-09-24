# Power BI Data Model

## Tables

### Employees
Dimension table containing employee master data.

Key: `employee_id`

Columns:
- employee_id
- employee_name
- department
- designation
- joining_date
- status

### Leave Records
Fact table containing leave transactions.

Key: `leave_id`

Foreign key:
- employee_id

Important fields:
- leave_type
- start_date
- end_date
- leave_days
- status
- approval_date

### Attendance Summary
Monthly employee attendance fact table.

Foreign key:
- employee_id

Important fields:
- month
- working_days
- present_days
- wfh_days
- leave_days
- attendance_rate

Add a `month_date` column in Power Query from the first day of the `month` field.

## Star-schema principle

Treat Employees and DateTable as dimensions. Treat Leave Records and Attendance Summary as facts.

Avoid many-to-many relationships and avoid bi-directional filtering unless there is a demonstrated requirement.

## Power Query steps

1. Import all three CSV files.
2. Set data types correctly.
3. Convert `joining_date`, `start_date`, `end_date`, and `approval_date` to Date.
4. Convert numeric day counts to Whole Number.
5. Convert `attendance_rate` to Decimal Number.
6. Trim text fields.
7. Standardize status values to Approved/Pending/Rejected.
8. Add `month_date` to Attendance Summary.
9. Create DateTable using the DAX supplied in `dax_measures.dax`.
10. Mark DateTable as the model's date table.

## Quality checks

- No duplicate employee IDs.
- No blank employee IDs in fact tables.
- Leave days are positive.
- Approved leave has an approval date.
- Pending leave may have a blank approval date.
- Attendance rates remain within 0-100 in source data.
- Relationships return matching employee records.
