require "application_system_test_case"

class BalatroHandTypesTest < ApplicationSystemTestCase
  setup do
    @balatro_hand_type = balatro_hand_types(:one)
  end

  test "visiting the index" do
    visit balatro_hand_types_url
    assert_selector "h1", text: "Balatro hand types"
  end

  test "should create balatro hand type" do
    visit balatro_hand_types_url
    click_on "New balatro hand type"

    fill_in "Chip base", with: @balatro_hand_type.chip_base
    fill_in "Chip increase", with: @balatro_hand_type.chip_increase
    fill_in "Mult base", with: @balatro_hand_type.mult_base
    fill_in "Mult increase", with: @balatro_hand_type.mult_increase
    fill_in "Name", with: @balatro_hand_type.name
    click_on "Create Balatro hand type"

    assert_text "Balatro hand type was successfully created"
    click_on "Back"
  end

  test "should update Balatro hand type" do
    visit balatro_hand_type_url(@balatro_hand_type)
    click_on "Edit this balatro hand type", match: :first

    fill_in "Chip base", with: @balatro_hand_type.chip_base
    fill_in "Chip increase", with: @balatro_hand_type.chip_increase
    fill_in "Mult base", with: @balatro_hand_type.mult_base
    fill_in "Mult increase", with: @balatro_hand_type.mult_increase
    fill_in "Name", with: @balatro_hand_type.name
    click_on "Update Balatro hand type"

    assert_text "Balatro hand type was successfully updated"
    click_on "Back"
  end

  test "should destroy Balatro hand type" do
    visit balatro_hand_type_url(@balatro_hand_type)
    click_on "Destroy this balatro hand type", match: :first

    assert_text "Balatro hand type was successfully destroyed"
  end
end
