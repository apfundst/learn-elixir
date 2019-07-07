defmodule Rmath.Solution do
  def factorial(0), do: 1
  def factorial(num) when is_integer(num) and num > 0 do
    num * factorial(num - 1)
  end
  def factorial(_), do: :error


  def fibonacci(n) when is_integer(n), do: fib(n, 1, 1)
  def fibonacci(_), do: :error
  defp fib(0, _, _), do: 0
  defp fib(1, a, _), do: a

  defp fib(n, a, b), do: fib(n - 1, b, a + b)
end
