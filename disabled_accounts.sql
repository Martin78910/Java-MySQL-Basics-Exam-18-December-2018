SELECT DISTINCT ba.account_number, ba.balance, cl.full_name,c.card_status
FROM bank_accounts ba
JOIN clients cl
ON ba.client_id = cl.id
JOIN cards c
ON c.bank_account_id = ba.id
WHERE c.card_status NOT LIKE 'Active'
#WHERE c.card_status ='Frozen' OR c.card_status ='Deleted'
ORDER BY ba.id DESC;

