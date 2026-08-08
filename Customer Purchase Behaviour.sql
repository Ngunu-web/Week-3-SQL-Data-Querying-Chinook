--Customer Purchase Behaviour--
SELECT
    c."CustomerId",
    c."FirstName",
    c."LastName",
    COUNT(i."InvoiceId") AS purchases
FROM "Customer" c
JOIN "Invoice" i
ON c."CustomerId" = i."CustomerId"
GROUP BY
    c."CustomerId",
    c."FirstName",
    c."LastName"
ORDER BY purchases DESC;