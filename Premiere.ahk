#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

;modelo
;MsgBox, WOW!


;^!z::  ; Control+Alt+Z hotkey. Pegar a cor
;MouseGetPos, MouseX, MouseY
;PixelGetColor, color, %MouseX%, %MouseY%
;MsgBox The color at the current cursor position is %color%.
;return


;;Mover lateralmente
#IfWinActive ahk_class Premiere Pro
F1::
Send {Click Left}
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
if (color = "0xA46FF7"){
Sendinput ^!+5
sleep 1
MouseMove, 314, 225
sendinput {LCtrl down}{Lbutton down}
keywait, F1
sleep 1
sendinput {LCtrl up}{Lbutton up}
sleep 1
MouseMove, %MouseX%, %MouseY% 
return
}
else{
Sendinput ^!+5
sleep 1
MouseMove, 314, 205
sendinput {LCtrl down}{Lbutton down}
keywait, F1
sleep 1
sendinput {LCtrl up}{Lbutton up}
sleep 1
MouseMove, %MouseX%, %MouseY% 
return
}


;;Mover verticalmente
#IfWinActive ahk_class Premiere Pro
F2::
Send {Click Left}
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
if (color = "0xA46FF7"){
Sendinput ^!+5
sleep 1
MouseMove, 365, 225
sendinput {LCtrl down}{Lbutton down} 
keywait, F2
sleep 1
sendinput {LCtrl up}{Lbutton up}
sleep 1
MouseMove, %MouseX%, %MouseY% 
return
}
else{
Sendinput ^!+5
sleep 1
MouseMove, 365, 204
sendinput {LCtrl down}{Lbutton down}
keywait, F2
sleep 1
sendinput {LCtrl up}{Lbutton up}
sleep 1
MouseMove, %MouseX%, %MouseY% 
return
}

;;Scale
#IfWinActive ahk_class Premiere Pro
F4::
Send {Click Left}
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
if (color = "0xA46FF7"){
Sendinput ^!+5
sleep 1
MouseMove, 314, 247
sendinput {LCtrl down}{Lbutton down} 
keywait, F4
sleep 1
sendinput {LCtrl up}{Lbutton up}
sleep 1
MouseMove, %MouseX%, %MouseY% 
return
}
else{
Sendinput ^!+5
sleep 1
MouseMove, 311, 225
sendinput {LCtrl down}{Lbutton down} 
keywait, F4
sleep 1
sendinput {LCtrl up}{Lbutton up} 
sleep 1
MouseMove, %MouseX%, %MouseY% 
return
}

;;Nest 
#IfWinActive ahk_class Premiere Pro
F9::
Sendinput ^+{F9}
Sendinput {Enter}
return

;;50% volocidade
#IfWinActive ahk_class Premiere Pro
F10::
Send {Click Left}
Sendinput ^r
Send 50{Enter}
return

;;75% volocidade
#IfWinActive ahk_class Premiere Pro
+F10::
Send {Click Left}
Sendinput ^r
Send 75{Enter}
return

;;35% volocidade
#IfWinActive ahk_class Premiere Pro
^F10::
Send {Click Left}
Sendinput ^r
Send 35{Enter}
return

;;100% volocidade
#IfWinActive ahk_class Premiere Pro
^+F10::
Send {Click Left}
Sendinput ^r
Send 100{Enter}
return

;;pesquisa
^Space::
MouseClick, left, 1080, 192
return

;;transição
5::
MouseGetPos, MouseX, MouseY
MouseClick, left, 3249, 228
MouseClick, left, 3591, 347
MouseClick, left, 3253, 343
Send TR1 {enter}
Sleep 100
MouseClickDrag, Left, 3319, 552, %MouseX%, %MouseY%, 10
return

