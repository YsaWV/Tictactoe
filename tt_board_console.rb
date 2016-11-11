require_relative 'board_tt.rb'
require_relative 'human_player.rb'

class Console_game

    attr_accessor :board, :player_1

    def initialize
        @board = Board.new
        @player_1 = Console_human.new("X")
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

        #{@player_1.marker} it is your turn
        """
    end

    def get_move
        player_1.get_move(board.grid)
    end

    def make_move(move)
        board.update(move, player_1.marker)
    end

end

game = Console_game.new()

game.draw_board

move = game.get_move
game.make_move(move)
game.draw_board