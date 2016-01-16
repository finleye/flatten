defmodule Flatten do
  def flatten(input), do: _flatten(input)
  defp _flatten([]), do: []
  defp _flatten([head|tail]) when is_list(head) do
    _flatten(head) ++ _flatten(tail)
  end
  defp _flatten([head|tail]), do: [head] ++ _flatten(tail)
end
