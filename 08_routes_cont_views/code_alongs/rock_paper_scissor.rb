rps = ["r", "p", "s"]
computer_picked = rps.sample 

puts "Welcome to Rock, Paper, Scissors game." 

def show_choices
  puts "Would you like to:"
  puts "(r) rock"
  puts "(p) paper"
  puts "(s) scissors"
end

show_choices


loop do
  choice = gets.chomp
  if choice == "r"
   	keypress = "rock"
    puts "#{keypress}"
	show_choices   
    
  elsif choice == "p"
  	keypress = "paper"
     puts "#{keypress}"
    show_choices
    
  elsif choice ==  "s" 
  	keypress = "scissors"
  	 puts "#{keypress}"
  	show_choices
  	break
    
  else
    puts "Invalid Selection"
    show_choices
  end
  
end