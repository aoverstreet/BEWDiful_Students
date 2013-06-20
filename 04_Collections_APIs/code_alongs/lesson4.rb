def fizz(num, other)
	puts "something"
end

#has an empty has called options
def build_tweet(options={})
	tweet = {}
	
	tweet[:handle] = "http://www.twitter.com/#{options[:handle]}" if options[:handle]
	
	
	tweet[:url] = "http://www.twitter.com/#{options[:handle]}/#{options[:id]}" if options[:id]
	
	#returns the tweet
	tweet
end