FactoryBot.define do
  factory :balatro_card do
    sequence(:name) { |n| "Card Name #{n}" }
    suit { 1 }
    chips { 11 }
    mult { 0 }
    xmult { 1 }
    trigger_count { 1 }
  end
end
