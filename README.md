# README
mikes's notes
ROR tutorial sample app
This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

##license

All source code in the [Ruby on Rails Tutorial](http://railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

URL = https://immense-plateau-23815.herokuapp.com/
##getting started

to get started clone the repo and then install the needed gems.....
bundle install --without production #(use a diff database forr testing sqlite3 then what heroku uses to work pg)....
next migrate the data base....

rails db:migrate - bin/rails db:migrate RAILS_ENV=test 
then run rails test.....
then run local server, rails servers, to confirm it is working  

also if getting a required bcrypt error, do 
1. gem uninstall bcrypt 
2. install again doing gem install bcrypt --platform=ruby



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
