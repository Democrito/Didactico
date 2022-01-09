# Midiendo frecuencia a partir de un pulso

Es posible medir la frecuencia de una señal a partir de una sola muestra de un pulso, teniendo en cuenta que la señal es preferiblemente cuadrada y que su duración de ciclo es de un 50% en los pulsos altos y
bajos.

**Nota de cálculos matemáticos:**

Tr = pulse_variable x 2 µs. donde Tr : Tiempo real

Como sólo se obtiene la mitad del periodo, se debe multiplicar por 2 para obtener el periodo completo en micro-segundos

P = (Tr x 2) µs

El periodo es el intervalo de tiempo entre picos sucesivos en forma de onda periódica. Generalmente se representa por la letra mayúscula T.

La frecuencia es la cantidad de periodos que ocurren en un segundo.

F = 1/P (Hz)

Sin embargo, esto es más fácil decirlo que hacerlo, por ejemplo suponga que obtiene con la función Pulsin un resultado de (325).

Paso No. 1:

325 x 2 µs = 650 µs, este es el ancho del pulso.

Paso No. 2:

650 x 2 = 1300 µs, es el periodo, recuerde que este valor es equivalente a 0.0013 Segundos, el próximo paso seria dividir uno (1) entre 0.0013 segundos y se obtiene la frecuencia. Pero deben recordar
que solo manejamos cantidades enteras. Entonces en vez de dividir 1/0.0013 segundos, podemos dividir 1,000,000/1,300 µs. Pero tenemos otro problema la cantidad más alta que podemos manejar es de 65,535. Si
nos fijamos bien podemos resumir el calculo anterior a:

F = 1,000,000/(325)x 2 x 2

F = 1,000,000/(325)x 4

F = 1,000,000/4 x (325)

F = 250,000/(325)

Esta equivalencia resulta menos compleja, pero aun seguimos teniendo problemas pues no existe la cantidad 250,000. Podemos entonces:

F = (25,000/(325))x 10

Si eliminamos un cero a la cantidad de 250,000 el resultado seria 25,000 la cual es una cantidad manejable menor de 16 Bits, luego se divide con la variable (325) y el resultado de la división le agregamos el cero multiplicando por 10.

Fuente original en el PDF que se encuentra aquí: https://github.com/Democrito/Didactico/blob/main/Calculos/adjuntos/BSManSpanish.pdf (No he encontrado en la web oficial este archivo y por ello lo he subido aquí, aunque en inglés lo más parecido lo he visto [aquí](https://www.egr.msu.edu/classes/me456/radcliff/homework/BSM-v2.2.pdf)).
