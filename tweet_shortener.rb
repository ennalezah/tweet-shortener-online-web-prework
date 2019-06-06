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

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    short_tweet = word_substituter(tweet)
  end
  puts short_tweet
end

def selective_tweet_shortener(tweet)
  if tweet.char.size > 140
      word_substituter(tweet)
    else
      tweet
  end 
end

def shortened_tweet_truncator(tweet)
end