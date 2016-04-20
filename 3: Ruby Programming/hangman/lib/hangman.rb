require 'csv'

class Game
  def initialize
    @word = select_word
    @chances = 9
    @hidden_word =  "_" * @word.length + "\n"
    play
  end

  def play
    check_chances
    draw
    get_input
    if @word.include?(@input)

    end
  end

  def draw
    puts "#{@chances} chances left, the word is #{@hidden_word}"
  end

  def select_word
    dictionary = File.readlines("5desk.txt")
    word = dictionary.sample.to_s
  end

  def get_input
    print "Please enter one character: "
    @input = gets.chomp
    if @input.length != 1
      puts "You can only input one character"
      get_input
    end
  end

  def check_chances
    if @chances == 0
      lose
    end
  end

  def lose
    puts "You lost! The word was #{word}. New game initializing"
    initialize
  end
end

g = Game.new
