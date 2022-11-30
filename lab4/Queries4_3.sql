USE bsuir_dbms

SELECT AVG(Amount) AS AverageTransfer FROM Transfers

SELECT MIN(Balance) AS MinimalBalance FROM Wallets

SELECT SUM(Balance) AS AllCap FROM Wallets

SELECT RecieverId, COUNT(*) AS TransfersCount
FROM Transfers
GROUP BY RecieverId
UNION
SELECT RecieverId, COUNT(*) AS TransfersCount
FROM Transfers
GROUP BY RecieverId
HAVING COUNT(*) > 2
ORDER BY TransfersCount DESC

