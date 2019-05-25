defmodule SchedulerSolution do
  @moduledoc """
  Documentation for Scheduler.
  """

  def series(input) do
    steps = File.read!(input)
    parsed_input = parse_input(steps)
    non_dependent_queue = non_dependent_steps(parsed_input)
    process(parsed_input, non_dependent_queue, [])
    |> List.to_string()
  end

  def process(_, [], result), do: result

  def process(list, non_dependent_queue, result \\ []) do
    item_to_process = first_item(non_dependent_queue)
    new_result = result ++ [item_to_process]

    new_non_dependent_queue =
      dequeue(non_dependent_queue, item_to_process) ++
        newly_nondependent_steps(list, item_to_process, result)

    process(list, new_non_dependent_queue, new_result)
  end

  def parse_input(input) do
    input
    |> String.split("\n")
    |> Enum.filter(fn x -> x != "" end)
    |> Enum.map(&capture_line/1)
  end

  def capture_line(line) do
    capture =
      Regex.named_captures(
        ~r/(?<bar>Step.)(?<first>.)(?<baz> must be finished before step )(?<second>.)/,
        line
      )

    {capture["first"], capture["second"]}
  end

  def first_item(list) do
    Enum.sort(list) |> Enum.at(0)
  end

  def non_dependent_steps(list) do
    all_steps(list) -- dependent_steps(list)
  end

  def dependent_steps(list) do
    Enum.reduce(list, [], fn {a, b}, acc -> [b] ++ acc end) |> Enum.uniq()
  end

  def all_steps(list) do
    Enum.reduce(list, [], fn {a, b}, acc -> [a, b] ++ acc end) |> Enum.uniq()
  end

  def dequeue(list, item) do
    Enum.filter(list, fn x -> x != item end)
  end

  def newly_nondependent_steps(list, item_to_process, results) do
    potential_nondependents = all_dependents_of_an_item(item_to_process, list)

    Enum.filter(potential_nondependents, fn x ->
      all_dependencies = all_dependencies_of_an_item(x, list)
      Enum.all?(all_dependencies, fn x -> Enum.member?(results ++ [item_to_process], x) end)
    end)
  end

  def all_dependencies_of_an_item(item, list) do
    Enum.reduce(list, [], fn {a, b}, acc ->
      case b == item do
        true -> [a | acc]
        false -> acc
      end
    end)
  end

  def all_dependents_of_an_item(item, list) do
    Enum.reduce(list, [], fn {a, b}, acc ->
      case a == item do
        true -> [b | acc]
        false -> acc
      end
    end)
  end
end

# Mostly copied from https://github.com/ddresselhaus/advent_of_code_2018/blob/master/lib/advent_of_code/day_07.ex
# We worked on it together, but my version of the code was on a loaner.
