SELECT
    product_name
    , [year]
    , price
FROM Sales s
LEFT OUTER JOIN Product p ON p.product_id = s.product_id