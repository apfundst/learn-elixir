defmodule ValidateUrlTest do
  use ExUnit.Case
  doctest ValidateUrl

  test "checks for anagram word" do
    assert ValidateUrl.validate_uri("restful") == :error
  end
end
