require 'rails/handlebars/template'
require "rails/handlebars/version"

module Rails
  module Handlebars
    # Your code goes here...
    class Engine < ::Rails::Engine
      config.handlebars = ActiveSupport::OrderedOptions.new

      config.handlebars.precompile = true
      #config.handlebars.templates_root = "templates"
      #config.handlebars.templates_path_separator = '/'

      config.before_initialize do |app|
        Sprockets::Engines #force autoloading
        Sprockets.register_engine '.handlejs', Rails::Handlebars::Template
        Sprockets.register_engine '.hbjs', Rails::Handlebars::Template 
        #define some haml handlebars js... if defined? Tilt::HamlTemplate
      end
    end
  end
end
