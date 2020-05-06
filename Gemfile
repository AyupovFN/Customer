source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
gem 'jquery-rails'
gem 'twitter-bootstrap-rails'
gem 'simple_form'
gem 'bootsnap', '>= 1.1.0', require: false

group :production do
  gem 'pg'
end

group :assets do
  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '>= 4.1.0'
  gem 'therubyracer', platforms: :ruby
end
group :production do
  gem 'pg'
end

group :development, :test do
   gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
   gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
