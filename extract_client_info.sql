SELECT cl.full_name, cl.age, ba.account_number, CONCAT('$',ba.balance) AS balance
FROM clients cl
JOIN bank_accounts ba
ON  ba.client_id = cl.id;