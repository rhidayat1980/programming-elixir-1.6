# Enum.__info__(:functions) |> Enum.each(fn({function, arity}) ->
#   IO.puts "#{function}/#{arity}"
# end)

# all?
# true if all true

Enum.all?(["helle", "foo", "bar"], fn s -> String.length(s) == 3 end)
|> IO.puts()

Enum.all?(["hello", "foo", "baf"], fn x -> String.length(x) >= 1 end)
|> IO.puts()

# any?
# at least 1 true the return true
Enum.any?(["hello", "foo", "bar"], fn x -> String.length(x) == 3 end)
|> IO.puts()

# chunk_every

list = 1..6 |> Enum.to_list()
IO.inspect(list)

IO.inspect(Enum.chunk(list, 2))

# chunk_by

IO.inspect(Enum.chunk_by(list, fn x -> x > 2 end))

IO.inspect(Enum.chunk_by(["satu", "dua", "tiga", "empat", "lima", "enam"], fn x -> String.length(x) > 3 end))

Enum.chunk_by(["satu", "dua", "tiga", "empat", "lima", "enam"], fn(x) -> String.length(x) end)
|> IO.inspect |> Enum.count() |> IO.inspect

list_string = ["satu", "dua", "tiga", "empat", "lima", "enam"]

IO.inspect(list)
IO.inspect(list_string)

# map

Enum.map(list, fn x -> x + 10 end) |> IO.inspect
Enum.map(list_string, fn x -> x <> " -prefix" end) |> IO.inspect

# map_every
Enum.map_every(list, 3, fn x -> x + 10 end) |> IO.inspect
Enum.map_every(list_string, 3, fn x -> x <> "-prefix" end) |> IO.inspect

# each
Enum.each(list, fn x -> x * 2 end) |> IO.inspect
Enum.each(list_string, fn x -> x <> "-prefix" end) |> IO.inspect

# each is like for loop
Enum.each(list, fn x -> IO.inspect x end) |> IO.inspect

Enum.each(list_string, fn x -> IO.puts x end) |> IO.inspect

# min
Enum.min(list) |> IO.inspect
Enum.min(list_string) |> IO.inspect

list_range = 1..20 |> Enum.to_list()
IO.inspect(list_range)

Enum.min(list_range) |> IO.inspect
Enum.max(list_range) |> IO.inspect

# filter

Enum.filter(list_range, fn x -> rem(x, 3) == 0 end) |> IO.inspect

import Integer

Enum.filter(list_range, fn x -> is_even(x) end) |> IO.inspect
Enum.filter(list_range, fn x -> is_odd(x) end) |> IO.inspect

