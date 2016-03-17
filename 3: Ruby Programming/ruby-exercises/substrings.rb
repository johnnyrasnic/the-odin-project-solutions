dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)
  str.downcase!
  counter = {}
  dictionary.each do |word|
    counter[word] = str.scan(word).length unless str.scan(word).length < 1
  end
  puts counter
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
