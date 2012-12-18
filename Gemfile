source 'https://rubygems.org'

gem 'rake'
gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

group :development, :test do
  gem 'thin'
end

# To send out email with gmail.
gem 'tlsmail'

# For creating dynamic additions to stuff.
gem "nested_form"


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'jquery-rails'
  gem 'twitter-bootstrap-rails'
  gem 'less-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'carrierwave'

  gem 'uglifier', '>= 1.0.3'
  # gem 'rmagick'
end

gem 'jquery-rails'
gem 'bootstrap-datepicker-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
group :production do
  gem 'unicorn'
end

group :development do
	# Deploy with Capistrano
	gem 'capistrano'

	# To use debugger
	gem 'debugger'
end



#Auth
gem 'devise'

gem 'uuid'

gem 'libv8'