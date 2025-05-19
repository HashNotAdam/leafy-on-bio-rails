# frozen_string_literal: true

class PlantsController < ApplicationController
  # GET /plants
  def index
    render(Pages::Plants::IndexComponent.new(plants: Plant.all))
  end

  # GET /plants/:id
  def show
    plant = Plant.find(params[:id])

    render(Pages::Plants::ShowComponent.new(plant:))
  end
end
