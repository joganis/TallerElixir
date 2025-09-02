defmodule Main do
  def main() do
    IO.puts("=== Sistema de Entrada con Java ===")
    pedir_texto()
  end

  # Función simple para pedir texto
  def pedir_texto() do
    nombre = "Ingrese su nombre:" |> Util.input()
    IO.puts("Hola #{nombre}!")
  end
#  def pedir_entero()do
#   x=Util.input("ingrese un entero",:integer)
#   Util.show_message("el numero es entero :#{is_integer(x)}")

#  end
#   def pedir_float()do
#   y=Util.input("ingrese un decimal",:float)
#   Util.show_message("el numero es decimal? :#{is_float(y)}")
#  end


#  defp numero_positivo(x) when x>0 ,do: "es positivo"
#  def numero_negativo(x) when x<0 ,do: "es negativo"
#  def numero_cero?(0) ,do: "es cero"

 end
Main.main()
