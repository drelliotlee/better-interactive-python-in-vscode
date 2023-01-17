sleep, 2000
ControlGet, sel, Selected,, Intermediate D3D Window 1, ahk_exe Code.exe
; ControlGet, sel, Selected,, Edit1
MsgBox, 64, Selected text, %sel%
