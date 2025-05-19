# frozen_string_literal: true

class CreatePlants < ActiveRecord::Migration[8.0]
  def change
    create_table(:plants) do |t|
      t.string(:title, null: false)
      t.string(:image)
      t.string(:water)
      t.string(:light)
      t.string(:pet_safe)
      t.json(:aliases, default: [])

      t.timestamps
    end

    add_index(:plants, :title, unique: true)
  end
end
