FactoryBot.define do
  factory :balatro_hand_type do
    sequence(:name) { |n| "HandType#{n}" }
    mult_base { 1 }
    mult_increase { 1 }
    chip_base { 5 }
    chip_increase { 10 }
  end
end
