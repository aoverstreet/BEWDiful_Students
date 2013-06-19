def application( stars = 3, name)
puts "#{name} has #{stars} stars"
end

def user(name:"", email:"")
	puts "new user: #{name}, email: #{email} "
end

def scream(screamer, *people )
	puts "#{screamer} yelled \"#{people.join(',')} GET IN THE VAN!\" "
end

3.times do
 puts "going"
end


puts "gone"

x = 3
x.times do
puts 'hey'
end 

#count up
1.upto(3) do |num|
	puts "#{num}.going"
end

#count down
3.downto(1) do |guess|
	puts "You have #{guess} guesses left"
end


#each
[1,2].each do |num|
puts " i am at #{num}"
end

x = ["hello", "goodbye"]
x.each do |greeting|

puts "#{greeting}"

end

#while
count =10
while count > 0
	puts "looping"
	count -=1
end

#do
count = 99
loop do
	break if count < 1  
	if count >1
		puts "#{count}  bottles of beer on the wall. \n  #{count} bottles of beer! You take one down and pass it around." 
	else 
		puts "#{count}  bottle of beer on the wall. \n  #{count} bottle of beer! You take one down and pass it around." 
	end	
	count -=1
end


#arrays
my_array = ["one", "two","three", "four"]
my_array[1] # two
my_array[-1] # four
my_array.first
my_array.last


x = ["a", "b", "c", "d"]
x.class

#add an element
x.push("e")

# or you can do this to add an element
x << "e"

#finds total number in array
x.size 

#finds last thing
x.pop

x.join(', ')


y = _

#calls on a string and returns an array
y.split(", ")

my_array = [1, 2, 3]
my_array.reverse

#bang -- modifies the array
my_array.reverse!


#hash
{}
x = {"dan" => 123}
x["dan"]

x["john"] = 1234

x["jay"] = "hello"

#symbol , always used for keys in hashes.  
:hello

y = {:dan => 12346}

y.has_key?(:dan)
y.include?(:dan)
y.has_value? 12346

user = {user: "SalmanAnsari", email: "salman.ansari@gmail.com"}

users = [
    {user: "Salman Ansari", role: "Instructor"},
    {user: "Brooks Swinnerton", role: "TA"},
    {user: "Brian Fountain", role: "TA"}
]







