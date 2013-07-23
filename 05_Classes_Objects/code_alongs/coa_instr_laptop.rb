<<<<<<< HEAD
#Explaining Classes, Objects & load paths.
#TIME: 15 min

class Laptop

	attr_accessor :brand, :screen_size, :power
	
	#sets up the method
	def initialize(brand, screen_size)
		@brand = brand
		@screen_size = screen_size
		@power = false
	end

	#does it have power?
	def power?(state)
		@power = state
	end

	#prints out results
	def display
		return "#{@brand} #{@screen_size} is on: #{@power}"
	end
	
end


my_mac = Laptop.new("mac", "13 inch")
puts my_mac.display

my_pc = Laptop.new("HP", "15 inch")
puts my_pc.display

my_mac.power? true

puts my_mac.display
puts my_pc.display
=======
#Explaining Classes, Objects & load paths.
#TIME: 15 min

class Laptop
	attr_accessor :brand, :screen_size, :power

	def initialize(brand, screen_size)
		@brand = brand
		@screen_size = screen_size
		@power = false
	end

	def power?
	  if @brand == "Apple"
      @power = true
    else
      @power = false
    end
	end

	def display
		return "#{@brand} #{@screen_size} is on: #{@power}"
	end
end


#my_mac = Laptop.new("mac", "13 inch")
#puts my_mac.display

#my_pc = Laptop.new("HP", "15 inch")
#puts my_pc.display

#my_mac.power? true

#puts my_mac.display
#puts my_pc.display
>>>>>>> 23a733228ccfd98f5c45db8757b9dae40e29d243
