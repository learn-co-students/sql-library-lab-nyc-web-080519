def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  INNER JOIN series
  ON books.series_id = series.id
  WHERE series.id = 1
  ORDER BY books.year
  ;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters 
  ORDER BY LENGTH(characters.motto) DESC
  LIMIT 1
  ;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
  FROM characters
  GROUP BY characters.species
  ORDER BY COUNT(characters.species) DESC
  LIMIT 1
  ;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series
  LEFT OUTER JOIN authors
  ON series.author_id = authors.id
    JOIN subgenres ON series.subgenre_id = subgenres.id
  GROUP BY authors.name
  ;"
end

def select_series_title_with_most_human_characters
  #selects the series title with the most characters that are the species "human"
  "SELECT series.title
  FROM series
  JOIN books
  ON series.id = books.series_id
    JOIN character_books
    ON books.id = character_books.book_id
	JOIN characters
	ON character_books.character_id = characters.id
	WHERE characters.species = 'human'
	GROUP BY series.title
	LIMIT 1
  
  ;"
end

def select_character_names_and_number_of_books_they_are_in
  #selects all of the character names and their number of books 
  #they have appeared in, in descending order, grouped by character name
  "SELECT characters.name, COUNT(character_books.book_id)
  FROM characters
  JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(character_books.book_id) DESC

  ;"
end
