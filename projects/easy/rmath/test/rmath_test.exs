defmodule RmathTest do
  use ExUnit.Case
  doctest Rmath

  test "calculates a factorial" do
    assert Rmath.factorial(4) == 24
    assert Rmath.factorial(7) == 5040
  end
  test "erorrs factorial on non integers" do
    assert Rmath.factorial(4.0) == :error
  end
  test "calculates a fibonacci number" do
    assert Rmath.fibonacci(9) == 34
    assert Rmath.fibonacci(0) == 0
    assert Rmath.fibonacci(1) == 1
    assert Rmath.fibonacci(2) == 1
    assert Rmath.fibonacci(3) == 2
  end
  test "erorrs fibonacci on non integers" do
    assert Rmath.fibonacci(4.0) == :error
  end
end
