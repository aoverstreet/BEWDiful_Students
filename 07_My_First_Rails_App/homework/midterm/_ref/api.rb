require 'json'
require 'rest-client'

#intro message
def show_message(message)
  puts message
end

#displays each story
def show_all_stories(stories)
  stories.each do |story|
    show_message "Story: #{story[:title]}"
  end
end

#get response from Mashable
def get_from_mashable
  response = RestClient.get("http://mashable.com/stories.json")
  parsed_response = JSON.load(response)
  parsed_response["new"].map do |mashable|
    story = { title: mashable["title"]}

    story
  end
end




show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")


stories = get_from_mashable

show_all_stories stories