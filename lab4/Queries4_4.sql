USE bsuir_dbms

SELECT * 
FROM Wallets
WHERE EXISTS (SELECT * FROM Wallets WHERE Balance > 10000)

INSERT INTO Withdrawals (SenderId, ReceiverId, Amount, DepositDate)
SELECT RecieverId, SenderId, Amount, TransferDate FROM Transfers

SELECT Amount, TransferDate,
	CASE RecieverId
		WHEN 1 THEN 'Transfer to first'
		WHEN 2 THEN 'Transfer to second'
		WHEN 3 THEN 'Transfer to third'
		ELSE 'Another transfer'
	END AS TransferCategory
FROM Transfers

