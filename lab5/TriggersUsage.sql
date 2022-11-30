USE bsuir_dbms;

INSERT INTO Withdrawals(ReceiverId, SenderId, Amount)
VALUES (1, 1, 100)

SELECT * FROM Withdrawals

SELECT * FROM Wallets
WHERE Id = 1

INSERT INTO Transfers(RecieverId, SenderId, Amount)
VALUES (1, 2, 300)

SELECT * FROM Wallets
WHERE Id = 1