
## Búsqueda binaria con interpolación lineal.

Este ejemplo es una extensión de la [búsqueda binaria](https://github.com/Democrito/Didactico/tree/main/algoritmos/busqueda_binaria), pero en este caso, si el elemento no se encuentra en la tabla, lo que hace es aproximar el índice con decimales. Si no tienes experiencia, aunque conozcas la teoría de búsqueda binaria, te recomiendo ir a ese enlace primero. De otro modo este apartado puede ser difícil de digerir.

Por ejemplo, supongamos esta tabla: {0, 100, 300,...}

El elemento 0 está en la posición 0, el elemento 100 está en la posición 1, y el elemento 300 está en la posición 2, etc. La posición es un índice.

Si buscamos el elemento 200, como podemos ver no existe en la tabla, sin embargo podemos darle un valor de aproximación a través de los decimales. El valor 200 pertenece a un índice 1 (porque sobrepasa al 100 que es índice 1, pero no llega a 300, que sería índice 2) y para saber cuán cerca o lejos está lo que haremos es aplicar una interpolación lineal. La interpolación lineal que he usado en mi programa de ejemplo es la misma que usa Arduino con la función "map()". Es decir, que de 100 a 300 buscamos un valor que esté entre 0.0 y 1.0. Para el caso del valor 200, nos dará un índice de "1.5". El 1 es el índice al cual pertenece y el 0.5 es la interpolación entre 100 y 300. Como 200 es la mitad de camino entre 100 y 300, por ello el resultado es 0.5. Se suma el índice y la interpolación y obtenemos el resultado que buscamos.

En esta imagen puedes ver ejemplos de valores de entrada y de salida:

![](https://github.com/Democrito/Didactico/blob/main/algoritmos/busqueda_binaria_con_interpolacion/img/output.PNG)

### ¿Para qué puede servir esto?:

Es muy fácil convertir ángulos en senos y cosenos y meterlos en una tabla. Sin embargo, hacerlo al revés no es tan trivial. Estoy experimentando formas de hacerlo, evitando el uso de algoritmos complejos (por ejemplo la [aproximación Newton-Raphson](https://github.com/Democrito/repositorios/blob/master/Maths/algorithms_bas/Arcocosine_Newton-Raphson_approximation.bas) que muchas veces tienen cálculos complicados por medio y eso significa que en una FPGA (que es donde quiero aplicar esto) ocuparía mucho espacio y ciclos de reloj. Primero hago pruebas con programación y una vez que lo tengo claro, lo paso a circuito electrónico puro. Pero lo dicho, estoy experimentado y a la vez aprendiendo cosas que en el futuro podría aplicar en otros proyectos de distinta naturaleza o mejorar los ya existentes.

Si deseas compilar el programa, escrito en [*FreeBASIC*](https://es.wikipedia.org/wiki/FreeBASIC), haz [**click aquí**](https://sites.google.com/site/proyectosroboticos/instalacion-fbide). Es un IDE, eso significa que podrás editar, compilar y ejecutar el programa desde el mismo IDE.

De los archivos que adjunto en este proyecto hay un ".exe", es decir, el ejecutable del programa que pongo de ejemplo. Si quieres comprobar de que está libre de virus y troyanos haz [**clic aquí**](https://virusscan.jotti.org/). Subes el ejecutable (.exe) antes de ejecutarlo y esa web lo analizará con los antivirus más importantes del mercado.
 
