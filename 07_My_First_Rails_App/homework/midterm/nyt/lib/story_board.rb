class StoryBoard
	@@board = []
	def self.add_story(story)
		@@board << story
	end
	def self.stories
		@@board.map do |instance|
			"Keyword: #{instance.keyword}, url: (#{instance.url})"
		end
	end
end
