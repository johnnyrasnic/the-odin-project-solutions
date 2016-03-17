
module TicTacToe
  class Game
    def initialize
      @board = [1,2,3,4,5,6,7,8,9]
      @moves = 9
      play(Player.new(self, :X), Player.new(self, :O))
    end

    def draw
      i = 0
      puts "~" * 80
      while i < 7
        puts " #{@board[i]} | #{@board[i + 1]} | #{@board[i + 2]} "
        if i != 6
          puts "------------"
        end
        i += 3
      end
      puts "~" * 80
    end

    def mark_space(space, mark)
      @moves -= 1
      @board[space] = "#{mark}"
    end

    def valid_space?(space)
      @board[space].class == Fixnum
    end

    def play(p1, p2)
      current_player = p1
      begin
        current_player.choose_space
        current_player = current_player == p1 ? p2 : p1
      end until complete?
      if @win
        draw
        puts "Player #{current_player == p1 ? 2 : 1} wins!"
      else
        puts "It's a draw!"
      end
    end

    def complete?
      if check_win
        @win = true
        return true
      end

      @moves == 0
    end

    def check_win
    if  (@board[0] == @board[1] && @board[0] == @board[2]) ||
        (@board[3] == @board[4] && @board[3] == @board[5]) ||
        (@board[6] == @board[7] && @board[6] == @board[8]) ||
        (@board[0] == @board[3] && @board[0] == @board[6]) ||
        (@board[1] == @board[4] && @board[1] == @board[7]) ||
        (@board[2] == @board[5] && @board[2] == @board[8]) ||
        (@board[2] == @board[4] && @board[2] == @board[6]) ||
        (@board[0] == @board[4] && @board[0] == @board[8])
        return true
      end
    end
  end

  class Player
    def initialize(game, mark)
      @mark = mark
      @game = game
    end

    def choose_space
      @game.draw
      puts "What space do you want to fill?"
      space = gets.chomp.to_i - 1
      until @game.valid_space?(space)
        puts "Not a valid space. Please select a different space."
        space = gets.chomp.to_i
      end
      @game.mark_space(space, @mark.to_s)
    end
  end
end

TicTacToe::Game.new.play
