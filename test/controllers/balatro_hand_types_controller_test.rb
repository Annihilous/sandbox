require "test_helper"

class BalatroHandTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balatro_hand_type = balatro_hand_types(:one)
  end

  test "should get index" do
    get balatro_hand_types_url
    assert_response :success
  end

  test "should get new" do
    get new_balatro_hand_type_url
    assert_response :success
  end

  test "should create balatro_hand_type" do
    assert_difference("BalatroHandType.count") do
      post balatro_hand_types_url, params: { balatro_hand_type: { chip_base: @balatro_hand_type.chip_base, chip_increase: @balatro_hand_type.chip_increase, mult_base: @balatro_hand_type.mult_base, mult_increase: @balatro_hand_type.mult_increase, name: @balatro_hand_type.name } }
    end

    assert_redirected_to balatro_hand_type_url(BalatroHandType.last)
  end

  test "should show balatro_hand_type" do
    get balatro_hand_type_url(@balatro_hand_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_balatro_hand_type_url(@balatro_hand_type)
    assert_response :success
  end

  test "should update balatro_hand_type" do
    patch balatro_hand_type_url(@balatro_hand_type), params: { balatro_hand_type: { chip_base: @balatro_hand_type.chip_base, chip_increase: @balatro_hand_type.chip_increase, mult_base: @balatro_hand_type.mult_base, mult_increase: @balatro_hand_type.mult_increase, name: @balatro_hand_type.name } }
    assert_redirected_to balatro_hand_type_url(@balatro_hand_type)
  end

  test "should destroy balatro_hand_type" do
    assert_difference("BalatroHandType.count", -1) do
      delete balatro_hand_type_url(@balatro_hand_type)
    end

    assert_redirected_to balatro_hand_types_url
  end
end
