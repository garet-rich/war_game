require_relative 'card'

class Deck
    def initialize(cards)
        @cards = cards
    end

    def cards()
        return @cards
    end

    def rank_of_card_at(index)
        if(@cards[index] != nil)
            return @cards[index].value
        end
    end

    def high_ranking_cards()
        high_cards = []

        @cards.each do |item|
            if item.rank >= 11
                high_cards << (item)
            end
        end

        return high_cards
    end

    def percent_high_ranking()
        high_card_counter = 0

        @cards.each do |item|
            if item.rank >= 11
                high_card_counter += 1
            end
        end
        return (high_card_counter.to_f / @cards.length.to_f).round(4)*100
    end

    def remove_card()
        @cards.shift()
    end

    def add_card(card)
        @cards << card
    end
end