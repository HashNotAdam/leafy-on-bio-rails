# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Plant.destroy_all
Plant.create!([
  {
    title: "Polka Dot Begonia",
    image: "plants/begonia-maculata.jpeg",
    water: "Keep the soil generally moist, letting the top half inch of soil dry out between " \
           "watering. Will not tolerate soggy soil.",
    light: "Bright, indirect light. Higher light levels will promote strong growth and blooms, " \
           "but avoid direct sunlight.",
    pet_safe: "No",
    aliases: ["begonia maculata", "polka dot plant", "angel wing", "spotted begonia"]
  },
  {
    title: "Boston Fern",
    image: "plants/boston-fern.jpeg",
    water: "Water the fern when the soil becomes damp. Do not allow the soil to dry out. This " \
           "may mean watering twice a week or daily in hot weather.",
    light: "Bright, indirect light.",
    pet_safe: "Yes",
    aliases: ["nephrolepis exaltata", "sword fern", "fishbone fern"]
  },
  {
    title: "Devil's Ivy",
    image: "plants/devils-ivy.jpeg",
    water: "Err on the side of too dry rather than too wet. Water when the soil is partly dry",
    light: "Bright, indirect light.",
    pet_safe: "No",
    aliases: ["pothos", "epipremnum aureum", "golden pothos", "devil's vine"]
  },
  {
    title: "Swiss Cheese Plant",
    image: "plants/monstera-adansonii.webp",
    water: "Consistently moist but not soaked. Before watering your Swiss cheese plant, stick " \
           "your finger into the soil about an inch deep. If the soil feels nearly dry to the " \
           "touch, it's time to water the plant.",
    light: "Bright, indirect light.",
    pet_safe: "No",
    aliases: ["swiss cheese vine", "monstera adansonii", "five holes plant"]
  },
  {
    title: "Monstera",
    image: "plants/monstera-deliciosa.png",
    water: "Water weekly, or when top 2 inches of soil have dried.",
    light: "High or medium indirect light.",
    pet_safe: "No",
    aliases: ["monstera deliciosa"]
  },
  {
    title: "Satin Pothos",
    image: "plants/satin-pothos.jpeg",
    water: "Keep moderately moist, allowing drying out inbetween waterings.",
    light: "Bright, indirect light.",
    pet_safe: "No",
    aliases: ["scindapsus pictus", "silver vine", "silver pothos"]
  },
  {
    title: "Heartleaf Philodendron",
    image: "plants/heartleaf-philodendron.jpeg",
    water: "In the summertime, keep the soil moist but not soggy. In the wintertime, allow the " \
           "top half-inch of soil to dry between waterings.",
    light: "Medium indirect light.",
    pet_safe: "No",
    aliases: ["philodendron cordatum"]
  },
  {
    title: "Rubber Plant",
    image: "plants/rubber-plant.jpeg",
    water: "Water regularly and moderately.",
    light: "Medium indirect light.",
    pet_safe: "No",
    aliases: ["ficus elastica burgundy", "rubber fig", "rubber tree"]
  },
  {
    title: "Triple Splash",
    image: "plants/triple-splash.jpeg",
    water: "Water when soil feels dry or plant starts to droop.",
    light: "Bright light.",
    pet_safe: "Safe in small amounts.",
    aliases: ["hypoestes phyllostachya"]
  },
  {
    title: "Peacock Plant",
    image: "plants/peacock.jpeg",
    water: "Maintain moist soil. Water once the surface of the soil starts to dry.",
    light: "Bright, indirect light. Avoid direct sunlight.",
    pet_safe: "Yes.",
    aliases: ["goeppertia makoyana", "calathea makoyana"]
  },
  {
    title: "Zebra Plant",
    image: "plants/calathea-zebrina.jpeg",
    water: "Keep the soil lightly moist, watering once the top of the soil is just starting to " \
           "dry out. Avoid soggy soil.",
    light: "Bright or medium, indirect light.",
    pet_safe: "Yes.",
    aliases: ["calathea zebrina"]
  },
  {
    title: "Spider Plant",
    image: "plants/spiderplant.jpeg",
    water: "Lightly moist but not soggy soil. Better to underwater than overwater.",
    light: "Light shade. Avoid direct sunlight.",
    pet_safe: "Yes.",
    aliases: ["chlorophytum comosum", "ribbon plant"]
  }
])
