require "application_system_test_case"

class BalatroCardsTest < ApplicationSystemTestCase
  setup do
    @balatro_card = balatro_cards(:one)
  end

  test "visiting the index" do
    visit balatro_cards_url
    assert_selector "h1", text: "Balatro cards"
  end

  test "should create balatro card" do
    visit balatro_cards_url
    click_on "New balatro card"

    fill_in "Chips", with: @balatro_card.chips
    check "Is debuffed" if @balatro_card.is_debuffed
    fill_in "Mult", with: @balatro_card.mult
    fill_in "Name", with: @balatro_card.name
    fill_in "Suit", with: @balatro_card.suit
    fill_in "Trigger count", with: @balatro_card.trigger_count
    fill_in "Xmult", with: @balatro_card.xmult
    click_on "Create Balatro card"

    assert_text "Balatro card was successfully created"
    click_on "Back"
  end

  test "should update Balatro card" do
    visit balatro_card_url(@balatro_card)
    click_on "Edit this balatro card", match: :first

    fill_in "Chips", with: @balatro_card.chips
    check "Is debuffed" if @balatro_card.is_debuffed
    fill_in "Mult", with: @balatro_card.mult
    fill_in "Name", with: @balatro_card.name
    fill_in "Suit", with: @balatro_card.suit
    fill_in "Trigger count", with: @balatro_card.trigger_count
    fill_in "Xmult", with: @balatro_card.xmult
    click_on "Update Balatro card"

    assert_text "Balatro card was successfully updated"
    click_on "Back"
  end

  test "should destroy Balatro card" do
    visit balatro_card_url(@balatro_card)
    click_on "Destroy this balatro card", match: :first

    assert_text "Balatro card was successfully destroyed"
  end
end
