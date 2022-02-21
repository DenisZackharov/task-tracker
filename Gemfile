source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "rails", "~> 7.0.0"
gem "pg", "~> 1.1"

gem "bootsnap", ">= 1.4.4", require: false
gem "bundler-audit", "~> 0.8.0"
gem "brakeman"
gem "devise"
gem "jbuilder", "~> 2.7"
gem "puma", "~> 5.0"
gem "rspec", "~> 3.10"
gem "rubocop", require: false
gem "rubocop-discourse"
gem "rubocop-rails", require: false
gem "rubocop-rspec", require: false
gem "sass-rails", ">= 6"
gem "scss_lint", require: false
gem "seedbank"
gem "slim"
gem "strong_migrations"
gem "turbolinks", "~> 5"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "webpacker", "~> 5.0"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker", git: "https://github.com/faker-ruby/faker.git", branch: "master"
  gem "pry-byebug"
  gem "rspec-rails", ">= 3.9.0"
  gem "slim_lint", require: false
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "rack-mini-profiler", "~> 2.0"
  gem "listen", "~> 3.3"
  gem "spring"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "database_cleaner-active_record"
  gem "email_spec"
  gem "formulaic"
  gem "launchy"
  gem "selenium-webdriver"
  gem "webdrivers"
end
