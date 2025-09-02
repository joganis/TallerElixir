defmodule Main do
  def main() do
    nombre = Util.input_data("Ingrese el nombre del empleado:")
    horas_str = Util.input_data("Ingrese las horas trabajadas:")
    valor_hora_str = Util.input_data("Ingrese el valor por hora:")

    Validar y convertir strings a números
    horas = parse_float(horas_str)
    valor_hora = parse_float(valor_hora_str)

    if horas != nil and valor_hora != nil do
      # Calcular salario neto y generar mensaje
      mensaje = Util.calcular_salario_neto(nombre, horas, valor_hora)

      # Mostrar resultado
      Util.show_message(mensaje)
    else
      Util.show_message("Error: Por favor ingrese números válidos para horas y valor por hora.")
    end
  end

  # Función para convertir string a float de manera segura
  defp parse_float(""), do: nil
  defp parse_float(str) do
    case Float.parse(str) do
      {float_val, _} -> float_val
      :error -> nil
    end
  end
end

Main.main()
