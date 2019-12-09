# Pattern matching

x = 1 |> IO.inspect()

1 = x |> IO.inspect()

# 2 = x |> IO.inspect # because the value on left didn't match with x = 1

# List

list = [1, 2, 3, 4, 5]

[1, 2, 3, 4, 5] = list

# [] = list |> IO.inspect # error because the left is [], expect [1,2,3,4,5]

[1 | tail] = list

tail |> IO.inspect()

[head | tail] = list

head |> IO.inspect()
tail |> IO.inspect()

# [2 | _] = list |> IO.inspect # again it will throw an error

[1 | [a, b, c, d]] = list |> IO.inspect()

# desctructure

IO.inspect(a)
IO.inspect(b)
IO.inspect(c)
IO.inspect(d)

# Tuples

{:ok, value} = {:ok, :successful!}
IO.inspect(value)

# {:ok, value} = {:error}
# IO.inspect(value)
# will throw an error

# pin operator

x = 1

# ^x = 2
# |> IO.inspect
# will give an error because x = 1

{x, ^x} = {1, 1} |> IO.inspect()

IO.inspect(x)

greeting = "hello"

greet = fn
  ^greeting, name -> "Hi #{name}"
  greeting, name -> "#{greeting} #{name}"
end

greet.("hello", "sean") |> IO.inspect()
greet.("morning", "sean") |> IO.inspect()

greeting |> IO.inspect()
