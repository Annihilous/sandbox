require "test_helper"

class BalatroCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balatro_card = balatro_cards(:one)
  end

  test "should get index" do
    get balatro_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_balatro_card_url
    assert_response :success
  end

  test "should create balatro_card" do
    assert_difference("BalatroCard.count") do
      post balatro_cards_url, params: { balatro_card: { chips: @balatro_card.chips, is_debuffed: @balatro_card.is_debuffed, mult: @balatro_card.mult, name: @balatro_card.name, suit: @balatro_card.suit, trigger_count: @balatro_card.trigger_count, xmult: @balatro_card.xmult } }
    end

    assert_redirected_to balatro_card_url(BalatroCard.last)
  end

  test "should show balatro_card" do
    get balatro_card_url(@balatro_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_balatro_card_url(@balatro_card)
    assert_response :success
  end

  test "should update balatro_card" do
    patch balatro_card_url(@balatro_card), params: { balatro_card: { chips: @balatro_card.chips, is_debuffed: @balatro_card.is_debuffed, mult: @balatro_card.mult, name: @balatro_card.name, suit: @balatro_card.suit, trigger_count: @balatro_card.trigger_count, xmult: @balatro_card.xmult } }
    assert_redirected_to balatro_card_url(@balatro_card)
  end

  test "should destroy balatro_card" do
    assert_difference("BalatroCard.count", -1) do
      delete balatro_card_url(@balatro_card)
    end

    assert_redirected_to balatro_cards_url
  end
end
