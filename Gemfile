source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.3"

gem "rails",           "7.1.3.2"
gem "bcrypt",          "3.1.18"
gem "bootstrap-sass",  "3.4.1"
gem "sassc-rails",     "2.1.2"
gem "sprockets-rails", "3.4.2"
gem "importmap-rails", "1.1.5"
gem "turbo-rails",     "1.4.0"
gem "stimulus-rails",  "1.2.1"
gem "jbuilder",        "2.11.5"
gem "puma",            "6.4.2"
gem "bootsnap",        "1.16.0", require: false
gem "sqlite3",         "1.6.1"

group :development, :test do
  gem "debug",   "1.7.1", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console",         "4.2.0"
  gem "solargraph",          "0.50.0"
  gem "irb",                 "1.10.0"
  gem "repl_type_completor", "0.1.2"
end

group :test do
  gem "capybara",                 "3.38.0"
  gem "selenium-webdriver",       "4.8.3"
  gem "webdrivers",               "5.2.0"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest",                 "5.18.0"
  gem "minitest-reporters",       "1.6.0"
  gem "guard",                    "2.18.0"
  gem "guard-minitest",           "2.4.6"
end

group :production do
    gem "pg", "1.5.6"
  end
# Windows ではタイムゾーン情報用の tzinfo-data gem を含める必要があります
# gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
