Select e.employee_id, e.name, count(s.reports_to) as reports_count, ROUND(avg(s.age),0) as average_age from Employees e
JOIN Employees s on e.employee_id = s.reports_to  
group by e.employee_id, e.name
order by e.employee_id

