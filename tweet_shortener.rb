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
  tweets.split(" ").map do |phrase|
    puts word_substituter(phrase)
  end
end

def selective_tweet_shortener(tweets)
  tweets.split(" ").map do |phrase|
    if phrase.length <= 140
      phrase
    else
      word_substituter(tweet)
    end
  end 
end