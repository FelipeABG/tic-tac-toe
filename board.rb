class Board
    attr_reader :combos

    def initialize
        @positions = [1,2,3,4,5,6,7,8,9]
        @combos = [
            [1,2,3],
            [4,5,6],
            [7,8,9], 
    
            [1,4,7],
            [2,5,8],
            [3,6,9], 
    
            [1,5,9],
            [3,5,7] 
        ]
    end

    def display
        puts "
        #{@positions[0]} | #{@positions[1]} | #{@positions[2]}
       ---+---+---
        #{@positions[3]} | #{@positions[4]} | #{@positions[5]}
       ---+---+---
        #{@positions[6]} | #{@positions[7]} | #{@positions[8]}
        "
   end

    def update_display(symbol, position)
        @positions[position - 1] = symbol
    end

    def check_for_winner(moves)
        
    end

    def clear_display
        if Gem.win_platform?
          system("cls")  
        else
          system("clear") 
        end
      end
    
end