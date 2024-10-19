--Creates the tables
CREATE TABLE customer (
    id int primary key,
    firstName varchar(20),
    lastName varchar(30),
    address varchar(255),
    birthDate date,
    phoneNumber int,
    rentCount_Month int,
    rentCount_Year int
);

CREATE TABLE producer (
        id int primary key,
        companyName varchar(255),
        country varchar(50)
);

CREATE TABLE director(
    id int primary key,
    firstName varchar(20),
    lastName varchar(30),
    companyName varchar(255),
    awards_won int,
    country varchar(50)
);

CREATE TABLE actor (
    id int primary key,
    firstName varchar(20),
    lastName varchar(30),
    academy_awards_won int,
    country varchar(50)
);

CREATE TABLE movie_format (
    id int primary key,
    serialNumber int NOT NULL,
    format varchar(10)
);

CREATE TABLE movie(
    id int primary key,
    producerID int,
    foreign key(producerID) references producer(id),
    actorID int,
    foreign key(actorID) references actor(id),
    directorID int,
    foreign key(directorID) references director(id),
    title varchar(75),
    duration int NOT NULL,
    rating char(1),
    copyCount int NOT NULL,
    actorCount int,
    directorCount int,
    awardsWon int
);

CREATE TABLE customer_movie (
    movieID int,
    customerID int,
    PRIMARY KEY (movieID, customerID),
    foreign key (movieID) references movie(id),
    foreign key(customerID) references customer(id),
    title varchar(75),
    dateRented date NOT NULL,
    dueDate date NOT NULL,
    price float CHECK (price > 0),
    awardsWon int
);

--Inserting Data
--Customer 1--
INSERT INTO customer (id, firstName, lastName, address, birthDate, phoneNumber, rentCount_Month, rentCount_Year)
VALUES (000001, 'James', 'Simpler', '10101 Pave Street 20001', DATE '1989-07-12', 0012114921, 1, 0);

INSERT INTO producer (id, companyName, country)
VALUES (938164, 'Cascade Entertainment', 'U.S.A.');

INSERT INTO director (id, firstName, lastName, companyName, awards_won, country)
VALUES (009154, 'Grace', 'Williams', 'Cascade Entertainment', 0, 'U.S.A.');

INSERT INTO actor (id, firstName, lastName, academy_awards_won, country)
VALUES (791529, 'Mark', 'Towers', 0, 'U.S.A.');

INSERT INTO movie_format (id, serialNumber, format)
VALUES (998301, 10101010, 'DVD');

INSERT INTO movie (id, producerID, actorID, directorID, title, duration, rating, copyCount, actorCount, directorCount, awardsWon)
VALUES (998301, 938164, 791529, 009154, 'Downtown', 86, 4, 5, 6, 1, 0);

INSERT INTO customer_movie(movieID, customerID, title, dateRented, dueDate, price, awardsWon)
VALUES (998301, 000001, 'Downtown', DATE '2024-04-12', DATE '2024-06-12', 9.99, 0);

--Customer 2--
INSERT INTO customer (id, firstName, lastName, address, birthDate, phoneNumber, rentCount_Month, rentCount_Year)
VALUES (000002, 'Miles', 'Gruff', '483 Diver Lane 21109', DATE '1995-02-19', 2104440101, 4, 2);

INSERT INTO producer (id, companyName, country)
VALUES (141412, 'Wireframe Pictures', 'Norway');

INSERT INTO director (id, firstName, lastName, companyName, awards_won, country)
VALUES (083280, 'Albert', 'Hall', 'Wireframe Pictures', 3, 'Norway');

INSERT INTO actor (id, firstName, lastName, academy_awards_won, country)
VALUES (458575, 'Vandy', 'Warick', 0, 'Italy');

INSERT INTO movie_format (id, serialNumber, format)
VALUES (440951, 21034200, 'VHS');

INSERT INTO movie (id, producerID, actorID, directorID, title, duration, rating, copyCount, actorCount, directorCount, awardsWon)
VALUES (440951, 141412, 458575, 083280, 'Star Alliance', 95, 4, 8, 11, 1, 3);

INSERT INTO customer_movie(movieID, customerID, title, dateRented, dueDate, price, awardsWon)
VALUES (440951, 000002, 'Star Alliance', DATE '2024-03-28', DATE '2024-05-28', 10.99, 0);

