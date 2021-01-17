require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class Hearthbinder::API

    def connect_api
        url=URI("https://omgvamp-hearthstone-v1.p.rapidapi.com/cards")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
        puts "Please put in your api key."
        api_key = gets.strip

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-key"] = api_key
        request["x-rapidapi-host"] = 'omgvamp-hearthstone-v1.p.rapidapi.com'
        
        response = http.request(request)
        @@data = JSON.parse(response.body)

        puts "Connecting..."
        puts "If your deck input is not accepted, please restart the program and put in a valid API key."
        self.build_deck
    end
    
    def build_deck
        puts "Please paste your entire code copied directly from the Hearthstone Client or a third-party website."
        
        deck_code = nil
        code_array = []

        #Cleaning the user input -start.
        loop do
            deck_code = gets.strip
            code_array << deck_code
            break if deck_code == "# To use this deck, copy it to your clipboard and create a new deck in Hearthstone"
        end

        code_array.map! do |line|
            line.delete('#')
        end
        
        code_array.map! do |line|
            if line.include?("Class:")
                line.sub!("Class: ", "")
            elsif line.include?("Format:")
                line.sub!("Format: ", "")
            else
                line
            end
        end

        code_array.map! do |line|
            line[0] = ""
            line
        end
        #Cleaning user input -end.

        i = 5
        cards = []
        while code_array[i] != ""       
            card_line = []
            card_line = code_array[i].split(" ", 3)

            @@data.each do |set, card_array|
                card_array.each do |attribute, value|
                    if attribute["name"] == card_line[2] && attribute["cost"] == card_line[1].delete("()").to_i && attribute["collectible"] == true
                        cards << attribute
                        if card_line[0].delete("x").to_i == 2
                            cards << attribute
                        end
                    end
                end
            end
            #puts card_line[1].delete("()").to_i
            i += 1
        end

        made_deck = Hearthbinder::Deck.new(code_array[0], code_array[1], code_array[2], code_array[3], cards)
        return made_deck
    end
end