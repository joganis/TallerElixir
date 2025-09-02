# Ejercicio 3: Conversión de Unidades de Temperatura


defmodule EjercicioTemperatura do
  import Util

  def ejecutar() do
    # Pedir datos del usuario
    nombre = input("Ingrese su nombre:", :string)
    celsius = input("Ingrese la temperatura en °C:", :float)

    # Realizar conversiones
    fahrenheit = celsius_a_fahrenheit(celsius)
    kelvin = celsius_a_kelvin(celsius)

    # Mostrar resultado con 1 decimal de precisión
    resultado = """
    #{nombre}, la temperatura es:
    - #{:erlang.float_to_binary(fahrenheit, decimals: 1)} °F
    - #{:erlang.float_to_binary(kelvin, decimals: 1)} K
    """

    show_message(resultado)
  end

  # Función para convertir Celsius a Fahrenheit
  defp celsius_a_fahrenheit(celsius) do
    (celsius * 9 / 5) + 32
  end

  # Función para convertir Celsius a Kelvin
  defp celsius_a_kelvin(celsius) do
    celsius + 273.15
  end
end

# Ejecutar el ejercicio
EjercicioTemperatura.ejecutar()
