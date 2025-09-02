# Ejercicio 4: Cálculo del Salario de un Empleado


defmodule EjercicioSalario do
  import Util

  def ejecutar() do
    # Pedir datos del empleado
    nombre = input("Ingrese el nombre del empleado:", :string)
    salario_base = input("Ingrese el salario base:", :float)
    horas_extras = input("Ingrese las horas extras trabajadas:", :integer)

    # Validar datos
    if salario_base < 0 or horas_extras < 0 do
      show_message("Error: El salario base y las horas extras deben ser valores positivos.")
    else
      # Calcular salario total
      salario_total = calcular_salario_total(salario_base, horas_extras)

      # Formatear el salario
      salario_formateado = formatear_precio(salario_total)

      # Mostrar resultado
      resultado = """
      El salario total de #{nombre} es de $#{salario_formateado}.
      """

      show_message(resultado)
    end
  end

  # Función para calcular el salario total
  defp calcular_salario_total(salario_base, horas_extras) do
    # Asumiendo que el mes tiene aproximadamente 160 horas laborales (20 días x 8 horas)
    valor_hora_normal = salario_base / 160
    valor_hora_extra = valor_hora_normal * 1.5
    pago_horas_extras = horas_extras * valor_hora_extra

    salario_base + pago_horas_extras
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
EjercicioSalario.ejecutar()
