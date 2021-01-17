module Hearthbinder

    class CLI

        def call
            puts "Welcome to HearthBinder."
            start
        end

        def start
            puts "\n"
            puts "For this service, you will need an api key from RapidAPI. You can get one by creating an account at 'rapidapi.com'.\n"
            puts "For more details, please refer to the README.\n\n"
        
            deck = Hearthbinder::API.new.connect_api #gets api key from user.


        loop do
            puts "\nPlease select your option, by number: "
            puts "1 - Paste New Deck"
            puts "2 - View Deck"
            puts "3 - Sort Alphabetically"
            puts "4 - Show Curve"
            puts "5 - Show Legendaries"
            puts "6 - Close Program\n\n"

            choice = gets.strip

            case choice

                when "1"
                    puts "\n"
                    deck = Hearthbinder::API.new.build_deck

                when "2"
                    puts "\nDeck name: #{deck.name}"
                    puts "Class: #{deck.class}"
                    puts "Format: #{deck.format}"
                    puts "Year: #{deck.year}"
                    print "Cards: \n"
                    deck.cards

                when "3"
                    puts "\n"
                    deck.sort_abc

                when "4"
                    puts "\n"
                    deck.show_curve

                when "5"
                    puts "\n"
                    deck.show_info

                when "6"
                    exit

                else
                    puts "\nNot a valid choice."
                end
            end

        end

    end

end