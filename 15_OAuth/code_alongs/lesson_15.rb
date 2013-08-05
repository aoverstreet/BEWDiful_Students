#{Step One}: build each table diagrams

Movies table
id
title
year_released
desciption
rating


Users table
id
name


Reviews table
id
user_id
movie_id
description


#{Step Two}: Build a migration for each.

rails generate migration {name} 

#adding movies table
	
	def change 
		create_table :movies  do |t|
			t.string :title
			t.integer :year_released
			t.string :description
			t.string :rating
		
		end
	end

#adding a new column to the exisiting movies table
add_earnings _to_movies

def change 
	add_column :movies, :earnings, :integer 
end


#{Step Three}: create models

class Movie
	has_many :reviews
	has_many :users, :through => :reviews
end

class User
	has_many :reviews
	has_many :movies, :through => :reviews
end

class Review
	belongs_to :user
	belongs_to :movie
end 


#in console 
movie = Movie.first 
movie.find(2)
movie.reviews
movie.users

#{Step four}: adding Authentication












