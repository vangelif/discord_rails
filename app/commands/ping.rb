module Ping
    extend Discordrb::Commands::CommandContainer
    Bot.message(content: 'Ping!') do |event|
        event.respond 'Pong message!'
    end

        Bot.command(:ping) do |event|
            event.respond 'Pong command!'
    end
end