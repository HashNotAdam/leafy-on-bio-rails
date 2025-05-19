# frozen_string_literal: true

class PlantsController < ApplicationController
  # GET /plants
  def index
    render(Pages::Plants::IndexComponent.new(plants: Plant.all))
  end
end
