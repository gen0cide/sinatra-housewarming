source :rubygems
# ------------------------------------------------------------------------------
# Base Gems (Default)
gem 'sinatra'
gem 'settingslogic'
gem "term-ansicolor"
gem 'thin'
gem 'term-ansicolor'
gem 'activerecord'
gem 'logger'
gem 'json'
gem 'shotgun'
# ------------------------------------------------------------------------------
# If you need databasing, uncomment some of these then check in
# config/datastores
# gem 'redis'
# gem 'redis-objects'
# gem 'mysql2'
# gem 'activerecord'
# gem 'sinatra-activerecord'
# gem 'mongoid'
# gem 'sqlite3'
# ------------------------------------------------------------------------------
group :development, :test do
	gem 'sinatra-reloader', '1.0', require: 'sinatra/reloader'
	gem 'pry', '0.9.8.4'
	gem 'racksh', '0.9.11'
end
# ------------------------------------------------------------------------------
group :console do
	gem 'awesome_print', '1.0.2'
	gem 'hirb', '0.6.2'
	gem 'wirb', '0.4.2'
end
# ------------------------------------------------------------------------------
group :test do
  gem 'rspec', '2.9.0'
  gem 'rack-test', '0.6.1', require: 'rack/test'
  gem 'factory_girl', '3.1.0'
  gem 'capybara', '1.1.2', require: 'capybara/rspec'
end
# ------------------------------------------------------------------------------