use library;

 create table book(
  bookId int Not Null,
  bookName varChar(30) Not Null,
  bookAuthor varChar(30) Not Null,
 constraint book_PK Primary Key(bookId)
 );

create table user(
  userId int Not Null,
  fullName varchar(30) Not Null,
  gender varChar(3) Not Null,
  address varchar(30) Not Null,
  phoneNumber varchar(30) Not Null,
  constraint user_PK Primary Key(userId)
);



 create table borrowed(
  borrowedId int Not Null,
  userId  int Not null,
  staffId int Not null,
  bookId int Not Null,
  dateCollected date NOT NULL,
  deadline date NOT NULL,
  constraint user_fk foreign Key (userId)
					references user(userId),
  constraint staff_fk foreign Key(staffId)
					references staff(staffId),
  constraint book_fk foreign Key(bookId)
					references book(bookId)
  );
  
  
create table staff(
  staffId int Not Null,
  fullName varchar(30) Not Null,
  emailAddress varchar(30) Not Null,
  phoneNumber varchar(30) Not Null,
  address varchar(30) Not Null,
  job varchar(30) Not Null,
  constraint staff_PK Primary Key(staffId)
);
  