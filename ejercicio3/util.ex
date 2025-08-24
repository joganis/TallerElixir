defmodule Util do
  @moduledoc """
  Utility module for employee salary calculations and Java GUI interaction.
  """

  @doc """
    Displays a message using a Java dialog.
  """
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Respuesta", message])
  end

  @doc """
    Prompts the user for input using a Java dialog and returns the input.
  """
  def input_data(prompt) do
    {output, _} = System.cmd("java", ["-cp", ".", "Respuesta", "input", prompt])
    String.trim(output)
  end

  @doc """
    Calculates net salary for an employee.
    - Base hours: 160
    - Overtime rate: 125% (1.25x)
    - Returns a simple message with the net salary
  """
  def calcular_salario_neto(nombre, horas_trabajadas, valor_por_hora) do
    horas_base = 160
    factor_extra = 1.25

    {salario_base, horas_extra, pago_extra} =
      if horas_trabajadas > horas_base do
        horas_extra = horas_trabajadas - horas_base
        salario_base = horas_base * valor_por_hora
        pago_extra = horas_extra * valor_por_hora * factor_extra
        {salario_base, horas_extra, pago_extra}
      else
        salario_base = horas_trabajadas * valor_por_hora
        {salario_base, 0, 0}
      end

    salario_neto = salario_base + pago_extra

    # Mensaje simple
    if horas_extra > 0 do
      "Empleado: #{nombre} - Salario Neto: $#{format_number(salario_neto)} (#{format_number(horas_extra)} horas extra incluidas)"
    else
      "Empleado: #{nombre} - Salario Neto: $#{format_number(salario_neto)} (sin horas extra)"
    end
  end

 
  defp format_number(number) when is_float(number) do
    :io_lib.format("~.2f", [number]) |> to_string()
  end

  defp format_number(number) when is_integer(number) do
    Integer.to_string(number)
  end
end
