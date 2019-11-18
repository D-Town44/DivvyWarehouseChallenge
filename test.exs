#defmodule Test do
#  @moduledoc false



input_list = Utils.read_all_inputs()
x_coords = Enum.drop(input_list, -1)
y_coords = Enum.drop(input_list, 1)
coord_pairs = List.zip([x_coords, y_coords])
IO.inspect(coord_pairs)

Enum.each(coord_pairs, fn coord_pair -> DivvyChallenge.print_warehouse_id_by_coords(coord_pair) end)
