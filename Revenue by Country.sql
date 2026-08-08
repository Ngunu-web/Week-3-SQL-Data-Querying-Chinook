--Revenue By Country--
SELECT
    "BillingCountry",
    SUM("Total") AS revenue
FROM public."Invoice"
GROUP BY "BillingCountry"
ORDER BY revenue DESC;