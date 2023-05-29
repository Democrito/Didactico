Dim As Integer tabla(0 To 9) = {1, 2, 3, 4, 5, 10, 11, 12, 13, 14}
Dim As Integer inicio
Dim As Integer fin
Dim As Integer medio
Dim As BOOLEAN bool
Dim As Integer entrada = -1   ' Se le da cualquier valor que no sea 0 para entrar en el primer "While".

While entrada <> 0            ' Para salir del programa pulsa enter sin introducir nada.
                              ' En este punto se inicializa las variables.
   inicio = 0                 ' El primer elemento siempre comienza en la posición 0.
   fin    = 9                 ' Cantidad total de elementos en la tabla -1.
   bool   = FALSE             ' bool => false = elemento no encontrado, bool => true = elemento encontrado.
    
   Input "Buscar -----> ", entrada ' Valor_elemento a buscar en la tabla.
    
   ' Si no encuentra el elemento buscado se sale del bucle.
   While inicio <= fin
    	
      medio = (fin + inicio) / 2 ' Esta fórmula pondrá el índice "medio" a la mitad para cada ciclo de comprobación.

      ' Si el elemento está en la posición que indica "medio", es que lo ha encontrado y se sale del bucle While.
      If tabla(medio) = entrada Then
    	   bool = TRUE
         Exit While
      End If
      
      ' Si el elemento es mayor que el valor en la posición media, buscar en la mitad  derecha  de la tabla.
      ' Si el elemento es menor que el valor en la posición media, buscar en la mitad izquierda de la tabla.
      If tabla(medio) > entrada Then fin = medio - 1 Else inicio = medio + 1
      
   Wend
    
   ' Imprime en pantalla el índice encontrado o informa de que no está en la lista.
   If bool = TRUE Then 
      Print "index = "; medio
   Else
      Print "Elemento no encontrado"
   End If 
Wend 

End