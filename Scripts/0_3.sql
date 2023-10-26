SELECT firstName, lastName, title
FROM employee
LIMIT 5;

GO

SELECT model,EngineType
from model limit 5;

SELECT sql
from sqlite_schema
where name = 'employee'