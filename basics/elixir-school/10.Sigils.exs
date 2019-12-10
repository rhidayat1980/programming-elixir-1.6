# A list of available sigils include:
#   ~C Generates a character list with no escaping or interpolation
#   ~c Generates a character list with escaping and interpolation
#   ~R Generates a regular expression with no escaping or interpolation
#   ~r Generates a regular expression with escaping and interpolation
#   ~S Generates a string with no escaping or interpolation
#   ~s Generates a string with escaping and interpolation
#   ~W Generates a word list with no escaping or interpolation
#   ~w Generates a word list with escaping and interpolation
#   ~N Generates a NaiveDateTime struct

# A list of delimiters include:

#   <...> A pair of pointy brackets
#   {...} A pair of curly brackets
#   [...] A pair of square brackets
#   (...) A pair of parentheses
#   |...| A pair of pipes
#   /.../ A pair of forward slashes
#   "..." A pair of double quotes
#   '...' A pair of single quotes

single_char = ~C(this is a charlist containing 'single' quotes)
IO.inspect single_char

single_char = ~C(this is a charlist containing #{1+1} quotes)
IO.inspect single_char

single_char = ~c(this is a charlist containing 'single' quotes)
IO.inspect single_char

single_char = ~c(this is a charlist containing #{1+ 1} quotes)
IO.inspect single_char

lang = "Elixir"
string = ~S(hello there from #{lang} n00b)
IO.inspect(string)

string = ~s(hello there from #{lang} n00b)
IO.inspect(string)

regex_example = ~R(aiueo)
IO.inspect(regex_example)

String.match?(string, regex_example) |> IO.inspect

list_of_world = ~W(we are the n00b elixir programmers)
IO.inspect(list_of_world)
Enum.count(list_of_world) |> IO.inspect
