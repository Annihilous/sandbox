class BalatroCard < ApplicationRecord
  enum suit: {
    'None' => 0,
    'Spades' => 1,
    'Hearts' => 2,
    'Clubs' => 3,
    'Diamonds' => 4
  }

  has_many :balatro_card_balatro_hands
  has_many :balatro_hands, through: :balatro_card_balatro_hands

  validates :name,
            :suit,
            :chips,
            :mult,
            :xmult,
            :trigger_count,
            presence: true

  validates :is_debuffed,
            inclusion: { in: [true, false] }
end
