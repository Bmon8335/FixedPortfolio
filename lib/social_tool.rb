module SocialTool
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "F2SCIPwssoR3s27FesH5pM3Ae"
      config.consumer_secret     = "TAPYrJx13LBchWQn4HTDIJS7jFpcAMSwVZUnlW2ohC3IPb67d2"
      config.access_token        = "892057974809559040-ElNFb7TU3e8TFaQTEODXSreYfQ8Avpk"
      config.access_token_secret = "jtPLNdI2qhbX65yJkXOi8joaHqlqhUJNRDhQylsosYvit"
    end

    client.search("#coding", result_type: 'recent').take(6).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end
end