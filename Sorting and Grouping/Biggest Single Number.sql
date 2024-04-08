SELECT COALESCE((
    SELECT TOP(1) num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
    ORDER BY num DESC
), NULL) AS num;
