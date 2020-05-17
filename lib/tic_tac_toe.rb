class TicTacToe
  WIN_COMBINATIONS = [[0,1,2][3.4.5][6,7,8][0,3,6][1,4,7][2,5,8][0,4,8][2,4,6]]
  def initialize
    @board = Array.new(9, " ")
  end
  def display_board
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  def input_to_index(i)
    return i - 1
  end
  def move(i, token = "X")
    @board[i] = token
  end
  def position_taken?(i)
    if @board[i] != " "
      return true
    else
      return false
    end
  end
  def valid_move?(i)
    if i <= 0 && i >= 8 && !position_taken?(i)
      return true
    else
      return false
    end
  end
  def turn()
    
  end
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
end