INSERT INTO series (id, title, author_id, subgenre_id) VALUES (1, "Twilight", 2, 2);
INSERT INTO series (id, title, author_id, subgenre_id) VALUES (2, "Series of Unfortunate Events", 1, 2);

INSERT INTO subgenres (id, name) VALUES (1, "young adult fiction");
INSERT INTO subgenres (id, name) VALUES (2, "historical fiction");

INSERT INTO authors (id, name) VALUES (1, "stephanie meyer");
INSERT INTO authors (id, name) VALUES (2, "JK Rowling");

INSERT INTO books (id, title, year, series_id) VALUES (1, "Sorcerors Stone", 2001, 2);
INSERT INTO books (id, title, year, series_id) VALUES (2, "Chamber of Secretes", 2008, 2);
INSERT INTO books (id, title, year, series_id) VALUES (3, "Deathly Hallows", 2010, 2);
INSERT INTO books (id, title, year, series_id) VALUES (4, "Twilight", 2001, 1);
INSERT INTO books (id, title, year, series_id) VALUES (5, "New Moon", 2008, 1);
INSERT INTO books (id, title, year, series_id) VALUES (6, "Eclipse", 2010, 1);

INSERT INTO characters(id, name, species, motto, author_id, series_id) VALUES (1, "Harry", "Human", "Be Brave", 1, 2);
INSERT INTO characters(id, name, species, motto, author_id, series_id) VALUES (2, "Hermoine", "Human", "Be Smart", 1, 2);
INSERT INTO characters(id, name, species, motto, author_id, series_id) VALUES (3, "Ron", "Human", "Be Loyal", 1, 1);
INSERT INTO characters(id, name, species, motto, author_id, series_id) VALUES (4, "Hagrid", "Giant", "Be Kind", 1, 1);
INSERT INTO characters(id, name, species, motto, author_id, series_id) VALUES (5, "Edward", "Vampire", "Be Brave", 2, 1);
INSERT INTO characters(id, name, species, motto, author_id, series_id) VALUES (6, "Bella", "Human", "Be Dumb", 2, 1);
INSERT INTO characters(id, name, species, motto, author_id, series_id) VALUES (7, "Jasper", "Human", "Be Wise", 2, 2);
INSERT INTO characters(id, name, species, motto, author_id, series_id) VALUES (8, "Jacob", "Werewolf", "Be Hot", 2, 2);

INSERT INTO character_books
  (id, book_id, character_id)
VALUES
  (1, 1, 1),
  (2, 1, 2),
  (3, 2, 2),
  (4, 3, 2),
  (5, 1, 3),
  (6, 2, 3),
  (7, 3, 3),
  (8, 1, 4);

INSERT INTO character_books
  (id, book_id, character_id)
VALUES
  (9, 4, 5),
  (10, 4, 6),
  (11, 5, 6),
  (12, 6, 6),
  (13, 4, 7),
  (14, 5, 7),
  (15, 6, 7),
  (16, 4, 8);



