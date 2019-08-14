def select_books_titles_and_years_in_first_series_order_by_year
  # "SELECT
  #   books.title, books.year
  # FROM
  #   books
  # WHERE
  #   books.series_id IS 1
  # ORDER BY
  #   year
  # ;"

  <<-SQL
    SELECT
      title, year
    FROM
      books
    WHERE
      series_id IS 1
    ORDER BY
      year
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  # "SELECT 
  #   characters.name, characters.motto
  # FROM
  #   characters
  # ORDER BY
  #   LENGTH(characters.motto) DESC
  # LIMIT
  #   1
  # ;"

  <<-SQL
    SELECT
      name, motto
    FROM
      characters
    ORDER BY
      LENGTH(motto) DESC
    LIMIT
      1
  SQL

end


def select_value_and_count_of_most_prolific_species
  # "SELECT
  #   characters.species, COUNT(*)
  # FROM
  #   characters
  # GROUP BY
  #   characters.species
  # ORDER BY
  #   COUNT(*) DESC
  # LIMIT
  #   1
  # ;"

  <<-SQL
    SELECT species, count(*)
    FROM characters
    GROUP BY species
    ORDER BY  COUNT(*) DESC
    LIMIT 1
  SQL
end

def select_name_and_series_subgenres_of_authors
  # "SELECT
  #   authors.name, subgenres.name
  # FROM
  #   authors
  # JOIN
  #   series ON series.author_id = authors.id
  # JOIN
  #   subgenres ON subgenres.id = series.subgenre_id
  # ;"
  <<-SQL
    SELECT authors.name, subgenres.name
    FROM authors
    JOIN series ON series.author_id = authors.id
    JOIN subgenres ON series.subgenre_id = subgenres.id
  SQL
end

def select_series_title_with_most_human_characters
  # "SELECT
  #   series.title
  # FROM
  #   series
  # JOIN
  #   books ON books.series_id = series.id
  # JOIN
  #   character_books ON character_books.book_id = books.id
  # JOIN
  #   characters ON characters.id = character_books.character_id
  # WHERE
  #   characters.species IS 'human'
  # GROUP BY
  #   series.title
  # ORDER BY
  #   COUNT(*) DESC
  # LIMIT
  #   1
  # ;"

  <<-SQL
    SELECT series.title
    FROM series
    JOIN books ON books.series_id = series.id
    JOIN character_books ON character_books.book_id = books.id
    JOIN characters ON characters.id = character_books.character_id
    WHERE characters.species IS 'human'
    GROUP BY series.title
    ORDER BY COUNT(*) DESC
    LIMIT 1
  SQL
end

def select_character_names_and_number_of_books_they_are_in
  # "SELECT
  #   characters.name, COUNT(*) AS book_count
  # FROM
  #   characters
  # JOIN
  #   character_books ON characters.id = character_books.character_id
  # JOIN
  #   books ON books.id = character_books.book_id
  # GROUP BY
  #   characters.name
  # ORDER BY
  #   book_count DESC
  # ;"

  # --> NEED AN ALIAS for the book count: makes it easier to group by!! 

  <<-SQL
    SELECT characters.name, COUNT(*) AS book_count
    FROM characters
    JOIN character_books ON characters.id = character_books.character_id
    JOIN books ON books.id = character_books.book_id
    GROUP BY characters.name
    ORDER BY book_count DESC
  SQL
end
