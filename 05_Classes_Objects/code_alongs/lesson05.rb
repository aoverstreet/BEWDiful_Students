Array.new 

[].size

x = Array.new


#class method

class Student
	
	def self.show_name
		@name
	end
	
	def self.grade  
		"B"	
	end
	
	def major
		"Math"
	end
	
end

s = Student.new
s.major

s.class == Student


## instance
class Student
	
	attr_accessor : name

	def self.show_name
		@name
	end
	
end	

s = Student.new
s.name = "Adam"


##  class
class Student
	
	@@human = true

	def self.is_a_human
		@@human
	end
end

Student.is_a_human
#spits out true




class Newspaper
	@@stories = []
	
	def self.add_story(story)
		@@stories << story
	end
	
	def self.get_stories
		@@stories 
	end

end

Newspaper.add_story("hello")
Newspaper.add_story("goodbye")

Newspaper.add_story("third")

Newspaper.get_stories
