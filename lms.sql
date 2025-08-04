CREATE TABLE Publisher (
    PublisherID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(200),
    Address TEXT
);

CREATE TABLE Author (
    AuthorID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(200),
    Country VARCHAR(50)
);

CREATE TABLE Book (
    BookID INTEGER PRIMARY KEY AUTOINCREMENT,
    Title VARCHAR(200),
    ISBN VARCHAR(20) UNIQUE,
    Genre VARCHAR(50),
    PublishedYear INT,
    PublisherID INT,
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

CREATE TABLE Member (
    MemberID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(200),
    Email VARCHAR(100) UNIQUE,
    JoinDate DATE
);

CREATE TABLE Book_Author (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

CREATE TABLE Borrow (
    BorrowID INTEGER PRIMARY KEY AUTOINCREMENT,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);
