class Player
    attr_accessor :moves
    attr_reader :symbol
  def initialize(symbol)
      @symbol = symbol
      @moves = []
      end
  end