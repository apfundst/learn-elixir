defmodule PangramSolution do
  @moduledoc """
  Documentation for Anagram.
  """

  def is_pangram(phrase) do
    uniq_letters(phrase) == 26
  end

  defp uniq_letters(string) do
    string
    |> String.downcase()
    |> String.replace(~r/[^a-z]/, "")
    |> String.codepoints()
    |> Enum.uniq()
    |> length
  end
end
