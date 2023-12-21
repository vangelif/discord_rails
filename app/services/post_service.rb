class PostService
    def initialize(post, url)
        @post = post
        @url = url
    end

    def call
        message = "A new post hs been created!\n\nTitle: #{@post[:title]}\n\n#{@post[:body]}\n\n#{@url}"
        Bot.send_message(ChannelID, message)
    end
end