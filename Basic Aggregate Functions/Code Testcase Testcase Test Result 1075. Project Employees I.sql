Select p.project_id, Round(AVG(e.experience_years),2) as average_years from Project p 
JOIN employee e ON e.employee_id = p.employee_id
group by p.project_id
