puts "What keyword would you like to search?"
keyword = gets.chomp

class Search  
  def initialize(search_results)  
    
    @search_results = search_results  
  end  

  def output  
    puts "Here are the results for: #{@search_results}."  
  end  
end  


NewKeyword = Search.new(keyword)  

NewKeyword.output 