;;transição 2
+5::
MouseGetPos, MouseX, MouseY
MouseClick, left, 3249, 228
MouseClick, left, 3591, 347
MouseClick, left, 3253, 343
Send TR2 {enter}
Sleep 100
MouseClickDrag, Left, 3319, 552, %MouseX%, %MouseY%, 10
return

;;transição 3
^5::
MouseGetPos, MouseX, MouseY
MouseClick, left, 3249, 228
MouseClick, left, 3591, 347
MouseClick, left, 3253, 343
Send TR3 {enter}
Sleep 100
MouseClickDrag, Left, 3319, 552, %MouseX%, %MouseY%, 10
return

;;citação
6::
MouseGetPos, MouseX, MouseY
MouseClick, left, 3249, 228
MouseClick, left, 3591, 347
MouseClick, left, 3253, 343
Send 08 {enter}
Sleep 100
MouseClickDrag, Left, 3319, 552, %MouseX%, %MouseY%, 10
Sleep 500
MouseMove, 30, 0,, R
Click
Sleep 100
MouseClick, left, 3477, 359
SendInput ^v
return

;;título e descrição
+6::
MouseGetPos, MouseX, MouseY
MouseClick, left, 3249, 228
MouseClick, left, 3591, 347
MouseClick, left, 3253, 343
Send 21 {enter}
Sleep 100
MouseClickDrag, Left, 3319, 552, %MouseX%, %MouseY%, 10
return

;;texto curto
7::
BlockInput, MouseMove
MouseGetPos, MouseX, MouseY
MouseClick, left, 3249, 228
MouseClick, left, 3591, 347
MouseClick, left, 3253, 343
Send 22 {enter}
Sleep 100
MouseClickDrag, Left, 3319, 552, %MouseX%, %MouseY%, 10
Sleep 500
MouseMove, 30, 0,, R
Click
Sleep 200
MouseClick, left, 3477, 359
SendInput ^v
BlockInput, MouseMoveOff
return

;;texto curto 2
+7::
BlockInput, MouseMove
MouseGetPos, MouseX, MouseY
MouseClick, left, 3249, 228
MouseClick, left, 3591, 347
MouseClick, left, 3253, 343
Send 06 {enter}
Sleep 100
MouseClickDrag, Left, 3319, 552, %MouseX%, %MouseY%, 10
Sleep 500
MouseMove, 30, 0,, R
Click
Sleep 200
MouseClick, left, 3477, 359
SendInput ^v
BlockInput, MouseMoveOff
return

;;titulo e destaque
8::
BlockInput, MouseMove
MouseGetPos, MouseX, MouseY
MouseClick, left, 3249, 228
MouseClick, left, 3591, 347
MouseClick, left, 3253, 343
Send 10 {enter}
Sleep 100
MouseClickDrag, Left, 3319, 552, %MouseX%, %MouseY%, 10
Sleep 500
MouseMove, 30, 0,, R
Click
Sleep 200
MouseClick, left, 3477, 359
SendInput ^v
BlockInput, MouseMoveOff
return

;;Lei
9::
BlockInput, MouseMove
MouseGetPos, MouseX, MouseY
MouseClick, left, 3249, 228
MouseClick, left, 3591, 347
MouseClick, left, 3253, 343
Send 17 {enter}
Sleep 100
MouseClickDrag, Left, 3319, 552, %MouseX%, %MouseY%, 10
Sleep 500
MouseMove, 30, 0,, R
Click
Sleep 200
MouseClick, left, 3477, 359
SendInput ^v
BlockInput, MouseMoveOff
return

;;imagem lateral
0::
BlockInput, MouseMove
MouseGetPos, MouseX, MouseY
MouseClick, left, 3249, 228
MouseClick, left, 3591, 347
MouseClick, left, 3253, 343
Send 13 {enter}
Sleep 100
MouseClickDrag, Left, 3319, 552, %MouseX%, %MouseY%, 10
BlockInput, MouseMoveOff
return

;;Colar
Tab::
MouseClick, left, 3477, 359
SendInput ^v
return
