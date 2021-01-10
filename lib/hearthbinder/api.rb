require 'uri'
require 'net/http'
require 'openssl'

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
        
        @response = http.request(request)
        if @response["access-control-allow-credentials"] == "true"
            return true
        else
            return nil
        end
    end
    
    def build_deck
        if self.connect_api == true
            puts "Please paste your entire code copied directly from the Hearthstone Client or a third-party website."
            deck_code = gets
            deck_array = deck_code.split("#")
            puts deck_array
        end
    end
end