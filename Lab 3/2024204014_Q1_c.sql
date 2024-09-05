SHOW DATABASES;
USE classicmodels;
SELECT  DISTINCT count(*) FROM CUSTOMERS C
WHERE C.customerNumber IN (SELECT DISTINCT customerNumber from orders)
OR C.customerNumber IN (SELECT DISTINCT customerNumber from payments);

