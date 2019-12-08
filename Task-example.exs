a = Task.async(fn -> 1 + 1 end)
b = Task.await(a, 10)
IO.puts(b)

defmodule Hello do
  def name(name) do
    "hello #{name}"
  end
end

IO.puts(Hello.name("rachmat"))



