first_string = "Hello from elixir"

second_string = "Hello from another language"

IO.puts(String.at(first_string, -1))

IO.puts(String.bag_distance(first_string, second_string))

IO.puts(String.capitalize(first_string))

IO.puts(String.chunk(first_string, :valid))

IO.puts(String.chunk(first_string, :printable))

IO.inspect(String.codepoints(first_string))

IO.inspect(String.contains?(first_string, "ello"))

IO.inspect(String.downcase(first_string))

IO.inspect(String.duplicate(first_string, 10))

IO.inspect(String.ends_with?(first_string, "xir"))

IO.inspect(String.equivalent?("Hello", "hello"))

IO.inspect(String.first(first_string))

IO.inspect(String.graphemes(first_string))

IO.inspect(String.jaro_distance(first_string, second_string))

IO.inspect(String.last(first_string))

IO.inspect(String.length(first_string))



new_string = "résumé"
IO.inspect(String.length(new_string)) # 6
IO.inspect(byte_size(new_string)) # 8

IO.inspect(String.ljust(new_string, 10))

IO.inspect(String.pad_trailing(new_string, 15, "123"))

IO.inspect(String.lstrip(new_string))

IO.inspect(String.match?(new_string, ~r/sum/))

IO.inspect(String.module_info())

IO.inspect(String.myers_difference(first_string, second_string))

IO.inspect(String.next_codepoint(new_string))

IO.inspect(String.next_grapheme(new_string))

IO.inspect(String.next_grapheme_size(new_string))

IO.inspect(String.normalize(new_string, :nfd))

IO.inspect(String.pad_leading(new_string, 15, " "))

IO.inspect(String.pad_trailing(new_string, 15, " "))

IO.inspect(String.printable?(new_string, :infinity))

IO.inspect(String.replace(new_string, "", "-", global: true))

IO.inspect(String.replace_leading(new_string, new_string, "resume"))

IO.inspect(String.replace_prefix(new_string, "", "my "))

IO.inspect(String.replace_suffix(new_string, "", " is good"))

IO.inspect(String.replace_trailing("Hello world", "world", "mars"))

IO.inspect(String.reverse(new_string))

IO.inspect(String.valid?(new_string))
IO.inspect(String.upcase(new_string))


# string sigils
string_sigils = ~s(this is a string with "double" quotes, not a 'single' quaotes)
IO.inspect(string_sigils)
