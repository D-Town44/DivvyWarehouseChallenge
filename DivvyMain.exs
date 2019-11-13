
require InputUtils
require DivvyChallenge

input_list = InputUtils.read_all_inputs()
x_coords = Enum.drop(input_list, -1)
y_coords = Enum.drop(input_list, 1)
coord_pairs = List.zip([x_coords, y_coords])
IO.inspect(coord_pairs)

Enum.each(coord_pairs, fn coord_pair -> IO.puts( "(#{elem(coord_pair, 0)}, #{elem(coord_pair, 1)}): #{DivvyChallenge.get_warehouse_id_by_coords(coord_pair)}\n" ) end)