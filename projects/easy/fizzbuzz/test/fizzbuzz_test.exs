defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "works" do
    assert Fizzbuzz.run(1..20) == [
             1,
             2,
             "Fizz",
             4,
             "Buzz",
             "Fizz",
             7,
             8,
             "Fizz",
             "Buzz",
             11,
             "Fizz",
             13,
             14,
             "FizzBuzz",
             16,
             17,
             "Fizz",
             19,
             "Buzz"
           ]
  end
end
