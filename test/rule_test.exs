defmodule RuleTest do
  use ExUnit.Case
  describe "winning_board?/1" do
    test "board horizontal win" do
      new_board = Board.new()
        |> Board.play(Player.new(:x, 1), 1)
        |> Board.play(Player.new(:o, 2), 4)
        |> Board.play(Player.new(:+, 3), 5)
        |> Board.play(Player.new(:x, 1), 2)
        |> Board.play(Player.new(:o, 2), 6)
        |> Board.play(Player.new(:+, 3), 7)
        |> Board.play(Player.new(:x, 1), 3)
        |> Board.play(Player.new(:o, 2), 8)
        |> Board.play(Player.new(:+, 3), 6)
        |> Board.play(Player.new(:x, 1), 4)
      result = Rule.winning_board?(new_board.cells) 
      assert result == true
    end
  end
  
end
