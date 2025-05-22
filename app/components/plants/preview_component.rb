# frozen_string_literal: true

module Plants
  class PreviewComponent < ApplicationComponent
    attr_reader :plant

    def initialize(plant:)
      super

      @plant = plant
    end

    def favourite?
      plant.favourite.present?
    end
  end
end
