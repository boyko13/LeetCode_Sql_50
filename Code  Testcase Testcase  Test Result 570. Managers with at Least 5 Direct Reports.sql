Select e.name from employee e 
Join employee em ON e.id = em.managerId
group by name, e.id 
having (count(e.id) >= 5)
