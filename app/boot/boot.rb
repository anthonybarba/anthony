require "facebook/messenger"

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    if message.text.include? "Bonjour"
        message.reply(text: "Bonjour Monsieur")
    if message.text.include? "Bonne nuit"
        message.reply(text: "Dors bien")
    if message.text.include? "comment vas tu ?"
        message.reply(text: "très bien et vous")
    else
        message.reply(text: 'Reponse par defaut')
     end
end
