# frozen_string_literal: true

module Pages
  module Plants
    class ShowComponent < ApplicationComponent
      attr_reader :plant

      def initialize(plant:)
        super

        @plant = plant
      end
    end
  end
end
