require 'discordrb'

# Rubocop ignore next line
ChannelID = 1183167355392626700

Bot = Discordrb::Commands::CommandBot.new(
    
    token: Rails.application.credentials.dig(:discord, :token),
    client_id: Rails.application.credentials.dig(:discord, :client_id),
    prefix: '!',
) 
Dir["#{Rails.root}/app/commands/*.rb"].each { |file| require file }
Bot.run(true)

if Bot.connected?
    puts 'Bot is connected to Discord.'
  else
    puts 'Bot is not connected to Discord.'
  end
  
  Bot.ready do |event|
    puts "Bot is ready and connected to Discord as #{event.bot.profile.username}##{event.bot.profile.discriminator}."
  end
  

# Print out the invite URL to the console so the bot account can be invited to the channel. This only has to be done once, afterwards, you can remove this part if you want
puts "Invite URL: #{Bot.invite_url}"

