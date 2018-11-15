require 'twitter'

class Twitterthp


def initialize

# quelques lignes qui enregistrent les clés d'APIs
@client = Twitter::REST::Client.new do |config|
config.consumer_key        = Rails.application.credentials.dig(:twitterapikey)
config.consumer_secret     = Rails.application.credentials.dig(:twitterapisecret)
config.access_token        = Rails.application.credentials.dig(:twitteraccesstoken)
config.access_token_secret = Rails.application.credentials.dig(:twitteraccesssecret)
end
end

def chomage
    @client.search('#chomage').take(10).each do |tweet|
    @client.update("@#{tweet.user.screen_name} , Apprend à coder, réalise un site, monte ton projet ou devient développeur c'est possible gratuitement en 3 mois sur http://thehackingproject06.herokuapp.com/")
  end
end

def polemploi
  client.search('#polemploi').take(10).each do |tweet|
  client.update("@#{tweet.user.name} Apprend à coder, réalise un site, monte ton projet ou devient développeur c'est possible gratuitement en 3 mois sur http://thehackingproject06.herokuapp.com/")
 end
end

end
