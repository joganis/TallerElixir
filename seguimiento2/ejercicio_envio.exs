# Ejercicio 6: Cálculo del Costo de Envío de un Paquete


defmodule EjercicioEnvio do
  import Util

  def ejecutar() do
    # Pedir datos del cliente
    cliente = input("Ingrese el nombre del cliente:", :string)
    peso = input("Ingrese el peso del paquete (kg):", :float)
    tipo_envio = input("Ingrese el tipo de envío (Económico/Express/Internacional):", :string)

    # Validar peso
    if peso <= 0 do
      show_message("Error: El peso debe ser mayor a 0.")
    else
      # Calcular costo usando diferentes estructuras de control
      costo_total = calcular_costo_envio(tipo_envio, peso)

      # Crear tupla de resultado
      resultado_tupla = {cliente, peso, tipo_envio, costo_total}

      # Formatear costo
      costo_formateado = formatear_precio(costo_total)

      # Mostrar resultado
      resultado = """
      Cliente: #{cliente}
      Peso: #{:erlang.float_to_binary(peso, decimals: 2)} kg
      Tipo de envío: #{tipo_envio}
      Costo total: $#{costo_formateado}
      Tupla resultado: #{inspect(resultado_tupla)}
      """

      show_message(resultado)

      # Retornar la tupla
      resultado_tupla
    end
  end

  # Función que usa if, cond y case con pattern matching
  defp calcular_costo_envio(tipo_envio, peso) do
    tipo_normalizado = String.downcase(String.trim(tipo_envio))

    # Usando case con pattern matching
    case tipo_normalizado do
      tipo when tipo in ["económico", "economico"] ->
        calcular_costo_economico(peso)

      "express" ->
        calcular_costo_express(peso)

      "internacional" ->
        calcular_costo_internacional(peso)

      _ ->
        show_message("Tipo de envío no reconocido. Aplicando tarifa económica.")
        calcular_costo_economico(peso)
    end
  end

  # Costo económico usando operación simple
  defp calcular_costo_economico(peso) do
    peso * 5_000
  end

  # Costo express usando operación simple
  defp calcular_costo_express(peso) do
    peso * 8_000
  end

  # Costo internacional usando if y cond
  defp calcular_costo_internacional(peso) do
    # Usando if para la condición principal
    if peso <= 5 do
      peso * 15_000
    else
      # Usando cond para manejar diferentes rangos si fuera necesario
      cond do
        peso > 5 and peso <= 10 ->
          peso * 12_000
        peso > 10 ->
          # Para paquetes muy pesados, aplicar descuento adicional
          peso * 10_000
        true ->
          peso * 12_000
      end
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
EjercicioEnvio.ejecutar()
