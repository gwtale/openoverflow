module Spec
  module Matchers
    module DSL
      def create(name, &block_passed_to_create)
        define_method name do |*expected|
          Spec::Matchers::Matcher.new name, *expected, &block_passed_to_create
        end
      end
    end
  end
end

Spec::Matchers.extend Spec::Matchers::DSL

      