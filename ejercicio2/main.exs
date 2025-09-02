defmodule Main do
  def main() do
    Util.input_data("Escriba una palabra")
    |> Util.string_length()
    |> Util.show_message()
  end
end

Main.main()
 