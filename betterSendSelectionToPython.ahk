#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#if !WinActive("Code.exe")
+Enter::
{
	send, ^c
	sleep, 50
	oArray := StrSplit(Clipboard, "`r`n")
	send, {CtrlDown}{vkc0}{CtrlUp}
	for i, elt in oArray
	{
		send, %elt%
		if (i<oArray.MaxIndex()){
			send, {CtrlDown}{o}{CtrlUp}{down}
		} else {
			send, {Enter}
		}
	}
}
