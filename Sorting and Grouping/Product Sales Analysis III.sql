WITH MinYearPerProduct AS (
    SELECT s.product_id, MIN(s.year) AS first_year
    FROM Sales s
    GROUP BY s.product_id
)
SELECT s.product_id, m.first_year, s.quantity, s.price
FROM Sales s
INNER JOIN MinYearPerProduct m ON s.product_id = m.product_id AND s.year = m.first_year;