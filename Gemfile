source 'https://rubygems.org'

ruby '2.7.7'

gem 'rails', '~> 6.0.5', '>= 6.0.5.1'
gem 'sqlite3', '~> 1.6'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails', '~> 5.1', '>= 5.1.2'
end

platform :mingw, :mswin, :x64_mingw, :jruby do
  gem 'tzinfo-data'
end
