SELECT TABLE_NAME "Tables",
    ROUND((TABLE_ROWS / 1000), 3) "Rows (K)",
    AVG_ROW_LENGTH "Row Size (Byte)",
    ROUND((DATA_LENGTH / 1024 / 1024), 3) "Data Size (MB)",
    ROUND((INDEX_LENGTH / 1024 / 1024), 3) "Index Size (MB)",
    ROUND(((DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024), 3) "Total Size (MB)"
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = "lologme"              
ORDER BY (DATA_LENGTH + INDEX_LENGTH) DESC; 

SELECT *
FROM information_schema.TABLES
WHERE table_schema = "lologme";

SELECT SUM(DATA_FREE)
    FROM  INFORMATION_SCHEMA.PARTITIONS
    WHERE TABLE_SCHEMA = 'lologme'
    AND   TABLE_NAME   = 'games';
    
SELECT *
    FROM  INFORMATION_SCHEMA.PARTITIONS
    WHERE TABLE_SCHEMA = 'lologme'
    AND   TABLE_NAME   = 'games';
    