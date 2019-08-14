def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year 
  FROM books 
  WHERE books.series_id = 1
  ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto 
  FROM characters 
  ORDER BY characters.motto
  limit 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, count(characters.species)
  FROM characters
  GROUP BY characters.species
  ORDER BY count(characters.species) DESC
  Limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors 
  INNER JOIN series 
  ON series.author_id = authors.id
  INNER JOIN subgenres 
  ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  From series 
  INNER JOIN books ON books.series_id = series.id
  INNER JOIN character_books ON character_books.book_id = books.id 
  INNER JOIN characters ON characters.id = character_books.character_id
  WHERE characters.species = 'human'
  GROUP BY series.title
  ORDER BY COUNT(*) DESC
  Limit 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.book_id)
  FROM characters
  INNER JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(character_books.book_id) DESC;"
end

