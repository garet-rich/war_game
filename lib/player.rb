require_relative 'deck'
require_relative 'card'

class Player
    def initialize(name, deck)
        @name = name
        @deck = deck
    end

    def deck
        return @deck
    end

    def name
        return @name
    end

    def has_lost?
        if @deck.cards() == []
            return true
        else
            return false
        end
    end
end

# card1 = Card.new(:diamond, 'Queen', 12)
# card2 = Card.new(:spade, '3', 3)    
# card3 = Card.new(:heart, 'Ace', 14)    
# deck = Deck.new([card1, card2, card3])
# player = Player.new('Clarisa', deck)
# player.name
# player.deck
# player.has_lost?
# player.deck.remove_card
# player.has_lost?