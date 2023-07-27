require_relative "board"
require_relative "player"

class TicTacToe 
    attr_accessor :player1, :player2, :board

    def initialize
        self.symbol_selection
        self.game_loop
        self.play_again?
    end

    protected

    def symbol_selection
        puts "Welcome to Tic Tac Toe!"
        print "Player 1, please choose your symbol: "
        symbol = gets.chomp.upcase
        self.player1 = Player.new(symbol)
        self.player1.symbol == 'X' ? self.player2 = Player.new('O') : self.player2 = Player.new('X')

    end

    def game_loop
        self.board = Board.new
        self.board.clear_display
        while true
            self.board.display 
            print "Player 1, choose your move (1 to 9):  "
            player1_move = gets.chomp.to_i
            player1.moves.push(player1_move)
            self.board.update_display(self.player1.symbol, player1_move)
            break if self.board.check_for_winner(self.player1.moves, "Player 1")
            self.board.clear_display
            

            self.board.display
            print "Player 2, choose your move (1 to 9):  "
            player2_move = gets.chomp.to_i
            player2.moves.push(player2_move)
            self.board.update_display(self.player2.symbol, player2_move)
            break if self.board.check_for_winner(self.player2.moves, "Player 2" )
            self.board.clear_display
        end
    end

    def play_again?
        print "Play again? (Y/N): "
        answer = gets.chomp.upcase
        if answer == 'Y'
            self.player1.moves = []
            self.player2.moves = []
            self.game_loop
            self.play_again?
        else
            puts "Thanks for playing!"
        end
    end

end

TicTacToe.new
