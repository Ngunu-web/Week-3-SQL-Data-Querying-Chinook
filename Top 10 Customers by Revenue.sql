--Top 10 Customers by Revenue--
SELECT
  c."FirstName",
  c."LastName",
SUM(i."Total") AS revenue
FROM "Customer" c
JOIN "Invoice" i
  ON c."CustomerId"=i."CustomerId"
GROUP BY
  c."CustomerId",
  c."FirstName",
  c."LastName"
ORDER BY revenue DESC
limit 10; 
