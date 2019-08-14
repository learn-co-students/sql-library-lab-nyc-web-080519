INSERT INTO series (title, author_id, subgenre_id)
VALUES ("Harry Potter", 1, 1);
INSERT INTO series (title, author_id, subgenre_id)
VALUES ("Alex Cross", 2, 2);

INSERT INTO subgenres (name)
VALUES ("fantasy");
INSERT INTO subgenres (name)
VALUES ("mystery");

INSERT INTO authors (name)
VALUES ("JK Rowling");
INSERT INTO authors (name)
VALUES ("James Patterson");

INSERT INTO books (title, year, series_id)
VALUES ("Harry Potter and the Sorcerer's Stone", 1997, 1);
INSERT INTO books (title, year, series_id)
VALUES ("Harry Potter and the Chamber of Secrets", 1998, 1);
INSERT INTO books (title, year, series_id)
VALUES ("Harry Potter and the Prisoner of Azkaban", 1999, 1);
INSERT INTO books (title, year, series_id)
VALUES ("Along Came a Spider", 1993, 2);
INSERT INTO books (title, year, series_id)
VALUES ("Kiss the Girls", 1995, 2);
INSERT INTO books (title, year, series_id)
VALUES ("Jack & Jill", 1996, 2);

INSERT INTO characters (name, motto, species, author_id)
VALUES ("Harry Potter", "the boy who lived", "wizard", 1);
INSERT INTO characters (name, motto, species, author_id)
VALUES ("Sirius Black", "azkaban sucks", "wizard", 1);
INSERT INTO characters (name, motto, species, author_id)
VALUES ("Hagrid", "gamekeeper", "giant", 1);
INSERT INTO characters (name, motto, species, author_id)
VALUES ("Voldemort", "he who must not be named", "wizard", 1);

INSERT INTO character_books (character_id, book_id)
VALUES (1,1);
INSERT INTO character_books (character_id, book_id)
VALUES (1,2);
INSERT INTO character_books (character_id, book_id)
VALUES (1,3);
INSERT INTO character_books (character_id, book_id)
VALUES (2,3);
INSERT INTO character_books (character_id, book_id)
VALUES (3,1);
INSERT INTO character_books (character_id, book_id)
VALUES (4,1);
INSERT INTO character_books (character_id, book_id)
VALUES (4,2);
INSERT INTO character_books (character_id, book_id)
VALUES (4,3);

INSERT INTO characters (name, motto, species, author_id)
VALUES ("Alex Cross", "I am Alex Cross", "detective", 2);
INSERT INTO characters (name, motto, species, author_id)
VALUES ("John Sampson", "I'm Alex Cross' partner", "detective", 2);
INSERT INTO characters (name, motto, species, author_id)
VALUES ("Damon", "Alex Cross is my dad", "child", 2);
INSERT INTO characters (name, motto, species, author_id)
VALUES ("Nana Mama", "I raised Alex Cross", "grandmother", 2);

INSERT INTO character_books (character_id, book_id)
VALUES (5,4);
INSERT INTO character_books (character_id, book_id)
VALUES (5,5);
INSERT INTO character_books (character_id, book_id)
VALUES (5,6);
INSERT INTO character_books (character_id, book_id)
VALUES (6,4);
INSERT INTO character_books (character_id, book_id)
VALUES (7,5);
INSERT INTO character_books (character_id, book_id)
VALUES (8,4);
INSERT INTO character_books (character_id, book_id)
VALUES (8,5);
INSERT INTO character_books (character_id, book_id)
VALUES (8,6);