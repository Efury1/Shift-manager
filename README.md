# README

### Shift Manager
<a href="https://youtu.be/sKajPLzpna0">Video shows previous implementation</a> <br>
First Ruby on Rails application. <br>
Application allows users to join organisations, manage shifts and view pay.

### Getting Started
If you don't have ruby <br>
Install ruby: rubyinstaller.org <br>
Install rails: gem install rails <br>

### To get started with the application, clone the repo and install needed gems: <br>
bundle install <br>

### Next, migrate your database: <br>
rails db:migrate <br>

### Run the application in the local server <br>
rails s <br>
In browser type: localhost:3000

### Not finished
Hours worked needs to formatted differently <br>
Hours worked needs a $ symbol <br>
User shifts need to be destroyed once user leaves organisation <br>
Bug: when deleting shifts user is redirected to wrong path <br>

### Potential Improvements
Add comments <br>
Make code more readable <br>
Stylize sign up and login pages<br>
Delete code that isn't being used<br>
In shift creation users shouldn't be able to implement a shift that has an end data before start date <br>
Password reset shouldn't just be available through command line.

### Application Pictures
<a href="https://imgbb.com/"><img src="https://i.ibb.co/1GMSwgC/tanda1.png" alt="tanda1" border="0"></a>
<br>
### Sign up Page

<br>
<br>
<a href="https://imgbb.com/"><img src="https://i.ibb.co/26pn7BH/tanda.png" alt="tanda" border="0"></a>
<br>
<br>

### Login Page

<a href="https://ibb.co/wzQYtSb"><img src="https://i.ibb.co/d5p7ZP3/passwordreset.png" alt="passwordreset" border="0"></a>
## Reset password <br>
When password is reset, you can see password token by going into command line and typing rails c then User.last.signed_in(purpose: "password_reset")

<br>
<br>
<a href="https://ibb.co/59G1SK6"><img src="https://i.ibb.co/BPcfQnt/main-page.png" alt="main-page" border="0"></a>
<br>
<br>
### Main Page
Main page explains application functionality and any unfinished tasks. User also have the ability to logout on this page.
Once logged in users about to access the navbar.

<br>
<br>
<a href="https://ibb.co/f97mtYQ"><img src="https://i.ibb.co/xYQVGS3/Bobs-Burger.png" alt="Bobs-Burger" border="0"></a>
<br>
<br>
### Shifts Page
Users and organisations can have many shifts. 

<br>
<br>
<a href="https://ibb.co/s5FwkZt"><img src="https://i.ibb.co/n3DcZFR/tanda3.png" alt="tanda3" border="0"></a>
<br>
<br>
### Organisation List

<br>
<br>
<a href="https://ibb.co/TtwXW5B"><img src="https://i.ibb.co/GRdwHjv/tan6.png" alt="tan6" border="0"></a>
<br>
## New shift
When you create a new shift you have to type in a user ID. If user ID doesn't exist shifts can't be made.
<br>


