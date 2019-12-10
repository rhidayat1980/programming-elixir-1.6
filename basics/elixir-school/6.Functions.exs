# Functions

# private function

sum = fn a, b -> a + b end

sum.(2, 3) |> IO.puts()

# the shorthand

sum = &(&1 + &2)

sum.(10, 4) |> IO.puts()

# pattern matching on function

handle_result = fn
  {:ok, result} -> IO.puts("Handle result")
  {:ok, _} -> IO.puts("This will be never run as previous will be matched beforehand")
  {:error} -> IO.puts("An error has occured!")
end

result = 10
handle_result.({:ok, result}) |> IO.inspect()

# Named function

# defmodule Greeter do
#   def hello(name) do
#     "Hello, " <> name
#   end
# end

# Greeter.hello("Sean") |> IO.puts

# if the function body only spans one line, we can shorten it further with , do:

defmodule Greeter do
  def hello(name), do: "Hello, " <> name
end

Greeter.hello("david") |> IO.puts()

# recursion on named function

defmodule Length do
  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
end

Length.of([]) |> IO.inspect()
Length.of([1, 2, 3, 4]) |> IO.inspect()
Length.of(["sorry", "i", "have", "to", "go", 2, {:ok, "me"}]) |> IO.inspect()

# Function naming and arity

defmodule Greeter2 do
  def hello(), do: "Hello anonymous person!"
  def hello(name), do: "Hello, " <> name
  def hello(name1, name2), do: "Hello #{name1} and #{name2}"
end

Greeter2.hello() |> IO.inspect()
Greeter2.hello("Vandame") |> IO.inspect()
Greeter2.hello("jet li", "Batman") |> IO.inspect()

# function and pattern matching

defmodule Greeter1 do
  def hello(%{name: person_name}), do: IO.puts("Hello, " <> person_name)
end

fred = %{
  name: "Fred",
  age: 29,
  favorite_color: "blue"
}

Greeter1.hello(fred) |> IO.puts()

# but what happen if we call the function with a map that doesn't contain the :name key?

wati = %{
  age: 30,
  favorite_color: "green"
}

# Greeter1.hello(wati) |> IO.puts() # we throw an error, since wati doesn't have :name key

defmodule Greeter3 do
  def hello(person = %{name: person_name}) do
    IO.puts("Hello, " <> person_name)
    IO.inspect(person)
  end
end

Greeter3.hello(fred) |> IO.inspect()

# private function

defmodule Greeter4 do
  def hello(name), do: phrase() <> name
  def phrase(), do: "Hello, "
end

Greeter4.hello("James") |> IO.inspect()

# Guards

defmodule GreeterGuards do
  def hello(names) when is_list(names) do
    names
    |> Enum.join(",")
    |> hello
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase(), do: "Hello, "
end

GreeterGuards.hello(["Paul", "Diana", "Randy"]) |> IO.inspect()

# Default arguments

defmodule GreeterDefault do
  def hello(name, language \\ "en") do
    phrase(language) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
  defp phrase(_), do: "Selamat, "
end

GreeterDefault.hello("Jean", "en") |> IO.inspect()
GreeterDefault.hello("Monica", "es") |> IO.inspect()
GreeterDefault.hello("muh", "") |> IO.inspect()
GreeterDefault.hello("muh") |> IO.inspect()

# handling default argument and multiple matching

defmodule Greeter5 do
  def hello(names, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello(language_code)
  end

  def hello(name, language_code) when is_binary(name) do
    phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
  defp phrase(_), do: "Selamat, "
end

Greeter5.hello(["Sean", "danny"], "en") |> IO.inspect()
Greeter5.hello("Sandy", "en") |> IO.inspect()
Greeter5.hello(["Adriano", "Ronaldo"], "es") |> IO.inspect()
Greeter5.hello("Abdullah") |> IO.inspect() # kenapa bukan Selamat, Abdullah ?
