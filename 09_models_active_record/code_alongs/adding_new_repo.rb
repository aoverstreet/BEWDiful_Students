rails new Movie_App

#adding a new repo
git init .
git add .
git commit -m "first commit"



rails generate controller Movies


#model (use singular)
rails g model Shirt name:string description:text


#rake means -- standard tool to run tasks in ruby
rake db:migrate 

#seed -- creates a preset

generate migration add_image_to_shirts


rake db:seed



#console
rails console

#SQL  command is --> SELECT "shirts".* FROM "shirts"
Shirt.all 

Shirt.find_by :id => 3
or 
Shirt.find(3)

my_shirt = Shirt.find(3)

#you can change the name
my_shirt.name = "Victory through Patience"

#saves to the database
my_shirt.save


#you can delete something
my_shirt.destroy

#you can create a new shirt
Shirt.create name:"abc", description: "howdy"

#you can update 
Shirt.find(21).update image: "image.jpg"
