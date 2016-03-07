def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  ([string] * times).join(" ")
end

def start_of_word(string, n)
  string[0...n]
end

def first_word(s)
  s.split(" ").first
end

def titleize(string)
    words = string.split.map do |word|
      if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
