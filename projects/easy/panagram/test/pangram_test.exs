defmodule PangramTest do
  use ExUnit.Case
  doctest Pangram

  test "checks for panagram phrase" do
    assert Pangram.is_pangram("The quick brown fox jumps over the lazy dog") == true
  end

  test "checks for panagram phrase with puctuation" do
    assert Pangram.is_pangram("The quick brown ,fox jumps over the lazy dog.") == true
  end

  test "validates non panagrams" do
    assert Pangram.is_pangram("eleven") == false
  end
end
