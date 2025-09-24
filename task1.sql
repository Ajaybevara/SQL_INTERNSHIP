-- Drop tables if already exist (clean start)
DROP TABLE IF EXISTS Borrowings;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Members;
DROP TABLE IF EXISTS Authors;


-- Authors Table

CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50)
);


-- Books Table

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    genre VARCHAR(50),
    published_year INT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);


-- Members Table

CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE DEFAULT (CURRENT_DATE)
);

-
-- Borrowings Table (relationship: Member borrows Book)

CREATE TABLE Borrowings (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    borrow_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- ER Diagram design

[Authors] (1) ----< (M) [Books] ----< (M) [Borrowings] >---- (1) [Members]

Authors(author_id PK, name, nationality)
Books(book_id PK, title, genre, published_year, author_id FK)
Members(member_id PK, name, email, join_date)
Borrowings(borrow_id PK, member_id FK, book_id FK, borrow_date, return_date)