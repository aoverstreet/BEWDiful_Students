https://github.com/bswinnerton/BEWDiful_Students/blob/master/07_My_First_Rails_App/slides/slides_07.md


Most of the code we write belongs somewhere in the app folder.

app/assets: CSS, JavaScript and images used in templates.

app/controllers: Classes which gather data and render responses for specific requests.

app/helpers: Utility modules which define methods for templates to use.

app/mailers: Classes that define various outbound emails in your app.

app/models: Classes defining your data models (e.g.. User, Comment, Post).

app/views: Templates called by your controllers to render HTML.

app/views/layouts: Master templates to be used throughout your website.



#
rails new User_Scaffold

rails generate scaffold User FirstName:string LastName:string Age:integer Email:string














