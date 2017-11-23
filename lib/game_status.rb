# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # left column
  [1,4,7],  # middle column
  [2,5,8],  # right column
  [0,4,8],  # left diagonal
  [2,4,6]  # right diagonal
]

def won? (board)
 WIN_COMBINATIONS.each do |win_combination|
   win_index_1 = win_combination[0]
   win_index_2 = win_combination[1]
   win_index_3 = win_combination[2]

   position_1 = board[win_index_1]
   position_2 = board[win_index_2]
   position_3 = board[win_index_3]

       if [position_1, position_2, position_3].all? {|symbol| symbol == "X"} ||
           [position_1, position_2, position_3].all? {|symbol| symbol == "O"}
          return win_combination
        else
          win_combination.each do |position|
            if position_taken?(win_combination, position)
              false
            end
        end
      end
    end
  end
