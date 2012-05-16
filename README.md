Diablo3-Login
=============

Summary
-------

This is a Diablo 3 login helper, useful when you keep getting Error 37 messages.

### Manual Mode

When an error message pops up, press one button to close the error message and retry the login

### Automatic Mode

When an error message pops up, the script automatically closes the popup and retries the login

Only works at 1920 x 1080 resolution

Requirements
------------

You need autohotkey installed to use this script

Instructions
------------

### Setup

1. Run the script, and it will ask you for your password

2. Enter your password

3. Open Diablo 3

4. Attempt to login normally

### Manual Mode

5. When prompted with an error message, press backslash "\" (usually above your enter key)

6. The script will close the login, reenter your password, and reattempt the login

### Automatice Mode

5. When prompted with an error message, press left square bracket "[" to start automatic mode

6. Whenever an error prompt pops up, the script will attempt another login

7. To stop automatic mode, press right square bracket "]"

Security
--------

Your password is only remembered as long as the script is open. If you want it to forget your password, just close the autohotkey icon in the System Tray.

Troubleshooting
---------------

This script is meant to run at full screen. Fullscreen windowed mode should work, normal windowed mode will probably not work.

Manual mode was tested on a 1920 x 1080 resolution monitor. It should work properly at other resolutions, although it may have problems with really weird screen sizes.

Automatic mode will only function on a 1920 x 1080 resolution monitor. The pixel coordinates for the error messages are hardcoded.