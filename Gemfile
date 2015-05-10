source 'https://rubygems.org'


gem 'rails', '4.2.1'

gem 'rails-api'

gem 'spring', :group => :development

gem "rack-cors" , require: "rack/cors"

gem 'pg'

gem 'devise', '~>3.4.0'
gem 'responders'
gem 'active_model_serializers'

gem 'rack-cors', require: 'rack/cors'

# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :production do
  gem "puma"
end

group :development, :test do
  gem "rspec-rails"
  gem "pry-byebug"
  gem "capybara"
end
