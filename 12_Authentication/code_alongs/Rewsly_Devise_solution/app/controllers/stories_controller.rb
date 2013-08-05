class StoriesController < ApplicationController
  
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @stories = Story.search_for params[:q]
  end

  def show
    @story = Story.find params[:id]
  end

  def new
    @story = Story.new
  end

  def create
    safe_story_params = params.require(:story).permit(:title, :link, :category)
<<<<<<< HEAD
    #@story = Story.new safe_story_params
    
   @story = current.user.stories.build safe_story_params
    
=======

    @story = current_user.stories.build safe_story_params
>>>>>>> d8788ac1a603fa4ed18d5b3fd46899d09fd4c515
    @story.upvotes = 1

    if @story.save
		redirect_to @story
    else
      render :new
    end
  end
  
end
