source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'pg', '~> 0.18'
gem 'sidekiq', '~> 4.2.8'
gem 'bunny', '~> 2.6.2'

group :development, :test do
  gem 'pry-byebug', '~> 3.4.2'
  gem 'pry-rails', '~> 0.3.4'
  gem 'rspec-rails', '~> 3.5'
  gem 'faker', '~> 1.7.2'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring', '~> 2.0.0'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
