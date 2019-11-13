defmodule DivvyChallenge do
  @moduledoc """
    Module to finding the warehouse ID of an (x, y) coordinate of an item in the Divvy warehouse
  """
  @moduledoc since: "1.0.0"
  @moduledoc authors: ["dwilleitner"]

  require Integer

  @doc"""

    Assuming the Divvy warehouse stacking pattern, calculates the unique ID of the item located a (x_coord, y_coord)

    For example, using the picture of the Divvy warehouse pattern below, the item at (2, 3) would have ID of 8

      | 11
      | 7 12
      | 4 8 13
      | 2 5 9 14
      | 1 3 6 10 15

  ## Parameters

    -x_coord: integer value of x coordinate of an item
    -y_coord: integer value of y coordinate of an item

  ## Examples

    iex> DivvyChallenge.get_warehouse_id_by_coords({1, 1})
      1

    iex> DivvyChallenge.get_warehouse_id_by_coords({1, 2})
      2

    iex> DivvyChallenge.get_warehouse_id_by_coords({2, 2})
      5

    iex> DivvyChallenge.get_warehouse_id_by_coords({3, 1})
      6

  """
  def get_warehouse_id_by_coords({x_coord, y_coord}) do
    top_of_diagonal = get_top_of_diagonal_id({x_coord, y_coord})
    top_of_diagonal_id = get_warehouse_id_of_top_of_diagonal(top_of_diagonal)
    get_warehouse_id_for_coord_from_top_of_diagonal_id({x_coord, top_of_diagonal_id})
  end


  @doc"""

    Assuming the Divvy warehouse stacking pattern, calculates the unique ID of the item at the top of the diagonal
    that contains item (x_coord, y_coord)

    For example, returns the ID of items in this column that is in a diagonal with point (x_coord, y_coord):

        |
        V
      | 11
      | 7 12
      | 4 8 13
      | 2 5 9 14
      | 1 3 6 10 15
        ^
        |

  ## Parameters

    -x_coord: integer value of x coordinate of an item
    -y_coord: integer value of y coordinate of an item

  ## Examples

    iex> DivvyChallenge.get_top_of_diagonal_id({1, 1})
      1

    iex> DivvyChallenge.get_top_of_diagonal_id({1, 2})
      2

    iex> DivvyChallenge.get_top_of_diagonal_id({2, 1})
      2

    iex> DivvyChallenge.get_top_of_diagonal_id({2, 3})
      7

  """
  def get_top_of_diagonal_id({x_coord, y_coord}) do
    x_diff = x_coord - 1
    y_coord + x_diff
  end


  @doc"""

    Assuming the Divvy warehouse stacking pattern, calculates the unique ID of the item located a (1, y_coord)

    For example, returns the ID of items in this column:

        |
        V
      | 11
      | 7 12
      | 4 8 13
      | 2 5 9 14
      | 1 3 6 10 15
        ^
        |
  ## Parameters

    -y_coord: integer value of y coordinate of an item touching the left wall

  ## Examples

    iex> DivvyChallenge.get_warehouse_id_of_top_of_diagonal(1)
      1

    iex> DivvyChallenge.get_warehouse_id_of_top_of_diagonal(2)
      2

    iex> DivvyChallenge.get_warehouse_id_of_top_of_diagonal(4)
      4

    iex> DivvyChallenge.get_warehouse_id_of_top_of_diagonal(7)
      7

  """
  def get_warehouse_id_of_top_of_diagonal (y_coord) do
    # if odd  id = (y-1/2) * y + 1
    # if even id = (y-1/2) * y + (y/2) + 1
    id = ((Kernel.div(y_coord - 1, 2)) * y_coord ) + 1
    if Integer.is_even(y_coord) do
      id + Kernel.div(y_coord, 2)
    else
      id
    end
  end


  @doc"""

    Assuming the Divvy warehouse stacking pattern, calculates the unique ID of the item located in column x_coord and
    in the diagonal with the top item having ID top_of_diagonal_id

    For example, it find the ID of the item at (2, 3) x_coord would be 2 and top_of_diagonal_id would be 7

      | 11
      | 7 12
      | 4 8 13
      | 2 5 9 14
      | 1 3 6 10 15

  ## Parameters

    -x_coord: integer value of x coordinate of an item
    -top_diagonal_id: integer value of the left most item in the diagonal

  ## Examples

    iex> DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({1, 1})
      1

    iex> DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({2, 2})
      3

    iex> DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({2, 4})
      5

    iex> DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({3, 4})
      6

  """
  def get_warehouse_id_for_coord_from_top_of_diagonal_id ({x_coord, top_of_diagonal_id}) do
    x_diff = x_coord - 1
    top_of_diagonal_id + x_diff
  end

end