# Ejercicio 5: Registro de Vehículos en un Peaje


defmodule EjercicioPeaje do
  import Util

  def ejecutar() do
    # Pedir datos del vehículo
    placa = input("Ingrese la placa del vehículo:", :string)
    tipo = input("Ingrese el tipo de vehículo (Carro/Moto/Camión):", :string)
    peso = input("Ingrese el peso del vehículo (toneladas):", :float)

    # Validar peso
    if peso < 0 do
      show_message("Error: El peso no puede ser negativo.")
    else
      # Calcular tarifa según el tipo de vehículo
      tarifa = calcular_tarifa(tipo, peso)

      # Crear tupla de resultado
      resultado_tupla = {placa, tipo, tarifa}

      # Formatear tarifa
      tarifa_formateada = formatear_precio(tarifa)

      # Mostrar resultado
      resultado = """
      Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa_formateada}.
      Tupla resultado: #{inspect(resultado_tupla)}
      """

      show_message(resultado)

      # Retornar la tupla
      resultado_tupla
    end
  end

  # Función para calcular tarifa usando pattern matching
  defp calcular_tarifa(tipo, peso) do
    tipo_normalizado = String.downcase(String.trim(tipo))

    case tipo_normalizado do
      "carro" -> 10_000
      "moto" -> 5_000
      "camión" -> calcular_tarifa_camion(peso)
      "camion" -> calcular_tarifa_camion(peso)
      _ ->
        show_message("Tipo de vehículo no reconocido. Aplicando tarifa de carro.")
        10_000
    end
  end

  # Función específica para calcular tarifa de camión
  defp calcular_tarifa_camion(peso) do
    tarifa_base = 20_000
    if peso > 1.0 do
      toneladas_adicionales = peso - 1.0
      tarifa_adicional = toneladas_adicionales * 2_000
      tarifa_base + trunc(tarifa_adicional)
    else
      tarifa_base
    end
  end

  # Función auxiliar para formatear precios con separadores de miles
  defp formatear_precio(precio) do
    precio
    |> trunc()
    |> Integer.to_string()
    |> String.reverse()
    |> String.codepoints()
    |> Enum.chunk_every(3)
    |> Enum.map(&Enum.join/1)
    |> Enum.join(",")
    |> String.reverse()
  end
end

# Ejecutar el ejercicio
EjercicioPeaje.ejecutar()
