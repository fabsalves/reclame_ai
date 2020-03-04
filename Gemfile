source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.6.0'

gem 'rails', '~> 5.1.7'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap-sass'
gem 'devise'
gem 'high_voltage'
gem 'jquery-rails'

# gem 'mysql2', '~> 0.3.18'
gem 'pg'

gem 'simple_form'
gem 'therubyracer', :platform=>:ruby

gem 'geocoder'
gem 'correios-cep'
gem 'faraday'
gem 'jquery-inputmask-rails'
gem 'pagy', '~> 3.5'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'rails_layout'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
end

group :test do
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
end

group :production do
  gem 'unicorn'
end
