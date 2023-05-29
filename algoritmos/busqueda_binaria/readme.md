## Algoritmo de búsqueda binaria dentro de un array.

En este ejemplo ("[**binary_search.bas**](https://github.com/Democrito/Didactico/blob/main/algoritmos/busqueda_binaria/Binary_search.bas)") tenemos un array con los siguientes elementos: **{1, 2, 3, 4, 5, 10, 11, 12, 13, 14}**

El orden de los valores contenidos en el array es importante que siempre estén ordenados de menor a mayor.

![](https://github.com/Democrito/Didactico/blob/main/algoritmos/busqueda_binaria/img/value_index.PNG)

Podemos ver que el primer elemento es el 1, luego le sigue 2, 3, 4 y 5, y después, continúa con 10, 11, 12, 13 y 14. Estos valores están así a propósito. Si el valor no se encuentra en la lista te informará de que no lo ha encontrado.

Cuando ejecutes el programa verás algo como esto:

![](https://github.com/Democrito/Didactico/blob/main/algoritmos/busqueda_binaria/img/output.PNG)

El valor de índice mínimo es siempre 0 y el valor máximo en este caso es 9 (0..9 = 10 elementos en total contenido en el array de mi ejemplo). Por eso, si buscas el valor '1', te dará como respuesta 0, porque está en la posición 0 ese '1'. Y si buscas el valor '14' (que es el último) te dará como respuesta la posición 9.

Si deseas compilar el programa, escrito en [*FreeBASIC*](https://es.wikipedia.org/wiki/FreeBASIC), haz [**click aquí**](https://sites.google.com/site/proyectosroboticos/instalacion-fbide). Es un IDE, eso significa que podrás editar, compilar y ejecutar el programa desde el mismo IDE.

De los archivos que adjunto en este proyecto hay un ".exe", es decir, el ejecutable del programa que pongo de ejemplo. Si quieres comprobar de que está libre de virus y troyanos haz [**clic aquí**](https://virusscan.jotti.org/). Subes el ejecutable (.exe) antes de ejecutarlo y esa web lo analizará con los antivirus más importantes del mercado.
