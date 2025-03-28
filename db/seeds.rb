# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

  balatro_hand_types_attribute_hashes = [
    { name: "High Card",       mult_base: 1, mult_increase: 1,  chip_base: 5,   chip_increase: 10 },
    { name: "Pair",            mult_base: 2, mult_increase: 1,  chip_base: 10,  chip_increase: 15 },
    { name: "Two Pair",        mult_base: 2, mult_increase: 1,  chip_base: 20,  chip_increase: 20 },
    { name: "Three of a Kind", mult_base: 3, mult_increase: 2,  chip_base: 30,  chip_increase: 20 },
    { name: "Straight",        mult_base: 4, mult_increase: 3,  chip_base: 30,  chip_increase: 30 },
    { name: "Flush",           mult_base: 4, mult_increase: 2,  chip_base: 35,  chip_increase: 15 },
    { name: "Full House",      mult_base: 4, mult_increase: 2,  chip_base: 40,  chip_increase: 25 },
    { name: "Four of a Kind",  mult_base: 7, mult_increase: 3,  chip_base: 60,  chip_increase: 30 },
    { name: "Straight Flush",  mult_base: 8, mult_increase: 4,  chip_base: 100, chip_increase: 40 },
    { name: "Five of a Kind",  mult_base: 12, mult_increase: 3, chip_base: 120, chip_increase: 35 },
    { name: "Flush House",     mult_base: 14, mult_increase: 4, chip_base: 140, chip_increase: 40 },
    { name: "Flush Five",      mult_base: 16, mult_increase: 3, chip_base: 160, chip_increase: 50 },
  ]

  balatro_hand_types_attribute_hashes.each do |attribute_hash|
    BalatroHandType.find_or_create_by! attribute_hash
  end
