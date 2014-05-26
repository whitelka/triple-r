source 'https://rubygems.org'

ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use postgresql as the database for Active Record
gem 'pg'
gem 'unicorn'

gem "bootstrap-sass", "~> 3.1.0"
gem 'sprockets', '2.11.0'

# Use SCSS for stylesheets
gem 'sass-rails', '>= 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '>= 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', ">= 3.1.0"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  # prettier error page
  gem "better_errors"
  gem "binding_of_caller"

  gem "quiet_assets"    # Turns off the Rails asset pipeline log
end

gem "simple_form"
gem "kaminari", ">= 0.15.1"     # to paginatmple_form"e




group :staging, :production do
  gem "rails_12factor"
  gem "newrelic_rpm" # monitoring
  gem "autoscaler" # heroku scaler
  gem "heroku-api"
end

group :development do
  gem "annotate", ">=2.6.3" # Annotate models
end

group :test do
  gem "fuubar"
  gem "database_cleaner"
  gem "capybara"
end
