require "test_helper"

class BalatroHandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balatro_hand = balatro_hands(:one)
  end

  test "should get index" do
    get balatro_hands_url
    assert_response :success
  end

  test "should get new" do
    get new_balatro_hand_url
    assert_response :success
  end

  test "should create balatro_hand" do
    assert_difference("BalatroHand.count") do
      post balatro_hands_url, params: { balatro_hand: { balatro_hand_type_id: @balatro_hand.balatro_hand_type_id, chip_total: @balatro_hand.chip_total, name: @balatro_hand.name } }
    end

    assert_redirected_to balatro_hand_url(BalatroHand.last)
  end

  test "should show balatro_hand" do
    get balatro_hand_url(@balatro_hand)
    assert_response :success
  end

  test "should get edit" do
    get edit_balatro_hand_url(@balatro_hand)
    assert_response :success
  end

  test "should update balatro_hand" do
    patch balatro_hand_url(@balatro_hand), params: { balatro_hand: { balatro_hand_type_id: @balatro_hand.balatro_hand_type_id, chip_total: @balatro_hand.chip_total, name: @balatro_hand.name } }
    assert_redirected_to balatro_hand_url(@balatro_hand)
  end

  test "should destroy balatro_hand" do
    assert_difference("BalatroHand.count", -1) do
      delete balatro_hand_url(@balatro_hand)
    end

    assert_redirected_to balatro_hands_url
  end
end
