/*Raising salaries using Case Statement*/



SELECT FirstName, LastName, POSITION, Salary,
CASE
  WHEN POSITION = 'CEO' THEN Salary + (Salary * 10.0)
  WHEN POSITION = 'Securities Officer' THEN Salary + (Salary * .56)
  WHEN POSITION = 'Customer Care' THEN Salary + (Salary * .40)
  ELSE Saary + (Salary * .25)
END  
FROM EmployeeDemographics
JOIN EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID