SELECT e.employeeNumber, e.firstName, e.lastName, e.jobTitle
FROM employees e
LEFT JOIN employees m ON e.employeeNumber = m.reportsTo
WHERE m.employeeNumber IS NULL;
