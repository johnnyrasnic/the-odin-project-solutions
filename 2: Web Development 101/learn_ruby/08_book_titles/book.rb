class Book
    attr_reader :title
    def title=(string)
        cap_str=[]
        lowercase = ["the", "of", "and", "a", "to", "at", "an", "over", "in", "as", "but", "by", "for", "on", "up", "nor", "or"]
        cap_str = string.downcase.split(' ')
        cap_str.each do |word|
            if !lowercase.include?(word)
                word.capitalize!
            end
            cap_str[0].capitalize!
        end
        @title = cap_str.join(' ')
    end

end
