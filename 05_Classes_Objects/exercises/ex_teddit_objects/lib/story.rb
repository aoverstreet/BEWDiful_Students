class Story
<<<<<<< HEAD
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
	
	

=======
  attr_accessor :title, :category, :upvotes

  def initialize(title, category)
    @title = title
    @category = category
  end
>>>>>>> 476ab9081e5945aaff03f37eaea09e2827713b08
end
