SELECT cl.id, cl.full_name,COUNT(c.id) AS cards
FROM clients cl
JOIN bank_accounts ba
ON  ba.client_id = cl.id
JOIN cards c
ON c.bank_account_id = ba.id
GROUP BY cl.id
ORDER BY cards DESC, cl.id ASC
LIMIT 1;