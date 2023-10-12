create database java5
go
use java5
go
create table Account(
	id int not null primary key identity(1,1),
	username varchar(20) not null unique,
	password varchar(20) not null,
	fullname nvarchar(100) not null,
	email varchar(255) not null unique,
	avatar nvarchar(255) not null,
	isActive bit not null
)
go
create table Admin(
	id int not null primary key identity(1,1),
	username varchar(20) not null unique,
	password varchar(20) not null,
	fullname nvarchar(100) not null,
	email varchar(255) not null unique,
	phone int not null,
	birthday Date not null,
	identityNumber int not null unique, 
	avatar nvarchar(255) not null,
	isActive bit not null
)
go
create table Category(
	id int not null primary key identity(1,1),
	name varchar(255) NOT NULL,
	description TEXT,
	isActive bit not null
)
go
CREATE TABLE Author (
	  id int not null primary key identity(1,1),
	  name VARCHAR(255) NOT NULL,
	  description TEXT,
	  isActive bit not null
);
go
CREATE TABLE Publisher (
  id int not null primary key identity(1,1),
  name VARCHAR(255) NOT NULL,
  isActive bit not null
);
go
create table Book(
	id int not null primary key identity(1,1),
	title nvarchar(255) not null,
	price float not null,
	qty int not null,
	introduction nvarchar(255) not null,
	picturePath nvarchar(255) not null,
	contentPath nvarchar(255) not null, --storing the content path to read the e-book
	authorId int not null,
	categoryId INT not null,
	publisherId INT not null,
	isActive bit not null
)
go
ALTER TABLE Book ADD CONSTRAINT fk_categoryId_book FOREIGN KEY (categoryId) REFERENCES Category(id);
ALTER TABLE Book ADD CONSTRAINT fk_authorId_book FOREIGN KEY (authorId) REFERENCES Author(id);
ALTER TABLE Book ADD CONSTRAINT fk_publisherId_book FOREIGN KEY (publisherId) REFERENCES Publisher(id);
go

create table BooksOfAccount(
	id int not null identity(1,1),
	progress decimal(5,2) default 0,
	accountID int not null ,
	bookId int not null,
	isActive bit not null
)
go
ALTER TABLE BooksOfAccount ADD CONSTRAINT pk_bookOfAccount PRIMARY KEY (accountID,bookId,id);
ALTER TABLE BooksOfAccount ADD CONSTRAINT fk_bookId_bookOfAccount FOREIGN KEY (bookId) REFERENCES Book(id);
ALTER TABLE BooksOfAccount ADD CONSTRAINT fk_accountID_bookOfAccount FOREIGN KEY (accountID) REFERENCES Account(id);
go

create table Orders(
	id int not null identity(1,1) primary key,
	orderDate Date not null default getdate(),
	phone int not null,
	accountID int not null,
	isActive bit not null
)
go
ALTER TABLE BooksOfAccount ADD CONSTRAINT fk_accountID_orders FOREIGN KEY (accountID) REFERENCES Account(id);
go

create table OrderDetail(
	id int not null identity(1,1),
	qty int not null,
	price float not null,
	bookID int not null,
	orderID int not null
)
go
ALTER TABLE OrderDetail ADD CONSTRAINT pk_orderDetail_orderDetail PRIMARY KEY (orderID,bookId,id);
ALTER TABLE OrderDetail ADD CONSTRAINT fk_bookID_orderDetail FOREIGN KEY (bookID) REFERENCES Book(id);
ALTER TABLE OrderDetail ADD CONSTRAINT fk_orderID_orderDetail FOREIGN KEY (orderID) REFERENCES Orders(id);
go
