# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'Princess Bride', :rating => 'PG',
    :release_date => '09-Oct-1987'},
  {:title => 'The Sting', :rating => 'PG-13',
    :release_date => '25-Dec-1973'},
  {:title => 'Raiders of the Lost Ark', :rating => 'PG-13',
    :release_date => '25-Dec-1981'},
  {:title => 'Kingdom of Heaven', :rating => 'PG-13',
    :release_date => '05-May-2005'},
  {:title => 'No Country for Old Men', :rating => 'R',
    :release_date => '14-Feb-2008'},
  {:title => 'Inglorious Basterds', :rating => 'R',
    :release_date => '17-Sept-2009'}
]

more_movies.each do |movie|
  Movie.create!(movie)
end