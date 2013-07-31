module FreshBackbone
  class Engine < Rails::Engine
    # Block to add paths
    add_paths_block = lambda { |app|
      app.config.assets.paths <<
        File.expand_path("../../../vendor/assets/javascripts", __FILE__)
    }

    # Initializer
    initializer "fresh-backbone.update_asset_paths", &add_paths_block

    # For precompilation
    initializer "fresh-backbone.update_asset_paths", :group => :assets, &add_paths_block
  end
end
