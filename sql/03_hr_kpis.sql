-- Core HR KPIs

-- Active headcount
SELECT COUNT(*) AS active_headcount
FROM employees
WHERE status = 'Active';

-- Leave approval rate
SELECT ROUND(
  100.0 * SUM(CASE WHEN status = 'Approved' THEN 1 ELSE 0 END) / COUNT(*), 2
) AS leave_approval_rate
FROM leave_records;

-- Average attendance by department
SELECT e.department,
       ROUND(AVG(a.attendance_rate), 2) AS avg_attendance_rate
FROM attendance_summary a
JOIN employees e ON a.employee_id = e.employee_id
GROUP BY e.department
ORDER BY avg_attendance_rate DESC;

-- WFH utilization
SELECT ROUND(
  100.0 * SUM(wfh_days) / SUM(working_days), 2
) AS wfh_utilization_rate
FROM attendance_summary;