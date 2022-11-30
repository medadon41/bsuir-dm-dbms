USE bsuir_dbms;

GO
CREATE TRIGGER ApplyFee
ON Withdrawals
AFTER INSERT
AS
UPDATE Withdrawals
SET Amount = Amount + Amount * 0.05 + 50
WHERE Id = (SELECT Id FROM inserted)

GO
CREATE TRIGGER PerfromP2pTransfer
ON Transfers
AFTER INSERT
AS
UPDATE Wallets
SET Balance = Balance + Amount
FROM inserted
WHERE Wallets.Id = inserted.RecieverId