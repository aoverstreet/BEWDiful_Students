# Secret_Number
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number. 
#   This way the secret number is also a secret to you.
#

class Secret_Number
	
	attr_accessor :number
	
	def initialize 
		array=(1..10).to_a
		@number = array.sample
	end

  
end