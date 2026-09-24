-- HR Leave & Workforce Analytics: data quality checks

-- 1. Duplicate employee IDs
SELECT employee_id, COUNT(*) AS duplicate_count
FROM employees
GROUP BY employee_id
HAVING COUNT(*) > 1;

-- 2. Duplicate leave IDs
SELECT leave_id, COUNT(*) AS duplicate_count
FROM leave_records
GROUP BY leave_id
HAVING COUNT(*) > 1;

-- 3. Invalid leave duration
SELECT *
FROM leave_records
WHERE leave_days <= 0;

-- 4. Leave records referencing unknown employees
SELECT l.*
FROM leave_records l
LEFT JOIN employees e ON l.employee_id = e.employee_id
WHERE e.employee_id IS NULL;

-- 5. Invalid attendance rates
SELECT *
FROM attendance_summary
WHERE attendance_rate < 0 OR attendance_rate > 100;