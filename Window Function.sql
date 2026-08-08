--Window Function--
SELECT
    c."CustomerId",
    c."FirstName",
    c."LastName",
    SUM(i."Total") AS revenue,
    RANK() OVER (ORDER BY SUM(i."Total") DESC) AS customer_rank
FROM "Customer" c
JOIN "Invoice" i
ON c."CustomerId" = i."CustomerId"
GROUP BY
    c."CustomerId",
    c."FirstName",
    c."LastName";