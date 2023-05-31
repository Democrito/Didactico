Dim As Integer tabla(0 To 9) = {1, 2, 3, 4, 5, 10, 11, 12, 13, 14}
Dim As Integer inicio
Dim As Integer fin
Dim As Integer index
Dim As BOOLEAN bool
Dim As Integer entrada

Print "                         Para salir del programa haz clic en la X de la ventana."
Print 

While 1                       ' Para salir del programa pulsa enter sin introducir nada.
                              ' En este punto se inicializa las variables.
   inicio = 0                 ' El primer elemento siempre comienza en la posición 0.
   fin    = 9                 ' Cantidad total de elementos en la tabla -1.
   bool   = FALSE             ' bool => false = elemento no encontrado, bool => true = elemento encontrado.
   
   For i As Integer = 0 To 9  ' Copia la tabla en la pantalla para localizar los elementos y deducir el índice visualmente.
		Print "|"; Str(tabla(i));
	Next 
	Print "|"
	Print 
    
   Input "Buscar -----> ", entrada ' Valor_elemento a buscar en la tabla.
    
   ' Algoritmo de búsqueda binaria.
   While inicio <= fin
    	
      index = (fin + inicio) / 2 ' Esta fórmula pondrá el índice "index" a la mitad para cada ciclo de comprobación.

      ' Si el elemento está en la posición que indica "index", es que lo ha encontrado y se sale del bucle While.
      If tabla(index) = entrada Then
    	   bool = TRUE
         Exit While
      End If
      
      ' Si el elemento es mayor que el valor en la posición media, buscar en la mitad  derecha  de la tabla.
      ' Si el elemento es menor que el valor en la posición media, buscar en la mitad izquierda de la tabla.
      If tabla(index) > entrada Then fin = index - 1 Else inicio = index + 1
      
   Wend
    
   ' Imprime en pantalla el índice encontrado o informa de que no está en la lista.
   If bool = TRUE Then 
      Print "index = "; index
   Else
      Print "Elemento no encontrado"
   End If
   
   Print
   Print 
Wend 

End
 