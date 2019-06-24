defmodule ReducerTest do
  use ExUnit.Case
  doctest Reducer

  test "add_one" do
    assert Reducer.run(%{action: 'add_one', number: 2}) == 3
  end
  test "subtract_one" do
    assert Reducer.run(%{action: 'subtract_one', number: 2}) == 1
  end
  test "double" do
    assert Reducer.run(%{action: 'double', number: 2}) == 4
  end
end
