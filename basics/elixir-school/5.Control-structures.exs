# control structure in elixir, if, if-else, unless, case, cond and with

# IF

if String.valid?("Hello") do
  "Valid string!"
else
  "Invalid string!"
end
|> IO.inspect()

# if else as variable

valid =
  if String.valid?("Hello there") do
    "It's a Valid string!"
  else
    "Invalid string!"
  end

IO.inspect(valid)

if "a string" do
  "Truthy!"
end
|> IO.inspect()

# UNLESS
# its like an if-else but negative way

unless is_integer("term") do
  "Not an Integer"
end
|> IO.inspect()

# Case
# for matching multiple pattern
case {:ok, "Hello world"} do
  {:ok, result} -> result
  {:error, reason} -> reason
  _ -> "Catch all!"
end
|> IO.inspect()

case {:error, "this is the reason"} do
  {:ok, result} -> result
  {:error, reason} -> reason
  _ -> "Catch all!"
end
|> IO.inspect()

# _ variable is important inclusion on case statements, without it, the statement will throw an error
# case :even do
#   :odd -> "odd"
# end
# |> IO.inspect

case :even do
  :odd -> "Odd"
  _ -> "Even!"
end
|> IO.inspect()

# consider _ as the else that will match everything else.

# case, pattern matching and pin operator
pie = 3.14

case "cherry pie" do
  # if we remove ^, it act like new binding pie with "Not so tasty"
  ^pie -> "Not so tasty"
  pie -> "I bet #{pie} is tasty"
end
|> IO.inspect()

# case also support guards
case {1, 2, 3} do
  {1, x, 3} when x > 0 -> "Will match"
  _ -> "Not match!"
end
|> IO.inspect()

# Cond
# cond actually similar with if else in other programming language

cond do
  2 + 2 == 5 -> "will not gonna happen"
  2 * 2 == 6 -> "nor this"
  1 + 1 == 2 -> "but this will"
end
|> IO.inspect()

# its good if we always close the cond with true value
cond do
  7 + 1 != 8 -> "Incorrect"
  true -> "Catch all!"
end
|> IO.inspect()

# With
# with used for nested Case statement

user = %{first: "sean", last: "Callan"}

with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last),
     do:
       (last <> ", " <> first)
       |> IO.inspect()

opts = %{width: 10, height: 15}

with {:ok, width} <- Map.fetch(opts, :width),
     {:ok, height} <- Map.fetch(opts, :height) do
  {:ok, width * height}
end
|> IO.inspect()

# If all clauses match, the do block is executed, returning its result. Otherwise
# the chain is aborted and the non-matched value is returned:

opts = %{width: 10}

with {:ok, width} <- Map.fetch(opts, :width),
     {:ok, height} <- Map.fetch(opts, :height) do
  {:ok, width * height}
end
|> IO.inspect()

# with can be used in pattern matching as well
users = %{"melany" => "guess", "bob" => "admin"}

with {:ok, role} when not is_binary(role) <- Map.fetch(users, "bob") do
  {:ok, to_string(role)}
end
|> IO.inspect()

import Integer

m = %{a: 1, c: 3}

a =
  with {:ok, number} <- Map.fetch(m, :a),
       true <- is_even(number) do
    IO.puts("#{number} divided by 2 is #{div(number, 2)}")
    :even
  else
    :error ->
      IO.puts("We don't have this item in map")
      :error

    _ ->
      IO.puts("It is odd")
      :odd
  end

IO.inspect(a)
