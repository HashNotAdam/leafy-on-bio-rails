# frozen_string_literal: true

FactoryBot.define do
  factory :plant do
    sequence(:title) { |n| "Polka Dot Begonia#{" #{n}" if n.positive?}" }

    aliases { ["Begonia Maculata", "Polka Dot Plant", "Angel Wing", "Spotted Begonia"] }
    image { "begonia-maculata.jpeg" }
    light do
      "Bright, indirect light. Higher light levels will promote strong growth and blooms, " \
        "but avoid direct sunlight."
    end
    pet_safe { "No" }
    water do
      "Keep the soil generally moist, letting the top half inch of soil dry out between " \
        "watering. Will not tolerate soggy soil."
    end
  end
end

# == Schema Information
#
# Table name: plants
#
#  id         :integer          not null, primary key
#  aliases    :json
#  image      :string
#  light      :string
#  pet_safe   :string
#  title      :string           not null
#  water      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_plants_on_title  (title) UNIQUE
#
