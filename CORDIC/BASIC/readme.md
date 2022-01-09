# CORDIC digital en punto fijo.

**Iré añadiendo algoritmos del tipo CORDIC, de momento sólo está para senos y cosenos. De lo que se trata es de sólo usar sumas, desplazamientos y una pequeña tabla (no mayor de 14 valores) para conseguir resolver ciertas operaciones matemáticas. Yo pruebo este tipo de algoritmos primero con programación y después lo paso a electrónica digital a través del programa gráfico ICEstudio.**

"SinCos.bas" es un programa hecho en BASIC (FreeBASIC) para resolver senos y cosenos utilizando muy pocos recursos. Tiene una precisión de dos decimales, el tercer decimal se acerca pero rara vez coincide. Sin embargo esto significa un error de menos de 0.1%, donde para la mayoría de las aplicaciones que le podamos dar es más que suficiente.

"SinCos.exe" es el ejecutable para Windows. Para comprobar que el programa no contiene virus ni troyanos puedes comprobarlo desde esta web:

https://virusscan.jotti.org/

Subes el exe y esa WEB lo pasa por multitud de antivirus y verás online si existe algo sospechoso.

La fuente de este algoritmo para posterior traducción a FreeBasic la extraje de aquí: https://www.eit.lth.se/fileadmin/eit/courses/eitf35/2017/CORDIC_For_Dummies.pdf

Si quieres instalar un IDE de FreeBasic en tu PC (ocupa muy poco espacio) y compilar por tu cuenta el programa o hacer modificaciones, dejo aquí instrucciones de cómo hacerlo: https://sites.google.com/site/proyectosroboticos/instalacion-fbide

Existe [FreeBasic para Linux](https://www.ochobitshacenunbyte.com/2015/09/15/programando-freebasic-gnu-linux/) porque es libre y está para muchas plataformas.
