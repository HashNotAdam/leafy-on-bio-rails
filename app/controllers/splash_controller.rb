# frozen_string_literal: true

class SplashController < ApplicationController
  def show
    render(Pages::Splashes::ShowComponent.new)
  end
end
