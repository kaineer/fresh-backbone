Fresh-jquery
============

Just got some ideas from `zurb-foundation` gem
and fetched javascript files from http://cdnjs.com
and made jquery available in any rails project,
or even just project with `sprockets` support.

How to
======

Use it with rails
-----------------
1. `gem 'fresh-jquery'` in your `Gemfile`
2. `//= require jquery` or `//= require jquery.min` in your `application.js`
3. Have your jquery as you like

Use it with sinatra
-------------------
1. `gem 'fresh-jquery'` in your `Gemfile`, yep
2. `Gemfile` in your sinatra project:
  ```ruby
  source "https://rubygems.org"

  gem "sinatra"
  gem "sinatra-asset-pipeline"

  gem "sprockets"    # This line should go before asset gems!
  gem "fresh-jquery" # The gem you're trying to use
  ```

3. In your sinatra application:
  ```ruby
  Bundler.require

  require "sinatra/asset_pipeline"
  require "erb"

  register Sinatra::AssetPipeline

  get "/" do
      erb :index
  end
  ```
  
4. Run application and have `/assets/jquery.js`!
