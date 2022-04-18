#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force 

#IfWinActive ahk_class Notepad
::014::014.000.000-50
#IfWinActive

F12::Run Calc.exe

;;Vimeo - From review to config page
9:: 
SendInput ^l
Sleep 100
SendInput {left}
SendInput ^{Right}
SendInput ^{Right}
SendInput ^{Right}
SendInput ^{Right}
SendInput ^{Right}
SendInput +{home}
SendInput {del}
Send https://vimeo.com/manage/videos/
SendInput {enter}
return

;;Vimeo - From Config to advanced
0::
SendInput ^l
Sleep 100
SendInput {left}
SendInput ^{Right}
SendInput ^{Right}
SendInput ^{Right}
SendInput ^{Right}
SendInput ^+{Right}
SendInput {del}
SendInput ^{Right}
SendInput +{end}
Send advanced
SendInput {enter}
return

;;Vimeo - From Config to Subtitle
7::
SendInput ^l
Sleep 100
SendInput {left}
SendInput ^{Right}
SendInput ^{Right}
SendInput ^{Right}
SendInput ^{Right}
SendInput ^+{Right}
SendInput {del}
SendInput ^{Right}
SendInput +{end}
SendRaw distribution#subtitles
SendInput {enter}
return

;; G Sheets- Past and transpose.
0::
SendInput {Down}
SendInput ^+v
SendInput ^c
SendInput {Up}
SendInput !e
Sleep 100
SendInput s
SendInput e
Sleep 100
SendInput {Down}
SendInput +{PgDn}
SendInput {Del}
SendInput {up}
SendInput {Down}
return
