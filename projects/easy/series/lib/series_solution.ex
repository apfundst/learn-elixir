defmodule SeriesSolution do
  @moduledoc """
  Documentation for Series.
  """

  def read(path) do
    File.read!(path)
    |> String.split(~r/\n/)
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> Enum.sum()
  end
end
