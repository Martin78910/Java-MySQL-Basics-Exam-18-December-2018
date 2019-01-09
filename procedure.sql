
DROP PROCEDURE udp_clientinfo;
DELIMITER //

CREATE PROCEDURE udp_clientinfo (full_name VARCHAR(50))

BEGIN
SELECT cl.full_name, cl.age, ba.account_number, CONCAT('$',ba.balance) AS balance
FROM clients cl
JOIN bank_accounts ba
ON  ba.client_id = cl.id
WHERE cl.full_name = full_name;
END 
//
CALL udp_clientinfo('Hunter Wesgate');