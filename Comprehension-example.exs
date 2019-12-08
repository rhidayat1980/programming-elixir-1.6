# comprehension on list

list = [1,2,3,4,5]
for x <- list, do: x * x |> IO.inspect

# comprehension on Keyword lists

for {_key, val} <- [one: 1, two: 2, three: 3] , do: val |> IO.inspect
for {key, _} <- [one: 1, two: 2, three: 3], do: key |> IO.inspect
for {key, val} <- [one: 1, two: 2, three: 3], do: {key, val} |> IO.inspect
for {key, val} <- [one: 1, two: 2, three: 3], do: "#{key}, #{val}" |> IO.inspect

# comprehension on maps

maps = %{"a" => "A", "b" => "B", "c" => "C"}
IO.inspect maps

for {k, v} <- maps, do: {k, v} |> IO.inspect


# comprehension on binaries

for <<c <- "hello" >>, do: <<c>> |> IO.puts


# generators, pattern matching

for {:ok, val} <- [ok: "Hello", error: "Unknown", ok: "world"], do: val
|> IO.inspect

for {:error, val} <- [ok: "hello", error: "Unknown", ok: "world"], do: val
|> IO.inspect


# use comprehension as multiple generators

for n <- list, times <- 1..n do
  String.duplicate("*", times)
end |> IO.inspect

# to get better understanding

for n <- list, times <- 1..n, do: IO.puts "#{n} - #{times}"


# Filters

import Integer

for x <- 1..10, is_even(x), do: x |> IO.inspect
for x <- 1..10, is_odd(x), do: x |> IO.inspect

for x <- 1..100, is_even(x), rem(x,3) == 0, do: x |> IO.inspect


# using Into to transform data from one type to another, only collectable type

a = for {k, v} <- [one: 1, two: 2, three: 3], into: %{}, do: {k, v}

IO.inspect(a)

# since binary are collectable also

b = for c <- [72, 101, 108, 108, 111], into: "", do: <<c>>
IO.inspect(b)
