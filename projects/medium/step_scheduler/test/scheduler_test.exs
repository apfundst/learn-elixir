defmodule AnagramTest do
  use ExUnit.Case
  doctest Scheduler

  test "checks for anagram word" do
    assert Scheduler.series() == true
  end

end
