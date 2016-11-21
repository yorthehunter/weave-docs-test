module StitchFix
  module Weave
    class Engine < Rails::Engine
      initializer 'weave.assets.precompile' do |app|
        app.config.assets.paths << root.join('scss').to_s
      end
    end
  end
end
