# frozen_string_literal: true

class Favourite < ApplicationRecord
  belongs_to :plant
end

# == Schema Information
#
# Table name: favourites
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plant_id   :integer          not null
#
# Indexes
#
#  index_favourites_on_plant_id  (plant_id)
#
# Foreign Keys
#
#  plant_id  (plant_id => plants.id)
#
