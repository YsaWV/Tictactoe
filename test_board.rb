require "minitest/autorun"
require_relative 'board_tt.rb'


class TestTTToeBoard < Minitest::Test

    def test_for_board_array_length
        board = Board.new()
        assert_equal(9, board.grid.length)
    
    end
end
