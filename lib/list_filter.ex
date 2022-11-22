defmodule ListFilter do
  require Integer

  def call(list) do
    Enum.reduce(list, 0, fn (x, accumulator) ->
      case check_is_num(x) do
        true -> accumulator = accumulator + 1
        _ -> nil

        accumulator
      end
    end)
  end

  def check_is_num(string) do
    case Integer.parse(string) do
      {int, _} -> Integer.is_odd(int)
      _ -> false
    end
  end
end
