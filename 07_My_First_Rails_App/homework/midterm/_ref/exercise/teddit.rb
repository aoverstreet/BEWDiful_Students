require_relative 'lib/story'
require_relative 'lib/story_board'
require_relative 'lib/remote_source'

def show_menu
  puts "Would you like to:"
  puts "1. Get stories from Mashable"
  puts "2. Add your own story"
  puts "3. Exit"
end

def add_remote_stories
  RemoteSource.get.each do |story|
    StoryBoard.add_story story #adds story to an array of stories.
  end
end

def add_manual_stories
  puts("Please enter a News story:")
  title = gets.chomp
  puts("Please give it a category:")
  category = gets.chomp
  StoryBoard.add_story(Story.new(title, category))
end

def show_story_board
  StoryBoard.stories.each do |story| #StoryBorad.stories returns an array of stories
    puts story 
  end
end



puts("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_menu
loop do
  choice = gets.to_i
  if choice == 1
    add_remote_stories
    show_story_board
    show_menu
  elsif choice == 2
    add_manual_stories
    show_story_board
    show_menu
  elsif choice ==  3 
    break
  else
    puts "Invalid Selection"
    show_menu
  end
end

puts "Thank you for using Teddit!"
