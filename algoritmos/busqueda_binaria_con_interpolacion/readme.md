
## Búsqueda binaria con interpolación lineal.

Este ejemplo es una extensión de la [búsqueda binaria](https://github.com/Democrito/Didactico/tree/main/algoritmos/busqueda_binaria), pero en este caso, si el elemento no se encuentra en la tabla, lo que hace es aproximar el índice con decimales. Si no tienes experiencia, aunque conozcas la teoría de búsqueda binaria, te recomiendo ir a ese enlace primero. De otro modo este apartado puede ser difícil de digerir.

Por ejemplo, supongamos esta tabla: {0, 100, 300,...}

El elemento 0 está en la posición 0, el elemento 100 está en la posición 1, y el elemento 300 está en la posición 2, etc. La posición indica su índice.

Si buscamos el elemento 200, como podemos ver no existe en la tabla, sin embargo podemos darle un valor de aproximación a través de decimales. El valor 200 pertenece a un índice 1 (porque es mayor de 100 que es índice 1, pero no llega a 300 que sería índice 2) y para saber cuán cerca o lejos está lo que haremos es aplicar una interpolación lineal relativa. Es decir, que de 100 a 300 buscamos un valor que esté entre 0.0 y 1.0. Al interpolar 200 ("200" es el valor relativo) sobre los valores 100 y 300 nos da 0.5, porque 200 está a mitad de camino de 100 y 300. El 1 es el índice al cual pertenece 200 y el 0.5 es la interpolación relativa. Se suma el índice y la interpolación y obtenemos el resultado que buscamos (1 + 0.5) = 1.5

En esta imagen puedes ver ejemplos de valores de entrada y de salida:

![](https://github.com/Democrito/Didactico/blob/main/algoritmos/busqueda_binaria_con_interpolacion/img/output.PNG)

Para que el programa funcione correctamente no se debe meter valores negativos, ni superiores al valor máximo que haya en la tabla (en el array que puse de ejemplo sería 2000).

### ¿Para qué puede servir esto?:

Es muy fácil convertir ángulos en senos y cosenos y meterlos en una tabla. Sin embargo, hacerlo al revés no es tan trivial. Estoy experimentando formas de hacerlo, evitando el uso de algoritmos complejos (por ejemplo la [aproximación Newton-Raphson](https://github.com/Democrito/repositorios/blob/master/Maths/algorithms_bas/Arccosine_Newton-Raphson_approximation.bas) que muchas veces tienen cálculos complicados de por medio y eso significa que en una FPGA (que es donde quiero aplicar esto) ocuparía mucho espacio y ciclos de reloj. Primero hago pruebas con programación y una vez que lo tengo claro, lo paso a circuito electrónico puro.

Dejo un enlace donde aplico lo que aquí se describe aplicado al [arcoseno y arcocoseno](https://github.com/Democrito/Didactico/tree/main/algoritmos/busqueda_binaria_con_interpolacion/ejemplos).

Si deseas compilar el programa, escrito en [*FreeBASIC*](https://es.wikipedia.org/wiki/FreeBASIC), haz [**click aquí**](https://sites.google.com/site/proyectosroboticos/instalacion-fbide). Es un IDE, eso significa que podrás editar, compilar y ejecutar el programa desde el mismo IDE.

De los archivos que adjunto en este proyecto hay un ".exe", es decir, el ejecutable del programa que pongo de ejemplo. Si quieres comprobar de que está libre de virus y troyanos haz [**clic aquí**](https://virusscan.jotti.org/). Subes el ejecutable (.exe) antes de ejecutarlo y esa web lo analizará con los antivirus más importantes del mercado.
 
