require 'rails/generators'

module Semanticui
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc 'Copy SemanticUI Generators default files'
      source_root ::File.expand_path('../templates', __FILE__)

      def copy_lib
        directory "lib/templates/erb"
      end

      def copy_form_builder
        copy_file "form_builders/form_builder/_form.html.erb", "lib/templates/erb/scaffold/_form.html.erb"
      end

      def create_layout
        template "layouts/application.html.erb", "app/views/layouts/application.html.erb"
      end

      def create_stylesheets
        copy_file "assets/stylesheets/semanticui-scaffold.scss", "app/assets/stylesheets/semanticui-scaffold.scss"
      end

      def create_javascripts
        copy_file "assets/javascripts/semanticui-scaffold.js.coffee", "app/assets/javascripts/semanticui-scaffold.js.coffee"
      end

      def add_semanticui_gem
        gem "less-rails"
        gem "less-rails-semantic_ui"
        gem "autoprefixer-rails"

        Bundler.with_clean_env do
          run 'bundle install'
        end

        generate "semantic_ui:install"
      end

      def inject_semanticui_requires
        application_js_path = "app/assets/javascripts/application.js"
        if ::File.exists?(::File.join(destination_root, application_js_path))
          inject_into_file application_js_path, before: "//= require_tree" do
            "//= require semantic_ui/semantic_ui\n" +
            "//= require semanticui-scaffold\n"
          end
        end

        application_css_path = "app/assets/stylesheets/application.css"
        if ::File.exists?(::File.join(destination_root, application_css_path))
          inject_into_file application_css_path, before: '*= require_tree .' do
            "*= require semantic_ui/semantic_ui\n"
          end
        end
      end

      # Template Helpers

      def application_name
        Rails.application.class.name.split('::').first.titleize
      end
    end
  end
end
