#NoTrayIcon

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!T::
; read current theme
RegRead, CurrentTheme, % "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize", % "AppsUseLightTheme"

; toggle between themes
RegWrite, REG_DWORD, % "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize", % "AppsUseLightTheme", % 1 - CurrentTheme
Return

