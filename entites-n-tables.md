# Сущности и их представление в таблицах в базе данных

## User (Пользователь)
| Имя поля | Тип | Ограничение | Описание 
|-----------|:-----------:|-----------:|-----------:|  
| Id | pk | auto increment; not null; unique | Первичный ключ |
| UserName | VARCHAR(50) | not null | Имя пользователя |
| Email | VARCHAR(50) | not null | Эл. почта пользователя |
| Cards | fk | - | Внешний ключ на карту

## Card (Карта)
| Имя поля | Тип | Ограничение | Описание 
|-----------|:-----------:|-----------:|-----------:|  
| Id | pk | auto increment; not null; unique | Первичный ключ |
| OwnerID | fk | not null | Внешний ключ на пользователя |
| Number | VARCHAR(16) | not null | Номер карты |
| Month | VARCHAR(2) | not null | Месяц срока действия карты |
| Year | VARCHAR(4) | not null | Год срока действия карты |
| Cvv | VARCHAR(3) | not null | CVV/CVC2 карты |

## Wallet (Кошелек)
| Имя поля | Тип | Ограничение | Описание 
|-----------|:-----------:|-----------:|-----------:|  
| Id | pk | auto increment; not null; unique | Первичный ключ |
| Number | VARCHAR(16) | not null | Номер кошелька |
| Balance | FLOAT | not null | Текущий баланс кошелька |
| OwnerID | fk | not null | Внешний ключ на пользователя |

## Transfer (Перевод)
| Имя поля | Тип | Ограничение | Описание 
|-----------|:-----------:|-----------:|-----------:|  
| Id | pk | auto increment; not null; unique | Первичный ключ |
| ReceiverId | fk | not null | Внешний ключ на кошелек получателя |
| SenderId | fk | not null | Внешний ключ на кошелек отправителя |
| Amount | FLOAT | not null | Сумма перевода |
| Date | DATETIME | not null | Дата и время перевода |

## Deposit (Пополнение)
| Имя поля | Тип | Ограничение | Описание 
|-----------|:-----------:|-----------:|-----------:|  
| Id | pk | auto increment; not null; unique | Первичный ключ |
| SourceID | fk | not null | Внешний ключ на карту |
| ReceiverID | fk | not null | Внешний ключ на кошелек получателя |
| Amount | FLOAT | not null | Сумма перевода |
| Date | DATETIME | not null | Дата и время перевода |

## Withdrawal (Вывод)
| Имя поля | Тип | Ограничение | Описание 
|-----------|:-----------:|-----------:|-----------:|  
| Id | pk | auto increment; not null; unique | Первичный ключ |
| SenderID | fk | not null | Внешний ключ на кошелек отправителя |
| ReceiverID | fk | not null | Внешний ключ на карту |
| Amount | FLOAT | not null | Сумма перевода |
| Date | DATETIME | not null | Дата и время перевода |

## Donation (Пожертвование)
| Имя поля | Тип | Ограничение | Описание 
|-----------|:-----------:|-----------:|-----------:|  
| Id | pk | auto increment; not null; unique | Первичный ключ |
| SenderID | fk | not null | Внешний ключ на кошелек отправителя |
| ReceiverID | fk | not null | Внешний ключ на копилку |
| Amount | FLOAT | not null | Сумма перевода |
| Date | DATETIME | not null | Дата и время перевода |

## Moneybox (Копилка)
| Имя поля | Тип | Ограничение | Описание 
|-----------|:-----------:|-----------:|-----------:|  
| Id | pk | auto increment; not null; unique | Первичный ключ |
| Number | VARCHAR(16) | not null | Номер копилки |
| Balance | FLOAT | not null | Текущий баланс копилки |
| Name | VARCHAR(50) | not null | Название копилки |
| Description | VARCHAR(256) | not null | Описание копилки |
| OwnerID | fk | not null | Внешний ключ на создателя копилки |
| DonationID | fk | not null | Внешний ключ на пожертвования |

# Служебные

## Role (Роль)
| Имя поля | Тип | Ограничение | Описание 
|-----------|:-----------:|-----------:|-----------:|  
| Id | pk | auto increment; not null; unique | Первичный ключ |
| Name | VARCHAR(50) | not null | Название роли |

## UserRoles
### Вспомогательная таблица между пользователями и ролями

| Имя поля | Тип | Ограничение | Описание 
|-----------|:-----------:|-----------:|-----------:|  
| Id | pk | auto increment; not null; unique | Первичный ключ |
| UserID | fk | not null | Внешний ключ на пользоватлея |
| RoleID | fk | not null | Внешний ключ на роль |
