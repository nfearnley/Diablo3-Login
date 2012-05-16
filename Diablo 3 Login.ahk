; Read password and store in variable
InputBox, password, Enter Password, (your input will be hidden), hide
return

; Enter password when backslash is pressed
\::
IfWinExist, Diablo III
{
	WinGetPos, , , X, Y, Diablo III	; Get the size of the screen
	X := X * 0.5			; and calculate password box position
	Y := Y * 0.65
	SendInput {Enter}		; Send enter to close error message
	click %X%, %Y%			; Select password box
	SendInput ^a			; Select all characters
	SendInput %password%		; Send password
	SendInput {Enter}		; Send enter to attempt login
}
return
