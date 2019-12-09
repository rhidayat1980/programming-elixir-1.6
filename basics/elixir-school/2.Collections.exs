# Collections: List, Tuples, Keyword lists and maps

# Lists

list = [1, 2, 3, 4, "hello", :ok, %{a: "A", b: "B"}]
IO.inspect(list)

# prepending List is fast
["new" | list]
|> IO.inspect()

# appending list is slow
[list | "new"]
|> IO.inspect()

# List concatenation

(list ++ ["Cherry"])
|> IO.inspect()

(["Gumgun"] ++ list)
|> IO.inspect()

# List substraction

(["foo", :bar, 42] -- ["foo"]) |> IO.inspect()

([1, 2, 2, 3, 2, 3] -- [1, 2, 32]) |> IO.inspect()

# List substraction uses strict operator as default

([2] -- [2.0]) |> IO.inspect()
([2.0] -- [2.0]) |> IO.inspect()

# Head and tail

my_list = [3.14, :pie, "Apple"]

hd(my_list) |> IO.inspect()
tl(my_list) |> IO.inspect()

[head | tail] = my_list
IO.inspect(head)
IO.inspect(tail)

# Tuples

my_tuples = {3.14, :pie, "Apple"}

{a, b, c} = my_tuples

IO.inspect(a)
IO.inspect(b)
IO.inspect(c)

elem(my_tuples, 0) |> IO.inspect()
elem(my_tuples, 1) |> IO.inspect()
elem(my_tuples, 2) |> IO.inspect()
# elem(my_tuples, 3) |> IO.inspect # will throw an error for non existing tuples element

{:error, status} = File.read("`pwd`/basics/2.Collections.exs")

IO.inspect(:error)
IO.inspect(status)

# Keywordlists
# keys are atom, keys are ordered, keys dont have to be unique

my_kw = [foo: "bar", hello: "world"]
my_kw |> IO.inspect()

Keyword.delete(my_kw, :foo) |> IO.inspect() # Keyword.delete only delete one key
Keyword.delete(my_kw, :foo, "bar") |> IO.inspect()
Keyword.drop([a: 1, b: 2, b: 3, c: 3, a: 5], [:b, :d]) |> IO.inspect
Keyword.equal?([a: 1, b: 2], [a: 1, c: 3]) |> IO.inspect
Keyword.fetch(my_kw, :boom) |> IO.inspect
Keyword.fetch(my_kw, :hello) |> IO.inspect
Keyword.fetch!(my_kw, :hello) |> IO.inspect

Keyword.get(my_kw, :hello) |> IO.inspect



# Maps

IO.puts "Map operation"

my_map = %{:foo => "bar", :hello => "world"}

my_map |> IO.inspect()

my_map[:foo] |> IO.inspect()
my_map[:hello] |> IO.inspect()

Map.delete(my_map, :foo) |> IO.inspect()
Map.delete(my_map, :hello) |> IO.inspect()

# return an empty Map
Map.drop(my_map, [:foo, :hello]) |> IO.inspect()

Map.drop(%{a: 1, b: 2, c: 3}, [:b, :c])
|> IO.inspect()

Map.equal?(%{a: 1, b: 2, c: 3}, %{c: 3, b: 2, a: 1}) |> IO.inspect()

key = "hello"
%{key => "world"} |> IO.inspect

%{:foo => "bar", :foo => "Hello world"} |> IO.inspect

IO.inspect(%{foo: "bar", hello: "world"} == %{:foo => "bar", :hello => "world"})

# if the map key is an atom
IO.inspect(my_map.foo)
IO.inspect(my_map.hello)

# if the map key is not an atom
 my_new_map = %{"one" => 1, "two" => 2, "three" => 3}
 IO.inspect(my_new_map["one"])
 IO.inspect(my_new_map["two"])
 IO.inspect(my_new_map["three"])

# update an existing key

IO.inspect(%{my_new_map | "one" => 10})

# create new key
IO.inspect(Map.put(my_new_map, "four", 4 ))

# but if the key is exist then Map.put will update that key

IO.inspect(Map.put(my_new_map, "one", 1))

IO.inspect(my_new_map)

