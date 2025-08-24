# Modulo -> UpperCamelCase
defmodule Secuencial do

  # Funcion publica-> SnakeCase
  def main() do
    Util.pedir_dato()
    |> Util.mostrar_mensaje()
  end
end

Secuencial.main()
