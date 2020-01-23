CREATE TABLE `Book` (
  `ISBN` INT,
  `Title` VARCHAR(50),
  `Author` VARCHAR(30),
  KEY `FK` (`ISBN`, `Author`)
);

CREATE TABLE `Copy` (
  `Copy Number` <type>,
  KEY `INT` (`Copy Number`)
);

CREATE TABLE `Loan` (
  `Date out` <type>,
  `Date in` <type>,
  KEY `VARCHAR(15)` (`Date out`, `Date in`)
);

CREATE TABLE `Borrow` (
  `VARCHAR(50)` <type>,
  `INT` <type>,
  KEY `Name` (`VARCHAR(50)`),
  KEY `Status` (`INT`)
);

CREATE TABLE `Reservation` (
  `Date requested` VARCHAR(15),
  `Date Checkout` VARCHAR(15)
);

