class Hearthbinder::CLI

    def call
        puts "Welcome to HearthBinder."
        start
    end

    def start
        puts "\n"
        puts "For this service, you will need an api key from RapidAPI. You can get one by creating an account at 'rapidapi.com'.\n"
        puts "For more details, please refer to the README.\n\n"
        
        loop do 
            connection = Hearthbinder::API.new.connect_api
        
            if connection == true
                puts "\nConnection successful.\n"
                break
            else
                puts "\nConnection unsuccessful. Please try again.\n"
            end
        end

        loop do
            puts "Please select your option, by number: "
            puts "\n1 - Paste Deck"
            puts "\n2 - View Deck"
            puts "\n3 - Sort"
            puts "\n4 - Show Curve"
            puts "\n5 - Show Deck Info\n"

            choice = gets.strip

            case choice

                when "1"
                    
                    Hearthbinder::API.build_deck

                when "2"

                    #show the deck here.

                when "3"

                    puts "Sort by: "
                    puts "\n1 - Alphabetical order"
                    puts "\n2 - Mana"
                    puts "\n "
                
                when "4"

                when "5"

                else
                    puts "Not a valid choice."
                end
            end

        end

    end

 
end