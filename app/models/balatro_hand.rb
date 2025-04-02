class BalatroHand < ApplicationRecord
  belongs_to :hand_type, source: :balatro_hand_type

  has_many :balatro_card_balatro_hands
  has_many :cards, through: :balatro_card_balatro_hands, source: :balatro_card
end
