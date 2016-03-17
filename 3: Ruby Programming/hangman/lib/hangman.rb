require 'csv'

class Game
  @@dictionary = './5desk.txt'

  def initialize
    @words = File.readlines(@@dictionary)
    @answer = select_word(4..12)
    @chances = 9
    @word = Array.new(@answer.length, '_')
    puts "Welcome to Hangman!"
    play
  end

  def play
    loop do
      puts @word
      guess = get_input
      if @answer.include?(guess)
        @secret_word.split('').each_with_index do |i, j|
            @word[j] = i if i == guess
          end
      else
        @misses << guess unless @misses.include?(guess)
        @chances -= 1
      end

      if is_complete?
        congrats
        break
      end
    end

  end

  def load(file)

  end

  def save(file)

  end

  def get_input
    print "Your guess: "
    input = "#{gets.chomp.downcase}"
    if input.length != 1
      puts "Sorry, can only accept one letter. Please try again."
      get_input
    else
      puts "Your guess is: #{input}"
    end
  end

  def is_complete?
    if @word == @answer
      return true
    end
  end

  def select_word(range)
    begin
      @answer = @words[rand(@words.length)]
    end until range.include?(@answer.length)
  end

  def congrats
    puts
  end

end

g = Game.new
puts g.secret_word
