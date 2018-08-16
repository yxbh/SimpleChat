# SimpleChat

###### University of Western Australia CITS3403 Project (Stage II) 2014
A simple real time chat client built using Ruby on Rails (Ruby v2 and Rails V4).
Support user authentication, multiple chat rooms and file upload and sharing.
## Setup and Run
Use git clone or download the zip file from the GitHub [repository](https://github.com/yxbh/Uni_2014S1_CITS3403_Projects).
```
git clone https://github.com/yxbh/Uni_2014S1_CITS3403_Projects.git
```
### Run in test mode.
In your terminal:
```
bundle install
bundle exec rake db:migrate RAILS_ENV=test
rails s --environment test
```
Go to localhost:3052 on your browser.

### Run in development mode.
In your terminal:
```
bundle install
bundle exec rake db:migrate RAILS_ENV=development
rails s --environment development
```
Go to localhost:3052 on your browser.

### Run in production mode.
In your terminal:
```
bundle install
bundle exec rake db:migrate RAILS_ENV=production
rails s --environment production
```
Go to localhost:3052 on your browser.

### Exit server.
At the terminal. Press Ctrl+C until all server process exits.
## Test Suite
The rspec test suite and the simplecov gem are used.

Before running the test, make sure you have done a database migrate for the test environment.
```
bundle exec rake db:migrate RAILS_ENV=test
```
To run the test suite:
```
bundle exec rspec spec/
```
The HTML coverage report is generated in the coverage directory.

You might need to do Ctrl+C to stop the server completely as the Faye might still be running in another thread. This is also true before you run the test suite. The servers must not be running before you run the test suite or it will complain. It might be necessary to kill the Ruby thread as well.
On Ubuntu or other similar OS you can do the following:
```
pkill ruby
```
## Known Issues
* JavaScript warnings due to Bootstrap
* Simplecov not properly recognising coverage of one line

## Authors
* Arun Gimblet
* Benjamin YanXiang Huang
* Timothy Lander
