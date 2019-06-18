defmodule ValidateUrlTest do
  use ExUnit.Case
  doctest ValidateUrl

  test "checks for non urls" do
    url = "restful"
    assert ValidateUrl.validate_uri("restful") == {:error, URI.parse(url)}
  end

  test "checks for url with no scheme" do
    url = "google.com"
    assert ValidateUrl.validate_uri(url) == {:error, URI.parse(url)}
  end

  test "checks for url with no host" do
    url = "https://"
    assert ValidateUrl.validate_uri(url) == {:error, URI.parse(url)}
  end

  test "checks for real url" do
    url = "https://google.com"
    assert ValidateUrl.validate_uri(url) == {:ok, URI.parse(url)}
  end
end
