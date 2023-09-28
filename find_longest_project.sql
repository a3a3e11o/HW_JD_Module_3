WITH ProjectDurations AS (
    SELECT
        p.ID AS PROJECT_ID,
        DATE_PART('month', AGE(FINISH_DATE, START_DATE)) AS MONTH_COUNT
    FROM project p
)
SELECT PROJECT_ID, MONTH_COUNT
FROM ProjectDurations
WHERE MONTH_COUNT = (SELECT MAX(MONTH_COUNT) FROM ProjectDurations);