defmodule Bottles do
  def sing(upper, lower) do
    Enum.map(upper..lower, fn(bottle) ->
      case bottle do
      0 ->
        IO.puts(
        """
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
        """
        )
      1 ->
        IO.puts(
        """
        #{bottle} bottle of beer on the wall, #{bottle} bottle of beer.
        Take one down and pass it around, no more bottles of beer on the wall.
        """
        )
      2 ->
        IO.puts(
        """
        #{bottle} bottles of beer on the wall, #{bottle} bottles of beer.
        Take one down and pass it around, #{bottle-1} bottle of beer on the wall.
        """
        )
      _ ->
        IO.puts(
        """
        #{bottle} bottles of beer on the wall, #{bottle} bottles of beer.
        Take one down and pass it around, #{bottle-1} bottles of beer on the wall.
        """
        )
      end
    end)
  end
end
