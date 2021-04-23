# 1. Display the initial empty 3x3 board
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

require 'pry'

STARTING_PLAYER = 'Choose'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagonals

player_victories = 0
computer_victories = 0

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=",", connective='or')
  newStr = ""
  arr.each_with_index do |item, index|
    if arr.length == 1
      newStr += "#{item}"
    elsif index == (arr.length - 1)
      newStr += "#{connective} #{item}"
    else
      newStr += "#{item}#{delimiter} "
    end
  end
  return newStr
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    if empty_squares(brd).include?(square)
      break
    else
      prompt "Sorry, that's not a valid choice."
    end
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd, marker)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2 && brd.values_at(*line).count(INITIAL_MARKER) >= 1
      return line.select { |num| brd[num] == INITIAL_MARKER }.first
    end
  end
  nil
end

def computer_places_piece!(brd)
  if find_at_risk_square(brd, COMPUTER_MARKER) # chance to win
    square = find_at_risk_square(brd, COMPUTER_MARKER)
  elsif find_at_risk_square(brd, PLAYER_MARKER) # chance to defend
    square = find_at_risk_square(brd, PLAYER_MARKER)
  elsif brd[5] == INITIAL_MARKER
    square = 5
  else
    square = empty_squares(brd).sample # random selection
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

loop do
  board = initialize_board

  if STARTING_PLAYER == "Choose"
    loop do
      prompt "Please pick who goes first: 'c' for computer, 'p' for player."
      response = gets.chomp
      if response.downcase.start_with?('c')
        STARTING_PLAYER = "Computer"
        break
      elsif response.downcase.start_with?('p')
        STARTING_PLAYER = "Player"
        break
      else
        prompt "Invalid response. Please try again"
      end
    end
  end

  loop do

    if STARTING_PLAYER == "Computer"
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      display_board(board)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    else
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      display_board(board)
    end
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    if detect_winner(board) == 'Player'
      player_victories = player_victories + 1
    elsif detect_winner(board) == 'Computer'
      computer_victories = computer_victories + 1
    end
  else
    prompt "It's a tie!"
  end

  prompt "SCORES: "
  prompt "Player: #{player_victories}"
  prompt "Computer: #{computer_victories}"

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
