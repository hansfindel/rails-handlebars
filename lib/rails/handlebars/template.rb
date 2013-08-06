require 'sprockets'
require 'sprockets/engines'

module Rails
  module Handlebars
    class Template < Tilt::Template
      def self.default_mime_type
        'application/javascript'
      end

      def prepare
      end

      # Generates Javascript code from a HandlebarsJS template.
      def evaluate(scope, locals, &block)        
        template = data.dup
        template.gsub!(/"/, '\\"')
        template.gsub!(/\r?\n/, ' ')
        template.gsub!(/\t/, ' ')
        # files logical path are like /templates/[folder_name\/]? file_name 
        # take out templates, join the rest by undescore and remove the extension name 
        route = scope.logical_path.split("/")[1..-1].join("_").gsub(".js", "") 
        jsfunction = "if(Handlebars.TEMPLATES == null){Handlebars.TEMPLATES={};}"
        jsfunction += "Handlebars.TEMPLATES[\"#{route}\"] = \"#{template}\";\n "
      end

    end
  end # handlebars module end 
end # rails module end 

# some configuration may be added...