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
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
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