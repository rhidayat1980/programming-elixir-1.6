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
