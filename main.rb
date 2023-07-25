class TicTacToe 
    attr_accessor :player1, :player2, :board

    def initialize
        @board = Board.new
        self.game_start

    end


    def game_start
        puts "Welcome to Tic Tac Toe!"
        print "Player 1, please choose your symbol: "
        symbol = gets.chomp.upcase
        self.player1 = Player.new(symbol)

        if self.player1.symbol == "X"
            self.player2 = Player.new("O")
        else
            self.player2 = Player.new("X")
        end
    end
end

class Board
    @@COMBOS = [
        [1,2,3], [4,5,6], [7,8,9], 

        [1,4,7], [2,5,8], [3,6,9], 

        [1,5,9], [3,5,7] 
    ]

    def initialize
        @positions = [1,2,3,4,5,6,7,8,9]
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
        self.display()
    end

end

class Player
    attr_accessor :moves
    attr_reader :symbol
    def initialize(symbol)
        @symbol = symbol
        @moves = []
    end
end 


game = TicTacToe.new