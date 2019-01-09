SELECT employee_id, client_id
FROM employees_clients
WHERE employee_id = client_id
ORDER BY client_id ASC;