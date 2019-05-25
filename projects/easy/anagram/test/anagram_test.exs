defmodule AnagramTest do
  use ExUnit.Case
  doctest Anagram

  test "checks for anagram word" do
    assert Anagram.is_anagram("restful", "fluster") == true
  end

  test "checks for anagram phrase" do
    assert Anagram.is_anagram("eleven plus two", "twelve plus one") == true
  end

  test "validates non anagrams" do
    assert Anagram.is_anagram("eleven", "twelve") == false
  end
end
