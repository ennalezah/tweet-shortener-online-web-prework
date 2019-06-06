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
    end
    tweet.join(" ")
end

# def word_substituter(tweet)
#     tweet.split(" ").map do |word|
#       if dictionary.keys.include?(word.downcase)
#         tweet.map { |word| word == 4 ? 'Z' : x }
        
#         tweet
#       end 
#     end
#     tweet.join(" ")
# end