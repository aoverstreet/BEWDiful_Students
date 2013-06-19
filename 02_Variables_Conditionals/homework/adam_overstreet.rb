def hello(name)
  puts "Hello #{name}"


name = gets

secret_num = 5 
tries = 3

puts "Welcome, " +name+  "to the Secret Number game.  
You have three tries to guess a secret number between 1 and 10. Please guess a number?" 

users_guess = gets


	if users_guess == secret_num
		puts "Congrats, "+name+" you guessed the right number!" 
	
	else 
		puts "Please try again, you have "+ tries - 1 + "remaining. Please guess again"  #first try
			
			users_guess = gets
	
			if users_guess == secret_num
				puts "Congrats, "+name+" you guessed the right number!" 
			else		
				puts "Please try again, you have "+ tries - 2 + "remaining. Please guess again"  #second try
				
				users_guess = gets
				
					if users_guess == secret_num
						puts "Congrats, "+name+" you guessed the right number!" 
					else		
						puts "You have lost the game!" #third try
					end
				
			end
	
	end

end

