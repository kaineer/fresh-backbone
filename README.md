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
1. `gem 'fresh-backbone'` in your `Gemfile`
2. `//= require` underscore, backbone and jquery from your `application.js`
3. Have your backbone as you like

Use it with sinatra
-------------------
1. `gem 'fresh-backbone'` in your `Gemfile`, yep
2. `Gemfile` in your sinatra project:
  ```ruby
  source "https://rubygems.org"

  gem "sinatra"
  gem "sinatra-asset-pipeline"

  gem "sprockets"    # This line should go before asset gems!
  gem "fresh-backbone" # The gem you're trying to use
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
  
4. Run application and have backbone files!
