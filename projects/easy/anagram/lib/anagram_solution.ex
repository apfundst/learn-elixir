defmodule AnagramSolution do
  @moduledoc """
  Documentation for Anagram.
  """

  def is_anagram(word1, word2) do
    sort_letters(word1) == sort_letters(word2)
  end

  defp sort_letters(string) do
    string
    |> String.downcase()
    |> String.codepoints()
    |> Enum.sort()
  end
end
