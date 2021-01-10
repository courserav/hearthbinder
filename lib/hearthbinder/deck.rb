require 'json'

class Hearthbinder::Deck

    attr_accessor :deck_name, :deck_class, :deck_format, :year, :cards
    

    def initialize(deck_name = nil, deck_class = nil, deck_format = nil, year = nil, cards = [])
        @name = deck_name
        @class = deck_class
        @format = deck_format
        @year = year
        @cards = cards
    end

end