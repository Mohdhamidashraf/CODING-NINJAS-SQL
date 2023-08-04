Problem Statement:
Print out all the employees with their respective Departments if there is at least one employee whose salary is more than 4000.

Information about the table:
Table Employee:+---------+-------------------+-------------------+---------+------------+--------+----------+
| EmpCode | EmpName           | Job               | Manager | HireDate   | Salary | DeptCode |
+---------+-------------------+-------------------+---------+------------+--------+----------+
|    9369 | Ted Mosby         | SOFTWARE ENGINEER | 7902    | 1980-12-17 |   2800 |       20 |
|    9499 | Robin Scherbatsky | SALESMAN          | 7698    | 1981-02-20 |   1600 |       30 |
|    9566 | Lily Aldrin       | MANAGER           | 7839    | 1981-04-02 |   3570 |       20 |
|    9654 | Phoebe Buffay     | SALESMAN          | 7698    | 1981-09-28 |   1250 |       30 |
|    9782 | Monica Geller     | MANAGER           | 7839    | 1981-06-09 |   2940 |       10 |
|    9788 | Chandler Bing     | ANALYST           | 7566    | 1982-12-09 |   3000 |       20 |
|    9839 | Marshall Eriksen  | PRESIDENT         | 7566    | 1981-11-17 |   5000 |       10 |
+---------+-------------------+-------------------+---------+------------+--------+----------+

Solution:
select empname, deptcode from employee where EXISTS (select salary from employee where salary > 4000);

Output:
+-------------------+----------+
| empname           | deptcode |
+-------------------+----------+
| Ted Mosby         |       20 |
| Robin Scherbatsky |       30 |
| Lily Aldrin       |       20 |
| Phoebe Buffay     |       30 |
| Monica Geller     |       10 |
| Chandler Bing     |       20 |
| Marshall Eriksen  |       10 |
+-------------------+----------+