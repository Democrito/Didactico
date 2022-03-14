# CORDIC digital en punto fijo.

**Iré añadiendo algoritmos del tipo CORDIC en esta sección. De lo que se trata es de sólo usar sumas, desplazamientos y una pequeña tabla (no mayor de 16 valores) para conseguir resolver ciertas operaciones matemáticas. Yo pruebo este tipo de algoritmos primero con programación y después lo paso a electrónica digital a través del programa gráfico ICEstudio.**

![](https://github.com/Democrito/Didactico/blob/main/CORDIC/BASIC/img/screen_ouput.PNG)

"Sin_Cos.bas" es un programa hecho en BASIC (FreeBASIC) para resolver senos y cosenos utilizando muy pocos recursos; el formato de salida es Q8.8. Tiene una precisión de dos decimales, el tercer decimal se acerca pero rara vez coincide. Sin embargo esto significa un error de menos de 0.1%, donde para la mayoría de las aplicaciones que le podamos dar es más que suficiente.

"Sin_Cos_1024.bas" y su respectivo ejecutable es lo mismo que el anterior pero con formato Q10.10 y tiene un poco más de precisión.

Lo de los formatos Qx.x no te preocupes, el propio programa traduce de binario a "humano" (para mostrarlo en pantalla) y dentro del programa se puede ver la subrutina que hace eso, y como verás, de un formato a otro sólo cambia el 256 por 1024 (o la máscara tipo "AND" 255 y 1023 según el Qx.x del que se trate). Con la ganancia en senos y cosenos (0.60726) sucede lo mismo, se multiplica por 256 o 1024 según sea el caso. Y para la tabla de arcotangentes, son ángulos fijos, que según la resolución (255 ó 1024) se multiplica esos ángulos por la resolución que se necesita (255 ó 1024) en los casos que presento.

Los ángulos fijos de la tabla de arcontangentes son con respecto a estos valores (y luego se multiplica por 255 ó 1024 según la resolución, eso lo verás en la tabla de arcotangente dentro del programa) :
45.000, 26.565, 14.036, 7.125, 3.576, 1.790, 0.895, 0.448, 0.224, 0.112, 0.056, 0.028, 0.014, 0.007, 0.003

La explicación de todo esto lo podrás ver en inglés aquí: https://www.eit.lth.se/fileadmin/eit/courses/eitf35/2017/CORDIC_For_Dummies.pdf

![](https://github.com/Democrito/Didactico/blob/main/CORDIC/BASIC/img/atan2.PNG)

"atan2_Qx_8" es un programa en el que le das una coordenada cartesiana (x,y) y te resuelve el ángulo desde 0 hasta 359.99 Los valores de entrada pueden ser positivos y negativos. Tiene una resolución en la parte fraccionaria de dos decimales con una aproximación excelente.

Para comprobar que los ejecutables no contiene virus ni troyanos puedes comprobarlo desde esta web:

https://virusscan.jotti.org/

Subes el exe (o zip si ese fuera el caso) y esa WEB lo pasa por multitud de antivirus y verás online si existe algo sospechoso.

Si quieres instalar un IDE de FreeBasic en tu PC (ocupa muy poco espacio) y compilar por tu cuenta el programa o hacer modificaciones, dejo aquí instrucciones de cómo hacerlo: https://sites.google.com/site/proyectosroboticos/instalacion-fbide

Existe [FreeBasic para Linux](https://www.ochobitshacenunbyte.com/2015/09/15/programando-freebasic-gnu-linux/) porque es libre y está para muchas plataformas.
