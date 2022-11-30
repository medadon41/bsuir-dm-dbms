USE bsuir_dbms

SELECT Transfers.Amount, Transfers.TransferDate
FROM Transfers
INNER JOIN Wallets ON Wallets.Id = Transfers.RecieverId
WHERE Wallets.Balance < 1000

SELECT *
FROM Transfers
RIGHT JOIN Wallets ON Wallets.Id = Transfers.RecieverId

SELECT *
FROM Transfers
LEFT JOIN Wallets ON Wallets.Id = Transfers.RecieverId

SELECT *
FROM Transfers
FULL JOIN Wallets ON Wallets.Id = Transfers.RecieverId

SELECT *
FROM Transfers
CROSS JOIN Wallets

SELECT Transfers.Amount, Transfers.TransferDate
FROM Transfers
JOIN Wallets ON Wallets.Id = Transfers.Id
JOIN Users ON Users.Id = Wallets.OwnerId
WHERE UserName = 'testuser1'
