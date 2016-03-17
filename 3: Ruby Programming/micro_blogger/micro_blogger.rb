require 'jumpstart_auth'

class MicroBlogger
  attr_reader :client

  def initialize
    puts "Initializing MicroBlogger"
    @client = JumpstartAuth.twitter
  end

  def tweet(message)
    if message > 140
      puts "Error: Tweet too long"
      break
    else
      @client.update(message)
    end
  end
end

blogger = MicroBlogger.new
blogger.tweet("MicroBlogger Initialized")
