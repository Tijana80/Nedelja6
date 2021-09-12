
SELECT employees.email,employees.phone_number FROM employees 
INNER JOIN departments ON employees.department_id=departments.department_id
INNER JOIN locations ON departments.location_id=locations.location_id
INNER JOIN countries ON locations.country_id=countries.country_id
WHERE region_id=1 AND phone_number IS NOT NULL;



  SELECT dependents.first_name,MAX(employees.salary) AS MaxSalary FROM dependents
  INNER JOIN employees ON dependents.employee_id=employees.employee_id
  GROUP BY dependents.first_name,employees.salary ORDER BY employees.salary DESC LIMIT 1;
