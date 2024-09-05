SELECT 
    o.orderNumber,
    p.productName,
    od.quantityOrdered
FROM orders o
LEFT JOIN orderdetails od 
ON o.orderNumber = od.orderNumber
LEFT JOIN products p 
ON od.productCode = p.productCode;
