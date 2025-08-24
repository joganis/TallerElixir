# Modulo -> UpperCamelCase
defmodule Secuencial do

  # Funcion publica -> SnakeCase
  def mostrar_mensaje() do
    "Funcion publica"
    |> IO.puts()
  end
end

Secuencial.mostrar_mensaje()
