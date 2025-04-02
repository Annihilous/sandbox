require 'rails_helper'

RSpec.describe BalatroHand, type: :model do
  context "validations" do
    it "should validate the presence of HandType" do
      balatro_hand = build(:balatro_hand, hand_type: nil)

      expect(balatro_hand.valid?).to be(false)
    end
  end
end
