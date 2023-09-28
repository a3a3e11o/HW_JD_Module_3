SELECT
    p.ID AS PROJECT_ID,
    SUM(w.SALARY) * EXTRACT(MONTH FROM AGE(p.FINISH_DATE, p.START_DATE)) AS PRICE
FROM
    project p
JOIN
    project_worker pw ON p.ID = pw.PROJECT_ID
JOIN
    worker w ON pw.WORKER_ID = w.ID
GROUP BY
    p.ID
ORDER BY
    PRICE DESC;