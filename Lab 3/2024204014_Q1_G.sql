SELECT C.customerName FROM CUSTOMERS C
LEFT JOIN ORDERS O
ON C.customerNumber = O.customerNumber
WHERE orderNumber IS NULL;
