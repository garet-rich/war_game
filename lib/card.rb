class Card
    def initialize(suit, rank, value)
        @suit = suit
        @rank = rank
        @value = value
    end

    def suit()
        return @suit
    end

    def rank()
        return @rank
    end

    def value()
        return @value
    end
end

test1 = Card.new(:heart, 'Jack', 11)