d1 = Date.new(2018, 12, 15)
IO.inspect d1

{:ok, d1} |> IO.inspect

~D[2018-12-15] |> IO.inspect

d2 = ~D[2018-12-15]
d2 |> IO.inspect

IO.puts d1 == d2


Time.utc_now() |> IO.inspect

Time.to_string(Time.utc_now) |> IO.inspect

now = Time.utc_now()
now.hour |> IO.inspect
now.minute |> IO.inspect
now.second |> IO.inspect

day = DateTime.utc_now()
day |> IO.inspect

day.day |> IO.inspect

{:ok, date} = Date.new(2020, 12, 12)
IO.inspect date

Date.day_of_week(date) |> IO.inspect

Date.leap_year?(date) |> IO.inspect
