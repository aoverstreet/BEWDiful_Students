class Story
=begin
	attr_accessor :name , :category
	
	def initalize
		puts "#{@title}, #{@category}"
	end
=end
	
	def initalize(title, category)
		@title = title
		@category = category
	end
	
	def title
		@title
	end

	def category
		@category
	end
	
	

end