--Customer 3--
INSERT INTO customer (id, firstName, lastName, address, birthDate, phoneNumber, rentCount_Month, rentCount_Year)
VALUES (0000492, 'Samantha', 'Brooks', '5211 Carpet Road 21007', DATE '2001-08-09', 1994003567, 1, 5);

INSERT INTO producer (id, companyName, country)
VALUES (008001, 'River Inc.', 'Brazil');

INSERT INTO director (id, firstName, lastName, companyName, awards_won, country)
VALUES (811093, 'Thomas', 'Grudank', 'River Inc.', 1, 'Peru');

INSERT INTO actor (id, firstName, lastName, academy_awards_won, country)
VALUES (301792, 'Haley', 'Rivera', 2, 'Mexico');

INSERT INTO movie_format (id, serialNumber, format)
VALUES (504001, 01745092, 'DVD');

INSERT INTO movie (id, producerID, actorID, directorID, title, duration, rating, copyCount, actorCount, directorCount, awardsWon)
VALUES (504001, 008001, 301792, 811093, 'Road to Life', 78, 3, 4, 11, 1, 3);

INSERT INTO customer_movie(movieID, customerID, title, dateRented, dueDate, price, awardsWon)
VALUES (504001, 000492, 'Road to Life', DATE '2024-02-24', DATE '2024-04-24', 10.99, 3);

--Customer 4--
INSERT INTO customer (id, firstName, lastName, address, birthDate, phoneNumber, rentCount_Month, rentCount_Year)
VALUES (011351, 'Isabella', 'Brand', '40221 Pastel Driveway 20098', DATE '2003-03-01', 5150027600, 1, 1);

INSERT INTO producer (id, companyName, country)
VALUES (341341, 'Blockbusters', 'U.S.A.');

INSERT INTO director (id, firstName, lastName, companyName, awards_won, country)
VALUES (677810, 'Taylor', 'Brimms', 'Blockbusters', 2, 'U.S.A.');

INSERT INTO actor (id, firstName, lastName, academy_awards_won, country)
VALUES (220198, 'Margaret', 'Blooms', 1, 'Canada');

INSERT INTO movie_format (id, serialNumber, format)
VALUES (440011, 90276109, 'VHS');

INSERT INTO movie (id, producerID, actorID, directorID, title, duration, rating, copyCount, actorCount, directorCount, awardsWon)
VALUES (440011, 341341, 220198, 677810, 'Hyper Street', 101, 5, 6, 6, 1, 4);

INSERT INTO customer_movie(movieID, customerID, title, dateRented, dueDate, price, awardsWon)
VALUES (440011, 011351, 'Hyper Street', DATE '2024-03-15', DATE '2024-05-15', 8.99, 4);

--Customer 5--
INSERT INTO customer (id, firstName, lastName, address, birthDate, phoneNumber, rentCount_Month, rentCount_Year)
VALUES (779103, 'Vincent', 'Grant', '40221 Pastel Driveway 20098', DATE '2003-03-01', 5150027600, 1, 1);

INSERT INTO producer (id, companyName, country)
VALUES (755632, 'Higashiyama Inc.', 'Japan');

INSERT INTO director (id, firstName, lastName, companyName, awards_won, country)
VALUES (009830, 'Takeshi', 'Yamaito', 'Higashiyama Inc.', 2, 'Japan');

INSERT INTO actor (id, firstName, lastName, academy_awards_won, country)
VALUES (625501, 'Ayaka', 'Sakuragi', 3, 'Japan');

INSERT INTO movie_format (id, serialNumber, format)
VALUES (901831, 02650174, 'VHS');

INSERT INTO movie (id, producerID, actorID, directorID, title, duration, rating, copyCount, actorCount, directorCount, awardsWon)
VALUES (901831, 755632, 625501, 009830, 'Onsen no Obake', 81, 5, 5, 4, 1, 5);

INSERT INTO customer_movie(movieID, customerID, title, dateRented, dueDate, price, awardsWon)
VALUES (901831, 779103, 'Onsen no Obake', DATE '2024-04-02', DATE '2024-06-02', 10.99, 3);