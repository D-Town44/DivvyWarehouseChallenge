
ExUnit.start()

defmodule DivvyTest do
  use ExUnit.Case, async: true
  @moduledoc """
    Code to finding warehouse ID of an (x, y) coordinate of an item in the Divvy warehouse
  """
  @moduledoc since: "1.0.0"
  @moduledoc authors: ["dwilleitner"]

  @doc """
  DivvyChallenge.print_warehouse_id_by_coords tests
  """

  test "get_warehouse_id_by_coords(1, 1)" do
    assert DivvyChallenge.get_warehouse_id_by_coords({1, 1}) == 1
  end

  test "get_warehouse_id_by_coords(1, 2)" do
    assert DivvyChallenge.get_warehouse_id_by_coords({1, 2}) == 2
  end

  test "get_warehouse_id_by_coords(2, 1)" do
    assert DivvyChallenge.get_warehouse_id_by_coords({2, 1}) == 3
  end

  test "get_warehouse_id_by_coords(2, 2)" do
    assert DivvyChallenge.get_warehouse_id_by_coords({2, 2}) == 5
  end

  test "get_warehouse_id_by_coords(4, 1)" do
    assert DivvyChallenge.get_warehouse_id_by_coords({4, 1}) == 10
  end

  test "get_warehouse_id_by_coords(1, 4)" do
    assert DivvyChallenge.get_warehouse_id_by_coords({1, 4}) == 7
  end

  test "get_warehouse_id_by_coords(4, 2)" do
    assert DivvyChallenge.get_warehouse_id_by_coords({4, 2}) == 14
  end

  test "get_warehouse_id_by_coords(612, 231)" do
    assert DivvyChallenge.get_warehouse_id_by_coords({612, 231}) == 354673
  end

  test "get_warehouse_id_by_coords(11111, 11111)" do
    assert DivvyChallenge.get_warehouse_id_by_coords({11111, 11111}) == 246886421
  end

  test "get_warehouse_id_by_coords(100000, 100000)" do
    assert DivvyChallenge.get_warehouse_id_by_coords({100000, 100000}) == 19999800001
  end


  @doc """
  DivvyChallenge.get_top_of_diagonal_id tests
  """

  test "get_top_of_diagonal_id(1, 1)" do
    assert DivvyChallenge.get_top_of_diagonal_id({1, 1}) == 1
  end

  test "get_top_of_diagonal_id(1, 2)" do
    assert DivvyChallenge.get_top_of_diagonal_id({1, 2}) == 2
  end

  test "get_top_of_diagonal_id(2, 1)" do
    assert DivvyChallenge.get_top_of_diagonal_id({2, 1}) == 2
  end

  test "get_top_of_diagonal_id(2, 2)" do
    assert DivvyChallenge.get_top_of_diagonal_id({2, 2}) == 3
  end

  test "get_top_of_diagonal_id(1, 3)" do
    assert DivvyChallenge.get_top_of_diagonal_id({1, 3}) == 3
  end

  test "get_top_of_diagonal_id(3, 1)" do
    assert DivvyChallenge.get_top_of_diagonal_id({3, 1}) == 3
  end

  test "get_top_of_diagonal_id(2, 3)" do
    assert DivvyChallenge.get_top_of_diagonal_id({2, 3}) == 4
  end

  test "get_top_of_diagonal_id(1, 4)" do
    assert DivvyChallenge.get_top_of_diagonal_id({1, 4}) == 4
  end

  test "get_top_of_diagonal_id(3, 3)" do
    assert DivvyChallenge.get_top_of_diagonal_id({3, 3}) == 5
  end

  test "get_top_of_diagonal_id(1, 7)" do
    assert DivvyChallenge.get_top_of_diagonal_id({1, 7}) == 7
  end

  test "get_top_of_diagonal_id(4, 5)" do
    assert DivvyChallenge.get_top_of_diagonal_id({4, 5}) == 8
  end


  @doc """
  DivvyChallenge.get_warehouse_id_of_top_of_diagonal tests
  """

  test "get_warehouse_id_of_top_of_diagonal(1)" do
    assert DivvyChallenge.get_warehouse_id_of_top_of_diagonal(1) == 1
  end

  test "get_warehouse_id_of_top_of_diagonal(2)" do
    assert DivvyChallenge.get_warehouse_id_of_top_of_diagonal(2) == 2
  end

  test "get_warehouse_id_of_top_of_diagonal(3)" do
    assert DivvyChallenge.get_warehouse_id_of_top_of_diagonal(3) == 4
  end

  test "get_warehouse_id_of_top_of_diagonal(4)" do
    assert DivvyChallenge.get_warehouse_id_of_top_of_diagonal(4) == 7
  end

  test "get_warehouse_id_of_top_of_diagonal(5)" do
    assert DivvyChallenge.get_warehouse_id_of_top_of_diagonal(5) == 11
  end

  test "get_warehouse_id_of_top_of_diagonal(6)" do
    assert DivvyChallenge.get_warehouse_id_of_top_of_diagonal(6) == 16
  end

  test "get_warehouse_id_of_top_of_diagonal(7)" do
    assert DivvyChallenge.get_warehouse_id_of_top_of_diagonal(7) == 22
  end

  test "get_warehouse_id_of_top_of_diagonal(8)" do
    assert DivvyChallenge.get_warehouse_id_of_top_of_diagonal(8) == 29
  end

  test "get_warehouse_id_of_top_of_diagonal(9)" do
    assert DivvyChallenge.get_warehouse_id_of_top_of_diagonal(9) == 37
  end

  test "get_warehouse_id_of_top_of_diagonal(10)" do
    assert DivvyChallenge.get_warehouse_id_of_top_of_diagonal(10) == 46
  end


  @doc """
  DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id tests
  """

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(1, 1)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({1, 1}) == 1
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(1, 2)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({1, 2}) == 2
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(2, 2)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({2, 2}) == 3
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(2, 4)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({2, 4}) == 5
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(1, 4)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({1, 4}) == 4
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(3, 4)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({3, 4}) == 6
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(3, 7)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({3, 7}) == 9
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(1, 11)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({1, 11}) == 11
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(5, 11)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({5, 11}) == 15
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(2, 11)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({2, 11}) == 12
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(2, 22)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({2, 22}) == 23
  end

  test "get_warehouse_id_for_coord_from_top_of_diagonal_id(4, 22)" do
    assert DivvyChallenge.get_warehouse_id_for_coord_from_top_of_diagonal_id({4, 22}) == 25
  end


end

