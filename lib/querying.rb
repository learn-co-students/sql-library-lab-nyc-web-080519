def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
   FROM books
   JOIN series ON books.series_id = series.id
   WHERE series.id = (SELECT id FROM series ORDER BY id LIMIT 1);"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  WHERE characters.motto = (SELECT motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1);"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) 
    FROM characters
    GROUP BY characters.species
    ORDER BY COUNT(characters.species) DESC
    LIMIT 1;"


end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
   FROM series
   JOIN authors
    ON series.author_id = authors.id
   JOIN subgenres
    ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  # UGLY, NOT SURE WHY IT WORKS, NEEDS TO BE REDONE
  "
  SELECT series.title --, count(characters.author_id)
  FROM series
  JOIN authors
    ON series.author_id = authors.id
  JOIN characters
    ON characters.author_id = authors.id
  WHERE characters.species = 'human'
    GROUP BY characters.author_id
    ORDER BY count(characters.author_id) DESC
    LIMIT 1 
    ;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(character_books.character_id)
  FROM characters
  JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name 
  ORDER BY count(character_books.character_id) DESC;"
end
