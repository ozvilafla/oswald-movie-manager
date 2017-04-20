# Oswald Movie Manager
## How to configure project for development
* Open **terminal / console**
* Run `git clone https://github.com/ozvilafla/oswald-movie-manager.git`
* Run `cd oswald-movie-manager`
* Run command `rvm install 2.3.1@movie_manager --create`
* If error on above command, run `rvm install 2.3.1`
* Run command `gem install bundler`
* Run command `bundle install`
* Rename`config/application.example.yml` to `config/application.yml` and add `email_username` and `email_password` for sending email on Signup and other features.
* Run `rake db:create & rake db:migrate`
* Start server `rails s`
* Web App will be available on `http://localhost:3000`