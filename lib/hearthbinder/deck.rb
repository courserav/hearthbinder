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

    def name
        @name
    end

    def class
        @class
    end

    def format
        @format
    end

    def year
        @year
    end

    def cards
        i = 1
        @cards.each do |hash|
            hash.each do |key, value|
                if key == "name"
                    print "name: #{value} "
                elsif key == "cost"
                    puts "cost: #{value}".center(20)
                end
            end
        end
                
    end

    def sort_abc
        sorted = @cards.sort_by {|hash| hash["name"]}
        sorted.each do |hash|
            puts hash["name"]
        end
    end

    def show_curve
        curve = []
        @cards.each do |hash|
            hash.each do |key, value|
                if key == "cost"
                    curve << value
                end
            end
        end

        i = 0
        while i <= 10
            puts "#{i}: #{curve.count(i)}"
            i += 1
        end

    end

    def show_info
        legendary = []
        legendary = @cards.collect{|hash| "#{hash["name"]} - #{hash["cardSet"]}" if hash["rarity"] == "Legendary"}
        puts "Legendaries:"
        puts legendary.reject{|element| element.to_s.empty?}
    end
end