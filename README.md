#SimpleChat
######University of Western Australia CITS3403 Project (Stage II) 2014
A simple real time chat client built using Ruby on Rails (Ruby v2 and Rails V4).
Support user authentication, multiple chat rooms and file upload and sharing.
##Setup and Run
Use git clone or download the zip file from the GitHub [repository](https://github.com/yxbh/Uni_2014S1_CITS3403_Projects).
```
git clone https://github.com/yxbh/Uni_2014S1_CITS3403_Projects.git
```
###Run in test mode.
In your terminal:
```
bundle install
bundle exec rake db:migrate RAILS_ENV=test
rails s
```
Go to localhost:3000 on your browser.
###Run in development mode.
In your terminal:
```
bundle install
bundle exec rake db:migrate RAILS_ENV=development
rails s --environment development
```
Go to localhost:3000 on your browser.
###Run in production mode.
In your terminal:
```
bundle install
bundle exec rake db:migrate RAILS_ENV=production
rails s --environment production
```
Go to localhost:3000 on your browser.
###Exit server.
At the terminal. Press Ctrl+C until all server process exits.
##Authors
* Arun Gimblet
* Benjamin YanXiang Huang
* Timothy Lander
