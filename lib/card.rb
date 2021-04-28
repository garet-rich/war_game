class Card
    def initialize(suit, value, rank)
        @suit = suit
        @value = value
        @rank = rank
    end

    def suit()
        return @suit
    end

    def value()
        return @value
    end

    def rank()
        return @rank
    end
end