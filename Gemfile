source 'https://rubygems.org'
ruby '2.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
#gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-turbolinks'
gem 'turbolinks'
gem 'jbuilder'
gem 'bootstrap-sass'
gem 'devise'
gem 'cancancan'
gem 'rolify'
gem 'ratyrate'
gem 'hirb'
gem 'will_paginate'
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'
gem "figaro"


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do 
	gem 'sqlite3'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem "spork-rails"
  gem 'guard-spork'
  gem 'spork'
end

group :test do
  gem 'capybara'

end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end

group :doc do 
	gem 'sdoc', require: false
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end




