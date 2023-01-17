#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#if !WinActive("Code.exe")
+Enter:: ;when you hit shift+enter
{
	tempHolder := Clipboard ; store whatever you have copied in this variable temporarily. we need to use copy-paste within the script.
	send, ^c  ;copy whatever you currently have actively selected at the time you pressed shift+enter.
	sleep, 50
	oArray := StrSplit(Clipboard, "`r`n") ;split your multi-line string into an array of separate lines
	send, {CtrlDown}{vkc0}{CtrlUp} ; switch cursor/focus to vscode's ipython terminal. vkc0 = tick/tilde
	for i, elt in oArray
	{
		send, %elt% ; type a single line
		if (i<oArray.MaxIndex()){
			send, {CtrlDown}{o}{CtrlUp}{down} ; newline/next line (without executing the code)
		} else {
			send, {Enter} ;for the final line, finally execute the entire code block at once
		}
	}
	Clipboard := tempHolder ; restore what you originally had copied back to your clipboard
}
