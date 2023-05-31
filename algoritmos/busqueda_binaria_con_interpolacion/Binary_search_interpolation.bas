
Dim As Integer tabla(0 To 9) = {0, 100, 300, 350, 400, 580, 1005, 1100, 1225, 5000}
Dim As Integer inicio
Dim As Integer fin
Dim As Integer index
Dim As Double  interpolation
Dim As Integer entrada

Print "Para salir del programa haga clic en la X de la ventana": Print: Print 

While 1                       ' Para salir del programa haz clic a la X de la ventana.
                              ' En este punto se inicializa las variables.
	inicio = 0            ' El primer elemento siempre comienza en la posición 0.
	fin    = 9            ' Cantidad total de elementos en la tabla -1.
	
	For i As Integer = 0 To 9  ' Copia la tabla en la pantalla para localizar los elementos y deducir el índice visualmente.
		Print "|"; Str(tabla(i));
	Next 
	Print "|"
	Print 
	
	Input "Buscar -----> ", entrada ' Valor_elemento a buscar en la tabla.
	 
	' Algoritmo de búsqueda binaria.
	While inicio <= fin
	 	
		index = (fin + inicio) / 2 ' Esta fórmula pondrá el índice "index" a la mitad en cada ciclo de comprobación.
		
		' Si el elemento está en la posición que indica "index", es que lo ha encontrado y sale del bucle While.
		If tabla(index) = entrada Then Exit While
		
		' Si el elemento es mayor que el valor en la posición media, buscar en la mitad  derecha  de la tabla.
		' Si el elemento es menor que el valor en la posición media, buscar en la mitad izquierda de la tabla.
		If tabla(index) > entrada Then fin = index - 1 Else inicio = index + 1
	   
	Wend
	 
	' Imprime en pantalla el índice con interpolación lineal.
	
	If tabla(index) > entrada Then index = index - 1 ' Cuando el índice no está en la tabla, a veces apunta bien y otras se pasa, con esta condición se ajusta el índice al que realmente le corresponde.
	
	interpolation =  (entrada - tabla(index)) / (tabla(index+1) - tabla(index)) ' Fórmula de interpolación lineal con entrada relativa.
	
	Print "----->"; index + interpolation
	
	Print: Print 
Wend 

End
 
