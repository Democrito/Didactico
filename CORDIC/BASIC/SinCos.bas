Declare Sub dec256(ByVal As Integer)

Dim Shared As Integer ATAN_Table(0 To 14) => {11520, 6801, 3593, 1824, 916, 458, 229, 115, 57, 28, 14, 7, 4, 2, 1}

Dim Shared As Integer angle, desiredAngle, X, Y, Xnew, Ynew, i, cose, sine ' Integer = signed 32 bits


Input "Angle: ", angle

desiredAngle = angle * 256          ' Angle = input * 256

dec256(desiredAngle)                ' Print the input and it add zeros.

angle = 0
Y     = 0
X     = 155                         ' 256 * CORDIC Gain

If (desiredAngle >  ( 90*256)) Then angle = 180*256
If (desiredAngle >= (270*256)) Then angle = 360*256

For i = 0 To 14
   If desiredAngle > angle Then     ' Rotate counter-clockwise
      Xnew  = X - (Y Shr i)
      Ynew  = Y + (X Shr i)
      angle = angle + ATAN_Table(i)
   Else                             ' Rotate clockwise      
      Xnew  = X + (Y Shr i)
      Ynew  = Y - (X Shr i)
      angle = angle - ATAN_Table(i)
   EndIf
	
   X = Xnew
   Y = Ynew 
Next

If (desiredAngle > (90*256)) And (desiredAngle < (270*256)) Then
   X = -X
   Y = -Y
EndIf

cose = X
sine = Y

Print "Sin = ";
dec256(sine)

Print "Cos = ";
dec256(cose)

Sleep ' stop, end.

Sub dec256(ByVal given As Integer)      ' Generates the numeric output on the screen.
	dim As Integer temp
	
	If given < 0 Then
		given = -given          ' If the result is negative, make it positive
		Print"-";               ' and add the '-' for the minus sign.
	EndIf	 
	
	temp = given Shr 8              ' Shift 8 places to the right, which is the same as dividing by 256.
	
	Print Str(temp);                ' Print the integer part
	Print ".";                      ' and add the point.
	
	temp = given And 255            ' It take the lowest 8 bits because in those bits is the fractional part.
	temp = temp * 1000              ' By multiplying by 1000 and then dividing by 256
	temp = temp / 256               ' we get the equivalent number in decimal.
	
	If temp < 100 Then Print "0";   ' If necessary, it add leading zeros.
	If temp < 10  Then Print "0";
	
	Print Str(temp)                 ' Finally print the fractional part.         
End Sub
