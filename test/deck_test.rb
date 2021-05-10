require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/deck'

class DeckTest < Minitest::Test
  def test_it_exists
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card1, card2, card3])

    assert_instance_of Deck, deck
  end

  def test_rank_at_index
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card1, card2, card3])
    
    assert_equal deck.rank_of_card_at(0), card1.value
    assert_equal deck.rank_of_card_at(1), card2.value
    assert_equal deck.rank_of_card_at(2), card3.value
  end

  def test_remove_card

  end

  def test_add_card
  end

  def test_high_ranking
  end

  def test_percent_high_ranking
  end
end