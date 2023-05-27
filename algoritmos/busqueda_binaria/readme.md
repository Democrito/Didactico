## Algoritmo de búsqueda binaria dentro de un array.

En este ejemplo ("[**binary_search.bas**](https://github.com/Democrito/Didactico/blob/main/algoritmos/busqueda_binaria/binary_search.bas)") tenemos un array con los siguientes elementos: **{1, 2, 3, 4, 5, 10, 11, 12, 13, 14}**

El orden de los valores contenidos en el array es importante que siempre estén ordenados de menor a mayor.

![](https://github.com/Democrito/Didactico/blob/main/algoritmos/busqueda_binaria/img/value_index.PNG)

Podemos ver que el primer elemento es el 1, luego le sigue 2, 3, 4 y 5, y después, continúa con 10, 11, 12, 13 y 14. Estos valores están así a propósito porque el programa siempre dará un valor de índice aunque no esté el elemento buscado. Si el valor no se encuentra en la lista te dará el valor de índice mayor más cercano al valor introducido.

Cuando ejecutes el programa verás algo como esto:

![](https://github.com/Democrito/Didactico/blob/main/algoritmos/busqueda_binaria/img/example_output.PNG)

El valor de índice mínimo es siempre 0 y el valor máximo en este caso es 9 (0..9 = 10 elementos en total contenido en el array de mi ejemplo). Por eso, si buscas el valor '1', te dará como respuesta 0, porque está en la posición 0 ese '1'. Y si buscas el valor '14' (que es el último) te dará como respuesta la posición 9. En el caso de introducir un valor negativo, el valor índice más cercano es siempre 0 porque el valor índice mínimo en la tabla es '1'.

En algoritmos comunes y corrientes de búsqueda binaria, cuando no encuentra un elemento lo que hace es responder: "Elemento no encontrado", sin embargo yo necesitaba que si no lo encuentra, de todas formas dé el valor de índice mayor más cercano. Esto necesito que sea así porque voy a usar este algoritmo como tabla de arcocosenos, en donde le doy un valor de coseno y el índice representará el arcocoseno con el valor mayor más cercano. Después de esto se le puede aplicar interpolación lineal para aproximar el resultado, pero esto aquí no se aplica porque es sólo un ejemplo de búsqueda binaria. 
