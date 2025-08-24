1. ¿Qué es Erlang?
Erlang es un lenguaje de programación funcional creado en 1986 por Ericsson (una empresa de telecomunicaciones sueca).

Fue diseñado específicamente para:

Concurrencia masiva → manejar miles o millones de procesos al mismo tiempo.
Sistemas distribuidos → que corren en varios servidores y trabajan juntos.
Alta disponibilidad → que no se caigan, o que se recuperen solos en segundos.
Por eso, Erlang se usa mucho en telecomunicaciones, sistemas financieros y aplicaciones donde la comunicación rápida y confiable es vital (WhatsApp, por ejemplo, está hecho en gran parte sobre Erlang).

2. Palabras y conceptos importantes
BEAM
Es la máquina virtual en la que corren Erlang y Elixir (como la JVM en Java).
Administra los procesos ligeros, la memoria y la comunicación entre ellos.
Proceso ligero
En Erlang/Elixir, un “proceso” no es un proceso del sistema operativo ni un thread pesado.
Es una unidad de ejecución extremadamente liviana que maneja la BEAM.
Ventaja: puedes tener cientos de miles sin saturar el sistema.
Modelo de actores
Es una forma de organizar programas concurrentes.
Cada proceso es un “actor”: tiene su propio estado y se comunica solo enviando y recibiendo mensajes.
No hay memoria compartida, así que no necesitas bloqueos (synchronized, locks).
OTP (Open Telecom Platform)
Un conjunto de librerías y herramientas que vienen con Erlang para construir sistemas robustos.
Incluye:
Supervisores: procesos que vigilan a otros y los reinician si fallan.
GenServer: una estructura para procesos que manejan mensajes de manera estándar.
Aplicaciones distribuidas: para correr tu programa en varios nodos conectados.
Let it crash
Filosofía de Erlang: no intentes evitar todos los errores; deja que el proceso falle y deja que un supervisor lo reinicie limpio.
Esto evita que un error escondido destruya todo el sistema.

3. ¿Por qué utilizar Elixir?
Elixir combina toda la potencia y confiabilidad de Erlang con una sintaxis moderna y elegante inspirada en Ruby. Es mucho más fácil de leer y escribir que Erlang, pero mantiene todas sus ventajas: concurrencia masiva, tolerancia a fallos y distribución. Además, tiene un ecosistema vibrante con herramientas como Phoenix para web, LiveView para tiempo real sin JavaScript complejo, y Mix que maneja todo tu proyecto. La gran ventaja es que puedes manejar miles de procesos simultáneos sin preocuparte por threads, locks o deadlocks, ya que usa el modelo de actores donde todo se comunica por mensajes simples.
4. ¿En qué proyectos se usa Elixir?
Elixir se usa en aplicaciones que requieren alta concurrencia y confiabilidad. WhatsApp maneja 2 mil millones de usuarios con Erlang/Elixir, Discord procesa millones de conexiones de gamers simultáneas, y Pinterest lo usa para notificaciones masivas. También es popular en fintech como Klarna para procesar pagos, en gaming como League of Legends para millones de jugadores, en IoT para sistemas de casas inteligentes y robots agrícolas, y en sistemas críticos como hospitales y servicios de emergencia donde no puede fallar. Básicamente, cualquier sistema que necesite manejar muchos usuarios al mismo tiempo, actualizaciones en tiempo real, o que simplemente no se pueda caer.
