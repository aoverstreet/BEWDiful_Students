#Url - name of project


# creates a controller
rails generate controller Url

# creates a model
rails generate model Url link:string hash_code:integer created:date updated:date


rake db:migrate

#starts server
rails s

#brings in your seed
rake db:seed