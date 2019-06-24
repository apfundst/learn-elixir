defmodule Fizzbuzz.Solution do
  @moduledoc """
  Documentation for Fizzbuzz.
  """

  def run(list) do
    list
    |> Enum.map(fn x -> parse(x) end)
  end

  def parse(num) do
    {result, _} =
      {"", num}
      |> add_fizz()
      |> add_buzz()

    case result do
      "" -> num
      _ -> result
    end
  end

  def add_fizz({entry, num}) do
    case rem(num, 3) do
      0 -> {entry <> "Fizz", num}
      _ -> {entry, num}
    end
  end

  def add_buzz({entry, num}) do
    case rem(num, 5) do
      0 -> {entry <> "Buzz", num}
      _ -> {entry, num}
    end
  end
end
