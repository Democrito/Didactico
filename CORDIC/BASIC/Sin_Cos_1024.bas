Declare Sub dec1024(ByVal As Long)

Dim Shared As Long ATAN_Table(0 To 15) => {46080, 27203, 14373, 7296, 3662, 1833, 916, 459, 229, 115, 57, 29, 14, 7, 3, 1}

Dim Shared As Long angle, desiredAngle, X, Y, Xnew, Ynew, i, cose, sine ' Long = signed 64 bits


Input "Angle: ", angle

desiredAngle = angle * 1024          ' Angle = input * 1024

dec1024(desiredAngle)                ' Print the input and it add zeros.

angle = 0
X     = 621                          ' 1024 * CORDIC Gain
Y     = 0

If (desiredAngle >  ( 90*1024)) Then angle = 180*1024
If (desiredAngle >= (270*1024)) Then angle = 360*1024

For i = 0 To 15
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

If (desiredAngle > (90*1024)) And (desiredAngle < (270*1024)) Then
   X = -X
   Y = -Y
EndIf

cose = X
sine = Y

Print "Sin = ";
dec1024(sine)

Print "Cos = ";
dec1024(cose)

Sleep ' stop, end.

Sub dec1024(ByVal given As Long)      ' Generates the numeric output on the screen.
	dim As Long temp
	
	If given < 0 Then
		given = -given          ' If the result is negative, make it positive
		Print"-";               ' and add the '-' for the minus sign.
	EndIf	 
	
	temp = given Shr 10              ' Shift 8 places to the right, which is the same as dividing by 1024.
	
	Print Str(temp);                ' Print the Long part
	Print ".";                      ' and add the point.
	
	temp = given And 1023            ' It take the lowest 8 bits because in those bits is the fractional part.
	temp = temp * 1000              ' By multiplying by 1000 and then dividing by 1024
	temp = temp / 1024               ' we get the equivalent number in decimal.
	
	If temp < 100 Then Print "0";   ' If necessary, it add leading zeros.
	If temp < 10  Then Print "0";
	
	Print Str(temp)                 ' Finally print the fractional part.         
End Sub
