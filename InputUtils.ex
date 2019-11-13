defmodule InputUtils do
  @moduledoc """
    Utils provides utility functions for reading standard in inputs
  """
  @moduledoc "1.0.0"

  @doc """
    Reads an input line from standard in.
    Trims any whitespace and tries to convert it an integer value.
    Will exit with error message if given a not integer input
    If user inputs a non numeric value, treats the value as a 0 value
  """
  def get_numeric_input() do
    raw_input = IO.gets("")
    trimmed_input = Regex.replace(~r/\s/, raw_input, "")
    try do
      {int_input, other} = Integer.parse(trimmed_input)
      int_input
    rescue
      e in MatchError -> IO.puts("Sorry, input wasn't numeric. Please try again\n")
                         0
    end
  end

  @doc """
    Recursively reads numeric input from the user until a 0 is inputted
  """
  def read_all_inputs() do
    all_inputs = get_next_input( [] )
    IO.puts("Done with read_all_inputs")
    IO.inspect(all_inputs)
    IO.puts(all_inputs)
    all_inputs
  end

  @doc """
    recursive helper function to get another input line from the user
  """
  defp get_next_input( working_tuple ) do
    IO.puts("Starting get_next_input")
    #    IO.puts(working_tuple)
    int_input = get_numeric_input()
    IO.puts("got #{int_input}\n")
    if (int_input != 0) do
      get_next_input(working_tuple ++ [int_input])
    else
      working_tuple
    end
  end
end