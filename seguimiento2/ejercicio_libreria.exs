# Ejercicio 2: Control de Inventario de una Librería


defmodule EjercicioLibreria do
  import Util

  def ejecutar() do
    # Pedir datos del libro
    titulo = input("Ingrese el título del libro:", :string)
    cantidad = input("Ingrese la cantidad de unidades disponibles:", :integer)
    precio_unitario = input("Ingrese el precio unitario:", :float)

    # Validar que la cantidad y precio sean positivos
    if cantidad < 0 or precio_unitario < 0 do
      show_message("Error: La cantidad y el precio deben ser valores positivos.")
    else
      # Calcular valor total
      valor_total = cantidad * precio_unitario

      # Formatear el precio para mostrar con separadores de miles
      valor_formateado = formatear_precio(valor_total)

      # Mostrar resultado
      resultado = """
      El libro "#{titulo}" tiene #{cantidad} unidades,
      con un valor total de $#{valor_formateado}.
      """

      show_message(resultado)
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
EjercicioLibreria.ejecutar()
