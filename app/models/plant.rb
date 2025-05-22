# frozen_string_literal: true

class Plant < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  has_one :favourite, dependent: :destroy
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
