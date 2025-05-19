# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  include Stimulizer
  include Turbo::FramesHelper
  include Turbo::StreamsHelper

  # Converts a component's class name to a CSS class name
  # Example: Module::MyComponent => module--my-component
  def component_css_class
    @component_css_class ||= self.class.name
      .gsub(/(.)([A-Z])/, '\1-\2')
      .gsub("::", "-")
      .sub("Components--", "")
      .downcase
  end
end
