numeros = [5, 10, 15, 20, 25]
primero = hd(numeros)
otros = tl(numeros)
IO.puts("El primer elemento es: #{primero}
y los otros son: #{inspect(otros)}")

[a|b] = numeros
primero = a
otros = b
IO.puts("El primer elemento es: #{primero}
y los otros son: #{inspect(otros)}")

nueva_lista = ([0] ++ otros)
IO.puts("La nueva lista es: #{inspect(nueva_lista)}")
