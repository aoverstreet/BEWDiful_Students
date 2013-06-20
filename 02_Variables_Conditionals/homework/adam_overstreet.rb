def game 
	puts "Hello, what is your name?"
	name = gets
	
	puts "Welcome, #{name} to the Secret Number game.  
	You have three tries to guess a secret number between 1 and 10. Please guess a number?" 
	
	users_guess = gets
	
	secret_number = 5
	
	if users_guess == secret_number
		puts "Congrats, #{name} you guessed the right number!" 
	else
		puts "Please guess a number?"
		
		guesses =3
		while guesses > -1
		
			if guesses > 0
				puts "#{guesses} guesses remaining." 
			else	
				puts "you are out of guesses."
			end
			
			count -=1
			
		end
		
	end


end
