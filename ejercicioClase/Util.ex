defmodule Util do
  # def show_message(message)do
  #  message
  #  |>IO.puts
  # end

   def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje.java", message])
  end


  def input_data(data) do
    System.cmd("java", ["-cp", ".", "Mensaje.java", "input", data])
    |> elem(0)
    |> String.trim()
  end


   def input(message, :integer) when type == :integer do
    message
   |>Util.input_data(:string)
   |>String.to_integer()
  end
#  def input(message, :float)do
#   message
#    |>Util.input(:string)
#    |>String.to_float()

#  end



end
