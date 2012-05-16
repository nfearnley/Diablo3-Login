; Read password and store in variable
InputBox, password, Enter Password, (your input will be hidden), hide
running := false
return

; Enter password when backslash is pressed
\::
	Login(password)
	

; Start looping when left square bracket is pressed
[::
	if (running = false)
	{
		running := true
		while running = true
		{
			status := GetErrorStatus()
			if (status = true)
			{
				Login(password)
			}
			Sleep 100
		}
	}
	return

; Stop looping when right square bracket is pressed
]::
	running := false
	return

Login(password)
{
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
}

GetErrorStatus()
{
	IfWinExist, Diablo III
	{
		WinGetPos, , , Width, Height, Diablo III	; Get the size of the screen
		color = 0x000000
		if (width = 1920 and height = 1080)
		{
			X := 951
			Y := 419
			PixelGetColor color, X, Y, RGB
		}
	}
	status := false
	IfEqual color, 0x120803
	{
		status := true
	}
	return status
}