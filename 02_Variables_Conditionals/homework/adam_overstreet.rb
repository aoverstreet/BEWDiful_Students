def game 
	puts "Hello, what is your name?"
	name = gets
	
	puts "Welcome, #{name} to the Secret Number game.  
	You have three tries to guess a secret number between 1 and 10." 
	
	secret_number = rand(1...10)
	
	guesses = 3
	
		while guesses > 0
		
			puts "What's your guess?"
			users_guess = gets.to_i
			
			if users_guess == secret_number
				puts "Congrats, #{name} you guessed #{users_guess}, which was the secret number!"
				guesses -= 10
			else
			
				if users_guess > secret_number
					puts "Your guess is too high."
				else
					puts "Your guess is too low."
				end
			
			guesses -= 1
			
				if guesses > 0
					puts "#{guesses} guesses remaining." 
				else	
					puts "#{name}, you are out of guesses. The secret number was #{secret_number}."
				end
			
			end
		
		end

end


end
