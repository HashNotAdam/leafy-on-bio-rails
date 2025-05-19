# frozen_string_literal: true

class PlantSearchesController < ApplicationController
  # POST /plant_searches
  def create
    plants = search_for_plants

    respond_to do |format|
      format.html do
        render(Pages::Plants::IndexComponent.new(plants:))
      end

      format.turbo_stream do
        component = Plants::IndexComponent.new(plants:)
        render(turbo_stream: turbo_stream.replace(component.component_css_class, component))
      end
    end
  end

  private

  def search_for_plants
    return Plant.all if params[:q].blank?

    sql = <<~SQL.squish
      "#{Plant.table_name}"."title" LIKE :q COLLATE NOCASE
      OR EXISTS (
        SELECT 1
        FROM json_each("#{Plant.table_name}"."aliases") AS "alias"
        WHERE "alias"."value" LIKE :q COLLATE NOCASE
      )
    SQL

    Plant.where(sql, q: "%#{params[:q]}%")
  end
end
