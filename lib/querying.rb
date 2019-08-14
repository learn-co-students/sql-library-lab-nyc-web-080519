def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year 
   FROM books
   INNER JOIN series
   ON books.series_id = series.id
   WHERE series.id = 1
   ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT c.name, c.motto
   FROM characters c
   ORDER BY LENGTH(c.motto) DESC
   LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT c.species, count(c.species)
   FROM characters c
   GROUP BY c.species
   ORDER BY count(c.species) DESC
   LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
   FROM authors
   INNER JOIN series
   ON authors.id = series.author_id
   INNER JOIN subgenres
   ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT s.title
   FROM series s
   INNER JOIN characters c
   ON s.author_id = c.author_id
   WHERE c.species = 'human'
   GROUP BY s.title
   ORDER BY COUNT(c.species) DESC
   LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT c.name, COUNT(b.id)
   FROM characters c
   JOIN character_books cb
   ON c.id = cb.character_id
   JOIN books b
   ON cb.book_id = b.id
   GROUP BY c.name
   ORDER BY COUNT(b.id) DESC;"
end
