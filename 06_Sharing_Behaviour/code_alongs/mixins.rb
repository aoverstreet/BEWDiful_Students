module Upvotable
  def upvote!
    @upvote += 1
  end

  def downvote!
    @upvote -= 1
  end
end


class Photo
  attr_reader :photographer, :resolution, :upvotes
  include Upvotable

  def initialize(photographer, resolution)
    @photographer = photographer
    @resolution = resolution
    @upvotes = 1
  end
end

class Story
  attr_reader :title, :author, :upvotes
  include Upvotable

  def initialize(title, author)
    @title = title
    @author = author
    @upvotes = 1
  end
end