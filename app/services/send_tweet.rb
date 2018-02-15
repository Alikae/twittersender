class SendTweet
  def initialize(str)
    @str = str
  end

  def log_in_to_twitter
    Dotenv.load
    return client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TCK']
      config.consumer_secret     = ENV['TCS']
      config.access_token        = ENV['TAT']
      config.access_token_secret = ENV['TAS']
    end
  end

  def send_tweet(client)
    client.update(@str)
  end

  def perform
    send_tweet(log_in_to_twitter)
  end
end
