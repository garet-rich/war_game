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