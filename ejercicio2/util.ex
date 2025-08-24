defmodule Util do
  @moduledoc """
  Utility module for displaying messages using java.
  """

  @doc """
    Displays a message using a Java dialog.
  """
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Respuesta", Integer.to_string(message)])
  end

  @doc """
    Prompts the user for input using a Java dialog and returns the input.
  """
  def input_data(data) do
    System.cmd("java", ["-cp", ".", "Respuesta", "input", data])
    |> elem(0)
    |> String.trim()
  end

  def string_length(str) do
    String.length(str)
  end

end
