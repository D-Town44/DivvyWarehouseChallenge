# DivvyMain.exs
# Author: Daniel Willeitner
#
# This script reads 2 or more integer inputs from the user, uses then as
#   coordinate pairs and calculates the warehouse id for each pair.
#
# Notes:
#   1. All inputs are paired up with the given integer before and after it.
#      If there inputs are given, A, B, C, then 2 coordinate pairs would be:
#      (A, B), (C, D).
#   2. All leading and trailing whitespace is removed from input so '7' and
#      '   7   ' both translate to the integer value 7
#   3. Any non integer value is interpreted as a 0
#   3. Output for each pair is displayed as: "({x coordinate}, {y coordinate}): {warehouse id}"

require InputUtils
require DivvyChallenge

IO.puts("Welcome to DivvyMain.exs by Daniel Willeitner!\nPlease Input integer coordinate values. Enter a '0' when you are done:")
input_list = InputUtils.read_all_inputs()
x_coords = Enum.drop(input_list, -1)
y_coords = Enum.drop(input_list, 1)
coord_pairs = List.zip([x_coords, y_coords])

Enum.each(coord_pairs, fn coord_pair -> IO.puts( "(#{elem(coord_pair, 0)}, #{elem(coord_pair, 1)}): #{DivvyChallenge.get_warehouse_id_by_coords(coord_pair)}" ) end)