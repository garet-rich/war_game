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

require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
card1 = Card.new(:heart, 'Jack', 11)
card2 = Card.new(:heart, '10', 10)    
card3 = Card.new(:heart, '9', 9)    
card4 = Card.new(:diamond, 'Jack', 11)    
card5 = Card.new(:heart, '8', 8)    
card6 = Card.new(:diamond, 'Queen', 12)    
card7 = Card.new(:heart, '3', 3)    
card8 = Card.new(:diamond, '2', 2)    
deck1 = Deck.new([card1, card2, card5, card8])    
deck2 = Deck.new([card3, card4, card6, card7])    
player1 = Player.new("Megan", deck1)    
player2 = Player.new("Aurora", deck2)    
turn = Turn.new(player1, player2)    
turn.player1
turn.player2
turn.spoils_of_war
turn.type
winner = turn.winner
turn.pile_cards
turn.spoils_of_war
turn.award_spoils(winner)
player1.deck
player2.deck