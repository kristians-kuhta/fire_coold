source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3'

# Database
gem 'pg', '>= 0.18', '< 2.0'

# Server
gem 'puma', '~> 3.11'

# Stylesheets
gem 'sass-rails', '~> 5'

# JavaScript
gem 'webpacker', '~> 4.0'

# Turbolinks
gem 'turbolinks', '~> 5'

# Views
gem 'simple_form'
gem 'slim-rails'

group :development, :test do
  gem 'pry'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails', '~> 3.9'
  gem 'capybara', '~> 3.29'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
