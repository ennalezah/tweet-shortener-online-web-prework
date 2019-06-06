def dictionary
  convert = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
    tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word.replace(dictionary[word])
      else
        word
      end  
    end.join(" ")
end

# def bulk_tweet_shortener(tweets)
#   tweets.each do |tweet|
#     new_tweet = word_substituter(tweet)
#     puts new_tweet
#   end
# end

def bulk_tweet_shortener(tweets_array)
  tweets_array.collect do |tweet|
    puts word_substituter(tweet)
  end
end 

# def selective_tweet_shortener(tweet)
#   if tweet.
# end

# def shortened_tweet_truncator(tweet)
# end