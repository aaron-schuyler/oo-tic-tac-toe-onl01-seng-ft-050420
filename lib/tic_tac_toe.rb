class TicTacToe
  WIN_COMBINATIONS = [[0,1,2][3.4.5][6,7,8][0,3,6][1,4,7][2,5,8][0,4,8][2,4,6]]
  def initialize
    @board = Array.new(9, " ")
  end
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
    puts "It is #{current_player}'s turn! Enter a number between 1-9 to chose a spot."
    input = gets.chomp.to_i
    index = input_to_index(input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else
      puts "This move is invalid! Enter a number between 1-9 to chose a spot."
    end
  end
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  def won?
    WIN_COMBINATIONS.each do |set|
      if (set.include?("X") && !set.include?("O") && !set.include?(" ")) || (set.include?("O") && !set.include?("X") && !set.include?(" "))
      return set
      break
    end
      
  end
  def full?
    if turn_count == 9
      return true
    else
      return false
    end
  end
  def draw?
    if full? && !won?
      return true
    else
      return false
    end
  end
  def over?
    if won? || draw?
      return true
    else
      return false
    end
  end
  def winner
    if won?
      return @board[won?[0]]
    end
  end
  def play 
    while !over? do
      turn
    end
    if won?
      puts "Player #{winner} has won the game!"
    elsif draw?
      puts "The game is a draw."
    end
  end
end