# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#

class Game

	def initialize(player)
		@guesses_left = 3
		@secret_number = Secret_Number.new.number
		@player = player.name
	end
	
	
	def try_again(guesses_left, next_guess)
		puts "Sorry, that's not it..."
		puts "You have #{guesses_left} #{guesses_left > 1 ? 'guesses' : 'guess'} left." if guesses_left > 1
		puts "Guess #{next_guess}!" if guesses_left > 0
	end
	
	def begin_game
		while @guesses_left > 0
			puts "What's your guess?"
			guess = gets.strip.to_i
			
			if guess == @secret_number
				puts "YOU WON!"
				exit
			
			elsif guess > @secret_number
				@guesses_left -= 1
				try_again(@guesses_left, "lower")
			elsif guess < @secret_number
				@guesses_left -= 1
				try_again(@guesses_left, "higher")
			end
		end
			puts "Game over. You didn't correctly guess the number. It was #{secret_number}, duh."
	end


end