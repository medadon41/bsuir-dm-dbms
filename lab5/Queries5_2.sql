USE bsuir_dbms;

GO
CREATE PROCEDURE WalletsSummary 
AS
	SELECT OwnerId AS OwnerID, Number, Balance
	FROM Wallets

GO
CREATE PROCEDURE CreateUser
	@username NVARCHAR(50),
	@email NVARCHAR(50)
AS
INSERT INTO Users(UserName, Email)
VALUES (@username, @email)

GO
CREATE PROCEDURE CreateUserAndReturnId
	@username NVARCHAR(50),
	@email NVARCHAR(50),
	@id INT OUTPUT
AS
	INSERT INTO Users(UserName, Email)
	VALUES(@username, @email)
	SET @id = @@IDENTITY

GO
CREATE PROCEDURE GetWalletHistory
	@id INT
AS
	SELECT T.SenderId, T.Amount, T.TransferDate
	FROM Wallets AS W
	LEFT JOIN Transfers AS T ON T.RecieverId = W.Id
	WHERE W.Id = @id