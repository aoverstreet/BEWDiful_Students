class StoryBoard
	@@stories = []

	def self.stories
		@@stories.map do |story| 
			Story: #{story.title}, Category: (#{story.category}), Current Upvotes: #{story.upvotes}
		end
	end
	
	def self.add_story(story)
		@@stories.push(story)
	end

end
