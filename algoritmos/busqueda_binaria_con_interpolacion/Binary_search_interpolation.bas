Dim As Integer tabla(0 To 9) = {0, 100, 328, 350, 400, 500, 1001, 1100, 1200, 2000}
Dim As Integer inicio
Dim As Integer fin
Dim As Integer medio
Dim As Double  result
Dim As Integer entrada

Print "Para salir del programa haga clic en la X de la ventana": Print: Print 

While 1                       ' Para salir del programa haz clic a la X de la ventana.
                              ' En este punto se inicializa las variables.
   inicio = 0                 ' El primer elemento siempre comienza en la posición 0.
   fin    = 9                 ' Cantidad total de elementos en la tabla -1.
   
   Print "{0, 100, 328, 350, 400, 500, 1001, 1100, 1200, 2000}" ' copiamos la tabla original en pantalla para localizar los elementos.
   Print 
    
   Input "Buscar -----> ", entrada ' Valor_elemento a buscar en la tabla.
    
   ' Algoritmo de búsqueda binaria.
   While inicio <= fin
    	
      medio = (fin + inicio) / 2 ' Esta fórmula pondrá el índice "medio" a la mitad en cada ciclo de comprobación.

      ' Si el elemento está en la posición que indica "medio", es que lo ha encontrado y sale del bucle While.
      If tabla(medio) = entrada Then Exit While
      
      ' Si el elemento es mayor que el valor en la posición media, buscar en la mitad  derecha  de la tabla.
      ' Si el elemento es menor que el valor en la posición media, buscar en la mitad izquierda de la tabla.
      If tabla(medio) > entrada Then fin = medio - 1 Else inicio = medio + 1
      
   Wend
    
   ' Imprime en pantalla el índice con interpolación lineal.
   
	If tabla(medio) > entrada Then medio = medio - 1 ' Cuando el índice no está en la tabla, a veces apunta bien y otras se pasa, con esta condición se ajusta el índice al que realmente le corresponde.
	
	result =  (entrada - tabla(medio)) / (tabla(medio+1) - tabla(medio)) ' Fórmula de interpolación lineal con un valor relativo.

   Print "----->"; medio + result
   
   Print: Print 
Wend 

End
 