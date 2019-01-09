SELECT c.id, CONCAT(c.card_number,' : ', cl.full_name) card_token
FROM cards c
JOIN bank_accounts ba
ON c.bank_account_id = ba.id
JOIN clients cl
ON ba.client_id = cl.id
ORDER BY c.id DESC;