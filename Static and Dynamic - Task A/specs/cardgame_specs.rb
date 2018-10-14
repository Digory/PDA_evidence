require('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_2.rb')
require_relative('../card.rb')

class CardGameTest < MiniTest::Test

  def setup()
    @card_game = CardGame.new()
    @ace = Card.new("spades", 1)
    @jack = Card.new("spades", 11)
  end

  def test_check_for_ace__returns_true()
    actual = @card_game.check_for_ace(@ace)
    assert_equal(true, actual)
  end

  def test_check_for_ace__returns_false()
    actual = @card_game.check_for_ace(@jack)
    assert_equal(false, actual)
  end

  def test_highest_card()
    actual = @card_game.highest_card(@ace,@jack)
    assert_equal(@jack, actual)
  end

  def test_cards_total()
    cards_list = [@ace, @jack]
    actual = CardGame.cards_total(cards_list)
    assert_equal("You have a total of 12", actual)
  end

end
