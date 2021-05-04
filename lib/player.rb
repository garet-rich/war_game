require_relative 'deck'

class Player
    def initialize(deck)
        @deck = deck
    end

    def deck
        return @deck
    end

    def has_lost?
        if @deck.length = 0
            return true
        else
            return false
        end
    end
end