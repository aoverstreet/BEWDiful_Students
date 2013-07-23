class StoryBoard
<<<<<<< HEAD
	@@stories = []

	def self.stories
		@@stories.map do |story| 
			Story: #{story.title}, Category: (#{story.category}), Current Upvotes: #{story.upvotes}
		end
	end
	
	def self.add_story(story)
		@@stories.push(story)
	end

=======
  @@stories = []

  def self.add_story(story)
    @@stories << story
  end

  def self.stories
    @@stories.map do |story|
      "Story: #{story.title}, Category: (#{story.category}), Current Upvotes: #{story.upvotes}"
    end
  end
>>>>>>> 476ab9081e5945aaff03f37eaea09e2827713b08
end
