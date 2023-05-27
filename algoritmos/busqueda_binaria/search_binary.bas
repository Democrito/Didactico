
Dim As Integer tabla(0 To 9) = {1, 2, 3, 4, 5, 10, 11, 12, 13, 14}
Dim As Integer inicio
Dim As Integer fin
Dim As Integer medio
Dim As Integer entrada = -1   ' Se le da cualquier valor que no sea 0 para entrar en el primer "While".

While entrada <> 0            ' Para salir del programa pulsa enter sin introducir nada.
                              ' En este punto se inicializa las variables.
    inicio = 0                ' El primer elemento siempre comienza en la posici�n 0.
    fin    = 10               ' Cantidad total de elementos de la tabla.
     
    Input "------> ", entrada ' Valor a buscar en la tabla.
    
    ' Si no encuentra el elemento buscado se sale del bucle con el valor �ndice menor m�s cercano.
    While inicio <= fin
    	
        medio = inicio + (fin - inicio) / 2 ' Esta f�rmula pondr� el �ndice "medio" a la mitad para cada ciclo de comprobaci�n.

        ' Si el elemento est� en la posici�n que indica "medio", es que lo ha encontrado y se sale del bucle While e imprime "medio".
        If tabla(medio) = entrada Then
            Exit While
        End If

        ' Si el elemento es menor que el valor en la posici�n media, buscar en la mitad izquierda de la tabla
        If tabla(medio) > entrada Then
            fin = medio - 1
        
        ' Si el elemento es mayor que el valor en la posici�n media, buscar en la mitad  derecha  de la tabla.
        Else
            inicio = medio + 1
        End If
    Wend

    Print "index = "; medio ' imprime en pantalla el �ndice encontrado o el �ndice menor m�s cercano al valor buscado.
Wend 

End
