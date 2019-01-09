SELECT LEFT(cl.full_name, LOCATE(' ', cl.full_name)-1) AS client_name, e.first_name AS employee_name 
FROM clients cl
JOIN employees_clients ec
ON  ec.client_id = cl.id 
JOIN employees e
ON ec.employee_id = e.id
WHERE cl.full_name LIKE CONCAT('%',e.first_name,'%')
ORDER BY cl.id ASC;

