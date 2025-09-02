defmodule Util do
  @moduledoc """
  Utility module for displaying messages and input using Java dialogs.
  """

  @doc """
  Displays a message using a Java dialog.
  """
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  @doc """
  Prompts the user for input using a Java dialog and returns the input as string.
  """
  def input_data(prompt) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", prompt])
    |> elem(0)
    |> String.trim()
  end

  @doc """
  Prompts the user for input with type validation using Java dialog.
  """
  def input(message, :string) do
    input_data(message)
  end

  def input(message, :integer) do
    try do
      message
      |> input_data()
      |> String.to_integer()
    rescue
      ArgumentError ->
        show_message("Error: Entrada no es un número entero válido.")
        input(message, :integer)
    end
  end

  def input(message, :float) do
    try do
      message
      |> input_data()
      |> String.to_float()
    rescue
      ArgumentError ->
        show_message("Error: Entrada no es un número decimal válido.")
        input(message, :float)
    end
  end

  def input(message, type) when type == :float do
    input(message, :float)
  end
end
