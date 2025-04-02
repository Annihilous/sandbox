require "application_system_test_case"

class BalatroHandsTest < ApplicationSystemTestCase
  setup do
    @balatro_hand = balatro_hands(:one)
  end

  test "visiting the index" do
    visit balatro_hands_url
    assert_selector "h1", text: "Balatro hands"
  end

  test "should create balatro hand" do
    visit balatro_hands_url
    click_on "New balatro hand"

    fill_in "Balatro hand type", with: @balatro_hand.balatro_hand_type_id
    fill_in "Chip total", with: @balatro_hand.chip_total
    fill_in "Name", with: @balatro_hand.name
    click_on "Create Balatro hand"

    assert_text "Balatro hand was successfully created"
    click_on "Back"
  end

  test "should update Balatro hand" do
    visit balatro_hand_url(@balatro_hand)
    click_on "Edit this balatro hand", match: :first

    fill_in "Balatro hand type", with: @balatro_hand.balatro_hand_type_id
    fill_in "Chip total", with: @balatro_hand.chip_total
    fill_in "Name", with: @balatro_hand.name
    click_on "Update Balatro hand"

    assert_text "Balatro hand was successfully updated"
    click_on "Back"
  end

  test "should destroy Balatro hand" do
    visit balatro_hand_url(@balatro_hand)
    click_on "Destroy this balatro hand", match: :first

    assert_text "Balatro hand was successfully destroyed"
  end
end
