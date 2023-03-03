#!/usr/bin/env bash
# exit on error
# this entire FILE IS REQUIRED FOR RENDER-DEPLOY as it is run in the RENDER environment
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate