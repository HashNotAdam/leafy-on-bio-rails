# frozen_string_literal: true

module Pages
  module Plants
    class IndexComponent < ApplicationComponent
      attr_reader :plants

      def initialize(plants:)
        super

        @plants = plants
      end
    end
  end
end
