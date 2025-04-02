FactoryBot.define do
  factory :balatro_hand do
    association :hand_type, factory: :balatro_hand_type
  end
end
