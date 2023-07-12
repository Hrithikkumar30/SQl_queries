/*
CTE is common Table Expression,when we create any result writing a sql and query
and want to store as a table then we use cte, we store the result as a temporary 
table untill query is running it does not require any space.


it starts as

WITH cte_name(

    select abc
    from table1
)
select abc from cte_name
*/

/* 
Find the emp_name and manager assosiate with the employee 
and the info about both given in same table as emp_is and manager_id
*/


Select A.emp_name , B.emp_name AS Manager_Name
from emp AS A 
JOIN emp AS B 
on A.emp_is=B.manager_id