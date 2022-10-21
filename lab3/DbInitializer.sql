USE bsuir_dbms;

INSERT INTO Users 
VALUES 
('mddn41', 'medadon41@outlook.com'),
('Arabasko', 'artemgreesha@gmail.com'),
('Antibite', 'antibite4123@gmail.com')

INSERT INTO Wallets
VALUES
(1, '1234567891234567', 0.00),
(2, '9876543219876543', 100.0),
(3, '1111111111111111', 50.0)

INSERT INTO Cards
VALUES
(1, '5326580001499323', '02', '26', '123'),
(2, '4916989672292462', '02', '26', '456'),
(3, '4916989609101216', '02', '26', '789')

INSERT INTO Transfers
VALUES
(1, 2, 125, DEFAULT),
(1, 3, 25, DEFAULT),
(2, 3, 205, DEFAULT),
(1, 2, 65, DEFAULT),
(2, 3, 100, DEFAULT),
(3, 2, 1, DEFAULT),
(1, 2, 1025, DEFAULT),
(3, 1, 500, DEFAULT),
(2, 3, 300, DEFAULT)

INSERT INTO Deposits
VALUES
(1, 1, 150, DEFAULT)

INSERT INTO Deposits
VALUES
(1, 1, 150, DEFAULT)

INSERT INTO Roles
VALUES
('User')

INSERT INTO UserRoles
VALUES
(1, 1),
(2, 1),
(3, 1)