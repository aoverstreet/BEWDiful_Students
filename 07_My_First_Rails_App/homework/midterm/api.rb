require 'json'
require 'rest-client'

#intro message
def show_message(message)
  puts message
end


#displays each keyword and url
def show_all_keywords(keywords)
  keywords.each do |keyword|
    show_message "Keywords: #{keyword[:adx_keywords]}, URL : #{keyword[:url]}"
  end
end


#get response from New York Times
def get_from_nyt
  response = RestClient.get("http://api.nytimes.com/svc/mostpopular/v2/#{keypress}/all-sections/30.json?api-key=bfafe9225e5d36732e1c6fb5b8403c42:1:67860445")
  parsed_response = JSON.load(response)

  parsed_response["results"].map do |nyt|
    keyword = { adx_keywords: nyt["adx_keywords"], url: nyt["url"]}

    keyword
  end
end


show_message("Welcome to New York Times, The Most Popular API.")

keywords = get_from_nyt

show_all_keywords keywords