
require "facebook/messenger"
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])


Bot.on :message do |message|
    if message.text.include? "Bonjour"
       message.reply(text: "Salut beauté")
   elsif message.text.include? "Bonne nuit"
        message.reply(text: "Dors bien ma belle")
        else
            message.reply(text: 'Reponse par defaut')
    end
    
end