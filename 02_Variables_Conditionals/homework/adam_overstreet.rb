def game 
	puts "Hello, what is your name?"
	name = gets
	
	puts "Welcome, #{name} to the Secret Number game.  
	You have three tries to guess a secret number between 1 and 10. Please guess a number?" 
	
	users_guess = gets
	
	secret_number = rand(1...10)
	
	if users_guess == secret_number
		puts "Congrats, #{name} you guessed #{users_guess}, which was the secret number!"
		
	elsif users_guess > secret_number
		puts "Your guess is too high."
	
	elsif users_guess < secret_number
		puts "Your guess is too low."
	
	else
		puts "Please guess another number?"
		
		guesses =3
		while guesses > -1
		
			if guesses > 0
				puts "#{guesses} guesses remaining." 
			else	
				puts "#{name}, you are out of guesses. The secret number was #{secret_number}."
			end
			
			count -=1
			
		end
		
	end


end
