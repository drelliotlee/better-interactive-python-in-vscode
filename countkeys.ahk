var := clipboard
StringReplace, var, var, `n, `n, UseErrorLevel
if SubStr(var, 0) != "`n"
  ErrorLevel++
msgbox, %ErrorLevel%