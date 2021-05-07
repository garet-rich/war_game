require_relative "player"

class Turn
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @spoils_of_war = []
    end

    def player1
        return @player1
    end

    def player2
        return @player2
    end

    def spoils_of_war
        return @spoils_of_war
    end

    def type
        if player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
            return :basic
        elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0) && player1.deck.rank_of_card_at(2) != player2.deck.rank_of_card_at(2)
            return :war
        elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0) && player1.deck.rank_of_card_at(2) == player2.deck.rank_of_card_at(2)
            return :mutually_assured_destruction
        end
    end

    def winner
        if type() == :basic
            if(player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0))
                return player1
            else
                return player2
            end
        elsif type() == :war
            if(player1.deck.rank_of_card_at(2) > player2.deck.rank_of_card_at(2))
                return player1
            else
                return player2
            end
        elsif type() == :mutually_assured_destruction
            return "No Winner"
        end
    end

    def pile_cards
        if type() == :basic
            @spoils_of_war << player1.deck.cards[0]
            player1.deck.remove_card
            @spoils_of_war << player2.deck.cards[0]
            player2.deck.remove_card
        elsif type() == :war
            @spoils_of_war << player1.deck.cards[0]
            player1.deck.remove_card
            @spoils_of_war << player2.deck.cards[0]
            player2.deck.remove_card

            @spoils_of_war << player1.deck.cards[1]
            player1.deck.remove_card
            @spoils_of_war << player2.deck.cards[1]
            player2.deck.remove_card

            @spoils_of_war << player1.deck.cards[2]
            player1.deck.remove_card
            @spoils_of_war << player2.deck.cards[2]
            player2.deck.remove_card
        elsif type() == :mutually_assured_destruction
            player1.deck.remove_card
            player1.deck.remove_card
            player1.deck.remove_card

            player2.deck.remove_card
            player2.deck.remove_card
            player2.deck.remove_card
        end
    end

    def award_spoils(winner)
        @spoils_of_war.each do |item|
            winner.deck.add_card(item)
        end
    end
end