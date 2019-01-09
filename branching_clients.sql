SELECT br.name,COUNT(cl.id) AS count_of_clients
FROM branches br
JOIN employees e
ON  e.branch_id = br.id
JOIN employees_clients ec
ON  ec.employee_id = e.id
JOIN clients cl
ON ec.client_id = cl.id
GROUP BY br.id
ORDER BY count_of_clients DESC, br.id ASC;

