USE classicalmodels;
SELECT productCode, productName, MSRP 
FROM products
ORDER BY MSRP DESC
LIMIT 10 OFFSET 5;
