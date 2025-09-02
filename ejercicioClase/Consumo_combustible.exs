defmodule Consumo_combustible do
  def main() do

  nombre_conductor =
    "Ingrese su nombre: "
    |> Util.input()

  distancia_recorrida = Util.input("Ingrese la distancia recorrida en kilometros : ")
  cantidad_combustible =Util.input("Ingrese la cantidad combustible consumidad en litros : ")


  end

  def rendimiento(distancia, litros) do
    distancia/litros
    |>:io.format
  end


end

Consumo_combustible.main()
