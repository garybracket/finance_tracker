# README

Covered.

* Ruby version 2.7.6

* Rails version 6.1.7

* PostgreSQL DB

* Local Dev is sqlite3, production is postgresql

* No tests implemented

* dependencies: 
gem 'devise'
gem 'devise-bootstrap-views'
gem 'alphavantage' 
gem 'font-awesome-rails'
gem 'pg'

* Deployment instructions
Before running locally on your machine for dev.. run in order: 1) bundle install 2) rails db:migrate 3) rails assets:precompile 4) then try running rails s to start server

Note: You cannot run more than 5 Stock searches in a one minute span..or the page will error out. However, once the API queries reset, you should be able to refresh and do a new search

* Type RENDER-DEPLOY in a Search to see requirements to host on Render platform. There are several files that must be configured in some way for Production hosting. 
