-- Name: Damion Sklenars-Clare  
-- Id: 1638052

drop table CheckOut;
drop table Book;
drop table BookGenre;
drop table Author;
drop table Reader;

-- Answer Q1 below
CREATE TABLE IF NOT EXISTS Reader(
    readerId INT PRIMARY KEY,
    email VARCHAR(100),
    surname VARCHAR(50) NOT NULL,
    firstname VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Author(
    authorId INT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS BookGenre(
    genre VARCHAR(30) PRIMARY KEY,
    description VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Book(
    bookId INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    authorId INT NOT NULL,
    yearPublished VARCHAR(20),
    genre VARCHAR(50),
    Foreign Key (authorId) REFERENCES Author(authorId) ON DELETE CASCADE,
    Foreign Key (genre) REFERENCES BookGenre(genre) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS CheckOut(
    readerId INT,
    bookId INT,
    startdate VARCHAR(20) NOT NULL,
    enddate VARCHAR(20) NOT NULL,
    returneddate VARCHAR(20),
    PRIMARY KEY(readerId, bookId, startdate),
    Foreign Key (readerId) REFERENCES Reader(readerId) ON DELETE CASCADE,
    Foreign Key (bookId) REFERENCES Book(bookId) ON DELETE CASCADE
);




-- Answer Q2 below

INSERT INTO Reader(readerId, email, surname, firstname) VALUES
(91, 'james@examples.ac.nz', 'Smith', 'James'),
(92, 'geanette@examples.ac.nz', 'Kanji', 'Jeanette'),
(93, 'heather@examples.ac.nz', 'Heke', 'Heather'),
(94, 'patricia@examples.ac.nz', 'Smith', 'Patricia'),
(95, 'roni@examples.ac.nz', 'Paul', 'Roni'),
(96, 'oliver@examples.ac.nz', 'Adern', 'Oliver'),
(97, 'monica@examples.ac.nz', 'Adern', 'Monica');

INSERT INTO Author(authorId, firstname, surname) VALUES
(1, 'J.K.', 'Rowling'),
(2, 'Child', 'Lee'),
(3, 'Jane', 'Austen'),
(4, 'Shirley', 'Jackson'),
(5, 'Stephen', 'King');

INSERT INTO BookGenre(genre, description) VALUES
('horror', 'scare your readers '),
('thriller', 'keep the reader in a state of suspense'),
('fantasy', 'world-building and supernatural characters'),
('romance', 'a romantic relationship');

INSERT INTO Book(bookId, title, authorId, yearPublished, genre) VALUES
(101, 'The haunting of Hill House', 4, '1959', 'horror'),
(102, 'The lottery', 4, '1948', 'horror'),
(103, 'It', 5, '1986', 'horror'),
(104, 'Killing Floor', 2, '1997', 'thriller'),
(105, 'Tripwire', 2, '1999', 'thriller'),
(106, 'Harry Potter: The Chamber of Secrets', 1, '1998', 'fantasy'),
(107, 'Harry Potter: The Half-Blood Prince', 1, '2005', 'fantasy'),
(108, 'Pride and Prejudice', 3, '1813', 'romance');

INSERT INTO CheckOut(readerId, bookId, startdate, enddate, returneddate) VALUES
(91, 102, '2020-10-18', '2020-11-18', '2020-11-17'),
(91, 101, '2020-10-18', '2020-11-18', '2020-11-17'),
(91, 104, '2022-01-02', '2022-02-02', '2022-02-01'),
(95, 102, '2018-11-13', '2018-12-13', '2018-11-25'),
(96, 108, '2022-03-22', '2022-04-22', 'NULL'),
(93, 105, '2022-04-01', '2022-05-01', 'NULL');

-- Answer Q3 below

INSERT INTO BookGenre(genre, description) VALUES
('action', 'this is action genre')