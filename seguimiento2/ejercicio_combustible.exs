# Ejercicio 1: Cálculo de Consumo de Combustible


defmodule EjercicioCombustible do
  import Util

  def ejecutar() do
    # Pedir datos del conductor
    nombre = input("Ingrese el nombre del conductor:", :string)
    distancia = input("Ingrese la distancia recorrida (km):", :float)
    litros = input("Ingrese la cantidad de combustible consumido (litros):", :float)

    # Validar que los litros no sean cero
    if litros == 0 do
      show_message("Error: La cantidad de combustible no puede ser cero.")
    else
      # Calcular rendimiento
      rendimiento = distancia / litros

      # Mostrar resultado con 2 decimales
      resultado = """
      Conductor: #{nombre}
      Distancia recorrida: #{:erlang.float_to_binary(distancia, decimals: 2)} km
      Combustible consumido: #{:erlang.float_to_binary(litros, decimals: 2)} litros
      Rendimiento: #{:erlang.float_to_binary(rendimiento, decimals: 2)} km/L
      """

      show_message(resultado)
    end
  end
end

# Ejecutar el ejercicio
EjercicioCombustible.ejecutar()
