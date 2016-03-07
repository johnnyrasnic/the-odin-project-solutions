def caesar_shift(input_str, shift)
  new_string = ""
  input_str.each_char do |char|
    shift.times do
    if char == "z"
      char == "a"
      next
    elsif
      char == "Z"
      char = "A"
      next
    end
    char.next!
    if char == "%"
      char = " "
    end
  end
  new_string += char
end
puts new_string
end
caesar_shift("What a string!", 5)
