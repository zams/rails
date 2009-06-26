module Rails
  module Generators
    class MailerGenerator < NamedBase
      argument :actions, :type => :array, :default => [], :banner => "method method"

      def check_class_collision
        class_collisions class_name
      end

      def create_mailer_file
        template "mailer.rb", File.join('app/models', class_path, "#{file_name}.rb")
      end

      invoke_for :template_engine, :test_framework
    end
  end
end