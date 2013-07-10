=begin
how_message("Welcome to New York Times, The Most Popular API. 
Press #1 for 'the most emailed', \n 
Press #2 for 'the most shared', \n
Press #3 for 'the most viewed")


mostemailed | mostshared | mostviewed
=end

def show_menu
  puts "Would you like to:"
  puts "1. mostemailed"
  puts "2. mostshared"
  puts "3. mostviewed"
end


puts("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_menu

#url = "http://api.nytimes.com/svc/mostpopular/v2/#{keypress}/all-sections/30.json?api-key=bfafe9225e5d36732e1c6fb5b8403c42:1:67860445"


loop do
  choice = gets.to_i
  if choice == 1
   	keypress = "mostemailed"
    puts "you pressed 1, the url is now: #{keypress}"
   
    
  elsif choice == 2
  	keypress = "mostshared"
    puts "you pressed 2, the url is now: #{keypress}"
    
    
  elsif choice ==  3 
  	keypress = "mostviewed"
  	puts "you pressed 3, the url is now: #{keypress}"
  
  	break
    
  else
    puts "Invalid Selection"
    show_menu
  end
end