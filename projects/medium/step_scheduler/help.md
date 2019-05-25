# Help

## Docs

Elixir has an extensive library for dealing with data types like [Strings](https://hexdocs.pm/elixir/String.html#content) and [Lists](https://hexdocs.pm/elixir/List.html#content). Some common functions for dealing with list like data are under [Enum](https://hexdocs.pm/elixir/Enum.html#content).  You may also need to look at [Regex](https://hexdocs.pm/elixir/Regex.html#content)

## Implementation

This is a complicated problem.  You need to determine the non dependant steps, execute the first one, then repeat.  You can use pattern matching to know when there are no more dependant steps.  Remeber that Elixir is functional so you will need to pass variables around to keep track of state.