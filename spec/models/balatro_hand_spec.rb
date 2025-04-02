require 'rails_helper'

RSpec.describe BalatroHand, type: :model do
  context "validations" do
    it "should validate the presence of HandType" do
      balatro_hand = build(:balatro_hand, hand_type: nil)

      expect(balatro_hand.valid?).to be(false)
    end
  end

  describe ".score!" do
    it "should return 16 for a High Card hand with an Ace" do
      hand_type = build(:balatro_hand_type,
        name: "High Card",
        mult_base: 1,
        mult_increase: 1,
        chip_base: 5,
        chip_increase: 10)

      ace_of_spades = build(:balatro_card, name: "Ace of Spades", suit: 1, chips: 11)

      balatro_hand = build(:balatro_hand, hand_type: hand_type, cards: [ace_of_spades])

      balatro_hand.score!

      expect(balatro_hand.chip_total).to eq(16)
    end

    it "should return 970 for a level 10 High Card hand with a Two" do
      hand_type = build(:balatro_hand_type,
        name: "High Card",
        mult_base: 1,
        mult_increase: 1,
        chip_base: 5,
        chip_increase: 10)

      ace_of_spades = build(:balatro_card, name: "Two of Spades", suit: 1, chips: 2)

      balatro_hand = build(:balatro_hand, hand_type: hand_type, cards: [ace_of_spades])

      balatro_hand.score!(hand_level: 10)

      expect(balatro_hand.chip_total).to eq(970)
    end

    it "should return 60 for a Pair of 10s" do
      hand_type = build(:balatro_hand_type,
        name: "Pair",
        mult_base: 2,
        mult_increase: 1,
        chip_base: 10,
        chip_increase: 15)

      ten_of_hearts = build(:balatro_card, name: "Ten of Hearts", suit: 2, chips: 10)
      ten_of_clubs = build(:balatro_card, name: "Ten of Clubs", suit: 3, chips: 10)

      balatro_hand = build(:balatro_hand, hand_type: hand_type, cards: [ten_of_hearts, ten_of_clubs])

      balatro_hand.score!

      expect(balatro_hand.chip_total).to eq(60)
    end

    it "should return 104 for a Two Pair of 7s and 9s" do
      hand_type = build(:balatro_hand_type,
        name: "Two Pair",
        mult_base: 2,
        mult_increase: 1,
        chip_base: 20,
        chip_increase: 20)

      seven_of_diamonds = build(:balatro_card, name: "Seven of Diamonds", suit: 4, chips: 7)
      seven_of_spades = build(:balatro_card, name: "Seven of Spades", suit: 1, chips: 7)
      nine_of_hearts = build(:balatro_card, name: "Nine of Hearts", suit: 2, chips: 9)
      nine_of_clubs = build(:balatro_card, name: "Nine of Clubs", suit: 3, chips: 9)

      balatro_hand = build(:balatro_hand, hand_type: hand_type, cards: [seven_of_diamonds, seven_of_spades, nine_of_hearts, nine_of_clubs])

      balatro_hand.score!

      expect(balatro_hand.chip_total).to eq(104)
    end

    it "should return 1120 for a 6 through 10 Straight Flush" do
      hand_type = build(:balatro_hand_type,
        name: "Straight Flush",
        mult_base: 8,
        mult_increase: 4,
        chip_base: 100,
        chip_increase: 40)

      six_of_spades = build(:balatro_card, name: "Six of Spades", suit: 1, chips: 6)
      seven_of_spades = build(:balatro_card, name: "Seven of Spades", suit: 1, chips: 7)
      eight_of_spades = build(:balatro_card, name: "Eight of Spades", suit: 1, chips: 8)
      nine_of_spades = build(:balatro_card, name: "Nine of Spades", suit: 1, chips: 9)
      ten_of_spades = build(:balatro_card, name: "Ten of Spades", suit: 1, chips: 10)

      balatro_hand = build(:balatro_hand, hand_type: hand_type, cards: [six_of_spades, seven_of_spades, eight_of_spades, nine_of_spades, ten_of_spades])

      balatro_hand.score!

      expect(balatro_hand.chip_total).to eq(1120)
    end

    it "should return 1441 for a level 5 Three of a Kind hand with Sevens" do
      hand_type = build(:balatro_hand_type,
        name: "Three of a Kind",
        mult_base: 3,
        mult_increase: 2,
        chip_base: 30,
        chip_increase: 20)

      seven_of_spades = build(:balatro_card, name: "Seven of Spades", suit: 1, chips: 7)
      seven_of_hearts = build(:balatro_card, name: "Seven of Hearts", suit: 2, chips: 7)
      seven_of_diamonds = build(:balatro_card, name: "Seven of Diamonds", suit: 3, chips: 7)

      balatro_hand = build(:balatro_hand, hand_type: hand_type, cards: [seven_of_spades, seven_of_hearts, seven_of_diamonds])

      balatro_hand.score!(hand_level: 5)

      expect(balatro_hand.chip_total).to eq(1441)
    end

    it "should return 1680 for a Five of a Kind with 4s" do
      hand_type = build(:balatro_hand_type,
        name: "Five of a Kind",
        mult_base: 12,
        mult_increase: 3,
        chip_base: 120,
        chip_increase: 35)

      four_of_spades = build(:balatro_card, name: "Four of Spades", suit: 1, chips: 4)
      four_of_hearts = build(:balatro_card, name: "Four of Hearts", suit: 2, chips: 4)
      four_of_diamonds = build(:balatro_card, name: "Four of Diamonds", suit: 4, chips: 4)
      four_of_clubs = build(:balatro_card, name: "Four of Clubs", suit: 3, chips: 4)
      wild_four = build(:balatro_card, name: "Wild Four", suit: 0, chips: 4)

      balatro_hand = build(:balatro_hand, hand_type: hand_type, cards: [four_of_spades, four_of_hearts, four_of_diamonds, four_of_clubs, wild_four])

      balatro_hand.score!

      expect(balatro_hand.chip_total).to eq(1680)
    end
  end
end
