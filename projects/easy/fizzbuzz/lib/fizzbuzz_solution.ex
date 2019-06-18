defmodule Fizzbuzz.Solution do
  @moduledoc """
  Documentation for Fizzbuzz.
  """

  def run(list) do
    list
    |> Enum.map(fn x -> parse(x) end)
  end

  def parse(num) do
    case {rem(num, 3), rem(num, 5)} do
      {0, 0} -> "FizzBuzz"
      {0, _} -> "Fizz"
      {_, 0} -> "Buzz"
      _ -> num
    end
  end
end
