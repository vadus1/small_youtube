source 'https://rubygems.org'

#RAILS DEFAULTS
gem 'rails', '4.2.0.beta1'
gem 'pg'
gem 'sass-rails', '~> 5.0.0.beta1'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'rails-html-sanitizer', '~> 1.0'

#A+H
gem 'devise', github: 'plataformatec/devise', branch: 'lm-rails-4-2'
gem 'mini_magick'
gem "twitter-bootstrap-rails"
gem 'font-awesome-rails'
gem 'slim-rails'
gem 'delayed_job_active_record', '~> 4.0.1'
# Version 3.1.0 have fixes to support bootstrap 3
gem 'simple_form', '~> 3.1.0.rc2'
gem 'kaminari'

gem 'carrierwave'
gem 'carrierwave-video'
gem 'carrierwave_backgrounder'
gem 'unidecoder'

group :development do
  gem 'annotate'
  gem 'thin', require: false
  gem 'quiet_assets'
end

group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exceptions page and /console in development
  gem 'web-console', '~> 2.0.0.beta2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'jazz_hands'
end

group :production do
  gem 'therubyracer', '~> 0.12.1', require: false
  gem 'unicorn', require: false
  gem 'daemons', '~> 1.1.9', require: false
end
