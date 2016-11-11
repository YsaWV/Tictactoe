
require_relative 'board_tt.rb'
    # require_relative 'console_random_ai.rb'
    # require_relative 'console_sequential_ai.rb'
    # require_relative 'unbeatable_ai.rb'

class Console_game

    attr_accessor :board 
    # :player_1, :player_2, :current_player

    def initialize
        @board = Board.new
        # @player_1 = Console_human.new("X")
        # @player_2 = who_plays
        # @current_player = player_2
    end

    def draw_board
        puts """
        Let's get started!
        
        Sample board with numbers:
        
         1 | 2 | 3 
        ---+---+---
         4 | 5 | 6 
        ---+---+---
         7 | 8 | 9 
        
        
        Game Board:
        
         #{board.grid[0]} | #{board.grid[1]} | #{board.grid[2]}
        ---+---+---
         #{board.grid[3]} | #{board.grid[4]} | #{board.grid[5]}
        ---+---+---
         #{board.grid[6]} | #{board.grid[7]} | #{board.grid[8]}

      
        """
    end
end

game = Console_game.new()

game.draw_board