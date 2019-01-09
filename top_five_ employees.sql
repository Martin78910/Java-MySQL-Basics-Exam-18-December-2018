SELECT CONCAT(e.first_name,' ', e.last_name) AS name, e.started_on,COUNT(cl.id) AS count_of_clients
FROM employees e
JOIN employees_clients ec
ON  ec.employee_id = e.id
JOIN clients cl
ON ec.client_id = cl.id
GROUP BY e.id
ORDER BY count_of_clients DESC, e.id ASC
LIMIT 5;