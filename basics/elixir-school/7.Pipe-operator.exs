# Pipe Operator

"Elixir Rocks" |> String.split() |> IO.inspect

"Elixir Rocks" |> String.downcase() |> IO.inspect

"Elixir Rocks" |> String.reverse() |> IO.inspect

"Elixir Rocks" |> String.ends_with?("ocks") |> IO.inspect

# pipe operator used for passing function result to the next function
# result |> next_action |> next_action |> next_action
#
