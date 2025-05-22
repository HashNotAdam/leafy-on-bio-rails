# frozen_string_literal: true

class PlantsController < ApplicationController
  # GET /plants
  def index
    render(Pages::Plants::IndexComponent.new(plants: Plant.includes(:favourite)))
  end

  # GET /plants/:id
  def show
    plant = Plant.find(params[:id])

    render(Pages::Plants::ShowComponent.new(plant:))
  end

  # POST /plants/:id/favourite
  def favourite
    plant_id = Plant.find(params[:id])
    favourite = Favourite.find_or_create_by!(plant_id:) if plant_id
    render(
      turbo_stream: turbo_stream.replace(
        helpers.dom_id(plant),
        Plants::PreviewComponent.new(plant:)
      )
    )
    rescue
      render json: { error: 'Unable to favourite plant' }, status: :unprocessable_entity
  end
end
