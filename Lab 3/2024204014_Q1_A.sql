SELECT e.employeeNumber, e.firstName, e.lastName, 
SUM(od.priceEach * od.quantityOrdered) AS totalSales
FROM employees e
JOIN offices o ON e.officeCode = o.officeCode
JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN orders orr ON c.customerNumber = orr.customerNumber
JOIN orderdetails od ON orr.orderNumber = od.orderNumber
WHERE o.country = 'USA'
GROUP BY e.employeeNumber
ORDER BY totalSales DESC
LIMIT 5;
