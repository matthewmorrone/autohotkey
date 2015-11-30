/*
By:					Wicked.
Name:			 	MouseMove_Ellipse()
Description:		Moves the mouse from (X1, Y1) to (X2, Y2) using an ellipse rather then a straight line.
Parameters:	 	X1 - The beginning X coordinate. Leave blank to use the current mouse position.
				Y2 - The beginning Y coordinate. Leave blank to use the current mouse position.
				X2 - The second X coordinate.
				Y2 - The second Y coordinate.
				S - The speed. In this case, the larger the number, the faster the speed.
				B - Blocks the mouse input. Set to 1 or true to block mouse input during the mouse movement.
				I - Inverts the ellipse path.
Examples:			MouseMove_Ellipse(50, 50, 300, 300) moves mouse from (50, 50) to (300, 300).
				MouseMove_Ellipse("", "", 300, 300, 2) moves mouse from it's current position to (300, 300) with a speed of 2.
				MouseMove_Ellipse(50, 50, 300, 300, 5, 1) moves mouse from (50, 50) to (300, 300) with a speed of 5 and blocks mouse input.
				MouseMove_Ellipse(50, 50, 300, 300, 5, 1, 1) moves mouse from (50, 50) to (300, 300) with a speed of 5, blocks mouse input and inverts the path.
Credits:		 	None - Lending a helping hand.
				[VxE] - For his guide to the ternary operator.
*/

MouseMove_Ellipse(X1, Y1, X2, Y2, S=1, M=0, I="") {
	MouseGetPos, X0, Y0
	If(I = "")
	{
		Random, I, 0, 1
	}
	X1 := (X1 != "") ? X1 : X0, Y1 := (Y1 != "") ? Y1 : Y0, B := Abs(X1-X2), A := Abs(Y1-Y2), H := (X1<X2) ? ((Y1<Y2) ? ((I=0) ? X1:X2):((I=0) ? X2:X1)):((Y1<Y2) ? ((I=0) ? X2:X1):((I=0) ? X1:X2)), K := (Y1<Y2) ? ((X1<X2) ? ((I=0) ? Y2:Y1):((I=0) ? Y1:Y2)):((X1<X2) ? ((I=0) ? Y1:Y2):((I=0) ? Y2:Y1)), D := A_MouseDelay
	SetMouseDelay, 1
	If(M)
	{
		BlockInput, Mouse
	}
	If(B > A)
	{
		Loop, % B / S
		{
			M := (X1 < X2) ? ((I=0) ? -1:1):((I=0) ? 1:-1), X := (X1 < X2) ? (X1+A_Index*S) : (X1-A_Index*S), Y := M*Sqrt(A**2*((X-H)**2/B**2-1)*-1)+K
			MouseMove, %X%, %Y%, 0
		}
	}
	Else
	{
		Loop, % A / S
		{
			M := (Y1 < Y2) ? ((I=0) ? 1:-1):((I=0) ? -1:1), Y := (Y1 < Y2) ? (Y1+A_Index*S) : (Y1-A_Index*S), X := M*Sqrt(B**2*(1-(Y-K)**2/A**2))+H
			MouseMove, %X%, %Y%, 0
		}
	}
	MouseMove, %X2%, %Y2%, 0e
	BlockInput, Off
	SetMouseDelay, % D
}

MouseMove_Circle(Clockwise := true) {
	MouseGetPos, baseX, baseY
	Keywait, Space
	Speed = 15 ; also effects the accuracy of the circle, be careful
	SetDefaultMouseSpeed, 0
	MouseGetPos, offsetX, offsetY
	dx := offsetX - baseX
	dy := (-offsetY + baseY) * (!Clockwise*2-1)
	offsetR := (dx = 0) ? (0.25+(dy>0)/2) : (ATan(dy/dx)/6.2831853+(dx<0)/2+(dx>0 && dy<0))
	SetBatchLines, -1
	Loop, % slices := Ceil((10/speed) * Dist := Sqrt(dx**2 + dy**2))
		MouseMove, % BaseX + Dist * Cos(6.2831853*(A_Index / slices + offsetR)), % baseY - (!Clockwise*2-1) * Dist * Sin(6.2831853*(A_Index / slices + offsetR))
	return
}


CoordMode, Mouse, Screen
SetBatchLines, -1

^RButton::
	MouseGetPos, X, Y
	Random, I, 0, 1 ;Random ellipse invert.
	MouseMove_Ellipse(X, Y, X+200, Y+200, 1, 0, I)
	MouseMove_Ellipse(X+200, Y+200, X, Y+400, 1, 0, I)
	MouseMove_Ellipse(X, Y+400, X-200, Y+200, 1, 0, I)
	MouseMove_Ellipse(X-200, Y+200, X, Y, 1, 0, I)
Return

$!*Space:: ; press space, then move the mouse, then release space
	MouseMove_Circle()
return






