class BalatroHand < ApplicationRecord
  belongs_to :hand_type, class_name: "BalatroHandType", foreign_key: 'balatro_hand_type_id'

  has_many :balatro_card_balatro_hands
  has_many :cards, through: :balatro_card_balatro_hands, source: :balatro_card

  def score!(hand_level: 1)
    chips = hand_type.leveled_chips(hand_level)
    mult = hand_type.leveled_mult(hand_level)

    cards.each do |card|
      card.trigger_count.times do
        chips += card.chips
        mult += card.mult
        mult = mult * card.xmult
      end
    end

    update!(chip_total: chips * mult)
  end
end
