defmodule SeriesTest do
  use ExUnit.Case
  doctest Series

  test "sums values in file" do
    assert Series.read("input.txt") == 486
  end
end
