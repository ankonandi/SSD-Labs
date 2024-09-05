SELECT P.productCode, P.productName, O.officeCode, O.city
FROM products P
CROSS JOIN offices O;