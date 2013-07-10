class StoryBoard
	@@board = []
	def self.add_story(story)
		@@board << story
	end
	def self.stories
		@@board.map do |instance|
			"Story: #{instance.title}, Category: (#{instance.category})"
		end
	end
end
