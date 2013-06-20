# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
end

# Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. 
# For numbers which are multiples of both three and five print “FizzBuzz”.
#
# Your code here


def fizzbuzz(num)
	result = "#{"Fizz" if num%3==0} #{"Buzz" if num%5==0}"
	
	result.empty? ? num : result
	
end






# Tests
assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

# uncomment this code when your tests pass
	
1.upto(100) do |number|
	puts fizzbuzz(number)
end




	##### test 1
	def fizzbuzz
	
		i = 0
		for i in 1..100
		
			if i%3 && i%5 ==0 
				puts "FizzBuzz"
			
			elsif i%3 ==0
				puts "Fizz"
			
			elsif i%5 ==0
				puts "Buzz"
				
			else
				print"#{i} \n"
			end
		
		
		end
	
	end
	
	
	
	##### test 2

	def fizzbuzz(num)
		result = num
		
		if i%3 && i%5 ==0 
			result= "FizzBuzz"
		
		elsif i%3 ==0
			result= "Fizz"
		
		elsif i%5 ==0
			result = "Buzz"
		end
		
		result
		
	end
	
	
	
	##### test 3 --- works
	
	def fizzbuzz(num)
	
	#result = num
	
	result = "#{"Fizz" if num%3==0} #{"Buzz" if num%5==0}"
	
	if result.empty?
		num
	else
		result
	end
	

	if (num%3==0 && num%5==0)
		#result = "Fizzbuzz"
		"Fizzbuzz"
	
	elsif(num%3==0)
		#result = "Fizz"
		"Fizz"
	
	elsif(num%5==0)
		#result = "Buzz"
		"Buzz"
	
	else
		num
		
	end
		#result
end
	
	