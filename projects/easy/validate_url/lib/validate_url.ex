defmodule ValidateUrl do
  @moduledoc """
  Documentation for ValidateUrl.
  """

  def validate_uri(str) do
    uri = URI.parse(str)

    case uri do
      %URI{scheme: nil} -> :error
      %URI{host: nil} -> :error
      %URI{path: nil} -> :error
      uri -> {:ok, uri}
    end
  end
end
