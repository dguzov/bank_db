DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
use bank_db;

CREATE Table Accounts (
	ID int not null primary key auto_increment,
	account_holder nvarchar(50) not null,
	balance decimal(12,2) not null,
	fees decimal(12,2) not null
	);

Insert Accounts (account_holder, balance, fees) Values ('Anna Bengel','8888','250');
Insert Accounts (account_holder, balance, fees) Values ('Chase Williams','5444','175');
Insert Accounts (account_holder, balance, fees) Values ('Jonelle Wehrman','3333','88');
Insert Accounts (account_holder, balance, fees) Values ('Steven Ross','3322','88');

CREATE Table Transactions (
	ID int not null primary key auto_increment,
	amount decimal(18,2) not null,
	fxn_type nvarchar(50) not null,
	account_ID nvarchar(50) not null
);

Insert Transactions (amount, fxn_type, account_ID) Values ('500','Deposit','3');
Insert Transactions (amount, fxn_type, account_ID) Values ('-200','Withdrawal','4');
Insert Transactions (amount, fxn_type, account_ID) Values ('200','Deposit','4');
Insert Transactions (amount, fxn_type, account_ID) Values ('248','Deposit','1');
