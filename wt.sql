drop view if exists export;
drop table if exists facts;

CREATE TABLE facts (
       user VARCHAR(20),
       t DATETIME DEFAULT CURRENT_TIMESTAMP,
       weight INTEGER,
       unit   VARCHAR(20),
       narrative VARCHAR(100));
CREATE VIEW export AS 
   SELECT
       DATETIME(t, 'localtime') AS time, 
       weight,
       unit,
       narrative
   FROM facts ORDER BY time
/* export(time,weight,unit,narrative) */;
