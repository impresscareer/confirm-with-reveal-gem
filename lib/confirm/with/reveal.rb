require "confirm/with/reveal/version"

module Confirm
  module With
    module Reveal
      class Engine < ::Rails::Engine
        initializer "confirm_with_reveal" do |app|
          app.config.assets.precompile += %w(confirm_with_reveal.js confirm_with_reveal.min.js)
        end
      end
      # Your code goes here...
    end
  end
end
