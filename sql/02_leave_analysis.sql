-- Leave analysis

-- Approved leave days by department
SELECT e.department,
       SUM(l.leave_days) AS approved_leave_days
FROM leave_records l
JOIN employees e ON l.employee_id = e.employee_id
WHERE l.status = 'Approved'
GROUP BY e.department
ORDER BY approved_leave_days DESC;

-- Leave usage by type
SELECT leave_type,
       COUNT(*) AS leave_requests,
       SUM(leave_days) AS leave_days
FROM leave_records
WHERE status = 'Approved'
GROUP BY leave_type
ORDER BY leave_days DESC;

-- Monthly leave trend
SELECT DATE_TRUNC('month', start_date) AS month,
       SUM(leave_days) AS approved_leave_days
FROM leave_records
WHERE status = 'Approved'
GROUP BY DATE_TRUNC('month', start_date)
ORDER BY month;

-- Average approved leave per employee
SELECT e.employee_id,
       e.name,
       e.department,
       COALESCE(SUM(CASE WHEN l.status = 'Approved' THEN l.leave_days ELSE 0 END), 0) AS approved_leave_days
FROM employees e
LEFT JOIN leave_records l ON e.employee_id = l.employee_id
GROUP BY e.employee_id, e.name, e.department
ORDER BY approved_leave_days DESC;