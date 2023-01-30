SELECT AVG(Salary)
FROM EmployeeDemographics
Inner Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


