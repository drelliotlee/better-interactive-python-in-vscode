sleep, 2000
; WinGetTitle, Title, A
; MsgBox, The active window is "%Title%".

; WinGetClass, class, A
; MsgBox, The active window's class is "%class%".

; WinGet, active_id, ID, A
; ; WinMaximize, ahk_id %active_id%
; MsgBox, The active window's ID is "%active_id%".

WinGet, processName, ProcessName, A
MsgBox, The active window's process name is is "%processName%".