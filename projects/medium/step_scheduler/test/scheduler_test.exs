defmodule SchedulerTest do
  use ExUnit.Case
  doctest Scheduler

  test "lists steps in order with large data set" do
    assert Scheduler.series("input.txt") == "HPDTNXYLOCGEQSIMABZKRUWVFJ"
  end

  test "lists steps in order with small data set" do
    assert Scheduler.series("input_small.txt") == "CABDFE"
  end


end
