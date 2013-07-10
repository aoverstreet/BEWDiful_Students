require 'json'
require 'rest-client'

#intro message
def show_message(message)
  puts message
end

#displays each story
def show_all_stories(stories)
  stories.each do |story|
    show_message "Keywords: #{story[:adx_keywords]}"
  end
end

#get response from Mashable
def get_from_nyt
  response = RestClient.get("http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/30.json?api-key=bfafe9225e5d36732e1c6fb5b8403c42:1:67860445")
  parsed_response = JSON.load(response)
  parsed_response["new"].map do |nyt|
    story = { adx_keywords: nyt["adx_keywords"]}

    story
  end
end




show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")


stories = get_from_nyt

show_all_stories stories