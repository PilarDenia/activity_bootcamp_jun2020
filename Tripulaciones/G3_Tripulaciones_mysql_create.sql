CREATE TABLE `Customers` (
	`idCustomer` INT NOT NULL,
	`firstName` varchar(100) NOT NULL,
	`lastName` varchar(100) NOT NULL,
	`identityDoc` varchar(10) NOT NULL UNIQUE,
	`dateBirth` DATE NOT NULL,
	`phoneNumber` varchar(15) NOT NULL UNIQUE,
	`email` varchar(100) NOT NULL UNIQUE,
	`password` varchar(10) NOT NULL,
	`idAddress` INT NOT NULL,
	PRIMARY KEY (`idCustomer`)
);

CREATE TABLE `TypeProducts` (
	`idTypeProduct` INT NOT NULL AUTO_INCREMENT,
	`nameProduct` varchar(50) NOT NULL UNIQUE,
	`descriptionProduct` varchar(255) NOT NULL,
	PRIMARY KEY (`idTypeProduct`)
);

CREATE TABLE `Accounts` (
	`ibanAccount` varchar(24) NOT NULL,
	`idTypeProduct` INT NOT NULL,
	`currentBalance` FLOAT NOT NULL,
	`statusAccount` bool NOT NULL,
	`startingDate` DATE NOT NULL,
	`closingDate` DATE,
	PRIMARY KEY (`ibanAccount`)
);

CREATE TABLE `Transactions` (
	`idTransaction` INT NOT NULL AUTO_INCREMENT,
	`ibanAccount` varchar(24) NOT NULL,
	`amountTransaction` FLOAT NOT NULL,
	`dateTransaction` DATETIME NOT NULL,
	`idTypeTransaction` INT NOT NULL,
	`subjectTransaction` varchar(50),
	`finalBalance` FLOAT NOT NULL,
	PRIMARY KEY (`idTransaction`)
);

CREATE TABLE `CustumerAccounts` (
	`idCustomer` INT NOT NULL,
	`ibanAccount` INT NOT NULL
);

CREATE TABLE `Addresses` (
	`idAddress` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idAddress`)
);

CREATE TABLE `TypeTransactions` (
	`idTypeTransaction` INT NOT NULL AUTO_INCREMENT,
	`nameTransaction` varchar(50) NOT NULL,
	`constraintTransaction` INT NOT NULL,
	PRIMARY KEY (`idTypeTransaction`)
);

ALTER TABLE `Customers` ADD CONSTRAINT `Customers_fk0` FOREIGN KEY (`idAddress`) REFERENCES `Addresses`(`idAddress`);

ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_fk0` FOREIGN KEY (`idTypeProduct`) REFERENCES `TypeProducts`(`idTypeProduct`);

ALTER TABLE `Transactions` ADD CONSTRAINT `Transactions_fk0` FOREIGN KEY (`ibanAccount`) REFERENCES `Accounts`(`ibanAccount`);

ALTER TABLE `Transactions` ADD CONSTRAINT `Transactions_fk1` FOREIGN KEY (`idTypeTransaction`) REFERENCES `TypeTransactions`(`idTypeTransaction`);

ALTER TABLE `CustumerAccounts` ADD CONSTRAINT `CustumerAccounts_fk0` FOREIGN KEY (`idCustomer`) REFERENCES `Customers`(`idCustomer`);

ALTER TABLE `CustumerAccounts` ADD CONSTRAINT `CustumerAccounts_fk1` FOREIGN KEY (`ibanAccount`) REFERENCES `Accounts`(`ibanAccount`);

