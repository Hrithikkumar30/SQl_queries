Select TOP 1 Salary from (Select Distinct TOP 5 Salary from Employees order by Salary Desc) Result order by Salary



WITH cte AS(
Select Salary , DENSE_RANK() over(order by Salary DESC) R_ank from Employees)

Select TOP 1 Salary from cte 
where R_ank.DENSE_RANK = 2