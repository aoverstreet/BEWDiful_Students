require 'json'
require 'rest-client'
require_relative 'story'

class RemoteSource
  def self.get
    res = JSON.load(RestClient.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/30.json?api-key=bfafe9225e5d36732e1c6fb5b8403c42:1:67860445'))
    res["results"].map do |story|
      Story.new story["adx_keywords"], story["url"]
    end
  end
end
