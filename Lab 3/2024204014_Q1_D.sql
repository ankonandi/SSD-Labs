USE classicmodels;
SELECT DISTINCT
    c.customerNumber,
    c.customerName,
    c.contactLastName,
    c.contactFirstName,
    c.phone,
    c.addressLine1,
    c.addressLine2,
    c.city,
    c.state,
    c.postalCode,
    c.country
    FROM CUSTOMERS C
INNER JOIN PAYMENTS P
ON C.customerNumber = P.customerNumber
INNER JOIN ORDERS O
ON P.customerNumber = O.customerNumber; 