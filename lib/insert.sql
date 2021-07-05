INSERT INTO series (id, title, author_id, subgenre_id) VALUES (1, "Scum", 1, 1);
INSERT INTO series (id, title, author_id, subgenre_id) VALUES (2, "Mutts", 2, 1);

INSERT INTO books (title, year, series_id) VALUES ("Greg", 1999, 3);
INSERT INTO books (title, year, series_id) VALUES ("The Swamp Man", 1998, 1);
INSERT INTO books (title, year, series_id) VALUES ("Devil's Haircut and Close Shave", 1997, 3);
INSERT INTO books (title, year, series_id) VALUES ("Friends w/ Beneficiaries", 1996, 2);
INSERT INTO books (title, year, series_id) VALUES ("Acid Trip to Grandma's House", 1999, 5);
INSERT INTO books (title, year, series_id) VALUES ("The Voyage", 1999, 6);

INSERT INTO characters (name, species, motto, author_id) VALUES ("Greg", "Dog", "FUN!", 3);
INSERT INTO characters (name, species, motto, author_id) VALUES ("Greg 2", "Human", "REALLY?!", 3);
INSERT INTO characters (name, species, motto, author_id) VALUES ("Avery", "Paper Man", "*Ruffle*", 3);
INSERT INTO characters (name, species, motto, author_id) VALUES ("Gerald", "Inanimate Pipe", "Gerald:    ", 3);
INSERT INTO characters (name, species, motto, author_id) VALUES ("Greg", "Dog", "There are two of us.", 3);
INSERT INTO characters (name, species, motto, author_id) VALUES ("Zalgo", "...", "...", 3);
INSERT INTO characters (name, species, motto, author_id) VALUES ("Greg", "Dog", "There are actually three of us.", 3);
INSERT INTO characters (name, species, motto, author_id) VALUES ("Greg", "Dog", "No wait...", 3);

INSERT INTO subgenres (name) VALUES ("Pulp");
INSERT INTO subgenres (name) VALUES ("Fiction");

INSERT INTO authors (name) VALUES ("David the Author");
INSERT INTO authors (name) VALUES ("Author the David");

INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
INSERT INTO character_books (book_id, character_id) VALUES (1,2);
