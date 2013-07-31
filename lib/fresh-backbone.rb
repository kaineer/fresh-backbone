module FreshBackbone
  if defined?(Rails)
    require "fresh-backbone/engine"
  elsif defined?(Sprockets)
    require "fresh-backbone/sprockets"
  end
end
