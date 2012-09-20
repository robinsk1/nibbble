source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'simple_form'
gem 'haml'
gem 'haml-rails', :group => :development
gem 'bootstrap-sass'
gem 'devise'
gem 'sqlite3'
gem 'thumbs_up'

gem 'dragonfly'
gem 'rack-cache', :require => 'rack/cache'
gem 'fog'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :production do
  gem 'execjs'
  gem 'therubyracer'
  gem 'pg'
end


group :development do
  gem 'factory_girl_rails'
  gem "rails3-generators", :git => "https://github.com/neocoin/rails3-generators.git"
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'heroku'
  gem 'sqlite3'
end


group :test do
  #gem 'rails3-generators'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'steak'
  gem 'turn', '0.8.2', :require => false
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
 gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'