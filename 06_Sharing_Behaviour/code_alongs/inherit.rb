#Employee
class Employee
	attr_accessor :first_name, :last_name
	
	def initialize(first_name: first_name, last_name: last_name)
		@first_name = first_name
		@last_name = last_name
	end
	
	def self.race
		"Human"
	end
	
	def full_name
		"#{@first_name} #{@last_name}"
	end
	
	def email
		"#{@first_name}.#{@last_name}@email.com"
	end
end

#Engineer
class Engineer < Employee
	
end

#Designer
class Designer < Employee

	def email
		"#{@first_name}.#{@last_name}@email-designer.com"
	end

end