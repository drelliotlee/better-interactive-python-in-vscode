var := clipboard
StringReplace, var, var, `n, `n, UseErrorLevel
if SubStr(var, 0) != "`n"
  ErrorLevel++
msgbox, %ErrorLevel%
; code from here https://www.autohotkey.com/board/topic/65120-count-number-of-lines-in-clipboard/