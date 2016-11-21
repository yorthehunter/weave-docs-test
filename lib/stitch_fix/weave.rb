require 'stitch_fix/weave/version'

module StitchFix
  module Weave
    class << self
      # Inspired by Kaminari
      def load!
        if rails?
          register_rails_engine
        elsif sprockets?
          register_sprockets
        end

        configure_sass
      end

      # Paths
      def gem_path
        @gem_path ||= File.expand_path '../..', File.dirname(__FILE__)
      end

      def stylesheets_path
        File.join assets_path, 'scss'
      end

      def fonts_path
        File.join assets_path, 'fonts'
      end

      def javascripts_path
        File.join assets_path, 'js'
      end

      def assets_path
        @assets_path ||= gem_path
      end

      # Environment detection helpers
      def sprockets?
        defined?(::Sprockets)
      end

      def compass?
        defined?(::Compass::Frameworks)
      end

      def rails?
        defined?(::Rails)
      end

      private

      def configure_sass
        require 'sass'
        ::Sass.load_paths << stylesheets_path
      end

      def register_rails_engine
        require 'stitch_fix/weave/engine'
      end

      def register_sprockets
        Sprockets.append_path(stylesheets_path)
      end

    end
  end
end

StitchFix::Weave.load!
