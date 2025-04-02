class BalatroHand < ApplicationRecord
  belongs_to :hand_type, class_name: "BalatroHandType", foreign_key: 'balatro_hand_type_id'

  has_many :balatro_card_balatro_hands
  has_many :cards, through: :balatro_card_balatro_hands, source: :balatro_card
end
