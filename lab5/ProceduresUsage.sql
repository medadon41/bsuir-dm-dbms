
USE bsuir_dbms;

EXECUTE WalletsSummary

EXECUTE CreateUser 'ProcedureUser', 'userp@example.com'

DECLARE @id INT

EXECUTE CreateUserAndReturnId 'abc', 'test@abc.ru', @id OUTPUT

PRINT @id

EXECUTE GetWalletHistory 1