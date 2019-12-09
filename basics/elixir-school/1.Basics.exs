IO.inspect(2 + 2)

IO.inspect(2 + 3 == 5)

IO.inspect(3 + 3.0 == 6)

IO.inspect(3 + 3.0 === 6)

IO.puts(String.length("The quick brown fox jump over the lazy dog"))
IO.puts(String.reverse("The quick brown fox jump over the lazy dog"))


# Basics data types

# Integers
1 |> IO.inspect

# binary, octal and hexadecimal

0b0110 |> IO.inspect

0o644 |> IO.inspect

0x1F |> IO.inspect

# Floats

3.14 |> IO.inspect

1.0e-10 |> IO.inspect

# Booleans

true |> IO.inspect

false |> IO.inspect

# Atoms

:foo |> IO.inspect
:bar |> IO.inspect

:nil |> IO.inspect

IO.inspect(true === :true)

IO.inspect(:nil === nil)

IO.inspect(:foo == :bar)

IO.inspect(is_atom(:foo))
IO.inspect(is_atom(:nil))
IO.inspect(is_atom(:true))
IO.inspect(is_atom(true))

IO.inspect(is_atom(MyApp.MyModule)) # module name actually is atom too

IO.inspect(:crypto.strong_rand_bytes(3))

# Strings

"Hello" |> IO.puts

"dziękuję" |> IO.puts

# string support line breaks and escape sequence

string = "Hello\nworld"
string |> IO.inspect
string |> IO.puts

IO.puts ""

# Basics Operations

# Arithmetic

IO.puts "Basics Operations"

2 + 2 |> IO.inspect

2- 1 |> IO.inspect

2 * 5 |> IO.inspect

10 / 5 |> IO.inspect

div(10,3) |> IO.inspect # integer result

rem(10, 3) |> IO.inspect

IO.puts ""

# Boolean

IO.puts "Boolean operation"

IO.inspect(-20 || true)
IO.inspect(false || 42)
IO.inspect(42 && true)
IO.inspect(42 && nil)
IO.inspect(!42)
IO.inspect(!false)
IO.inspect(!:true)

IO.inspect(true and false)
IO.inspect(false or true)
IO.inspect(not false)
IO.inspect(not :true)

IO.puts ""

# Comparison operator

IO.puts "Comparison operator"
IO.inspect(1 > 2)
IO.inspect(1 != 2)
IO.inspect(2 == 2.0)
IO.inspect(2 === 2.0)

# you can compare two different types in elixir
# number < atom < reference < function < port < pid < tuple < map < list < bitstring

IO.puts "Comparing types in elixir"

IO.inspect(:hello > 999)
IO.inspect({:hello, :world} > [1,2,3])

# String interpolation

name = "Sean"
"hello #{name}" |> IO.puts

# String concatenation

"Hello " <> name |> IO.puts
