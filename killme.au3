; kill me if u can ^_^ 

; - you can also add this to ur code , by puting any process name u want :
; Func x($process) ]
; x('process_target.exe')
; $pid = ProcessExists($process)
; if not $pid Then Exit
 

func _x()
while 1 < 2


   Local $procHandle , $svalue , $priority , $lenght , $structure
   $procHandle = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
   $svalue = 0x8000F129
   $priority = 0x21
   $lenght = 0x4
   $structure = DLLStructCreate("Byte[4]")
   DllStructSetData($structure, 1, $svalue)
   $sRet = DllCall ("ntdll.dll" , "none" , "ZwSetInformationProcess" , "int" , $procHandle[0] , "int" , $priority , "int" , DllStructGetPtr($structure) , "int" , $lenght)

msgbox(16,"wtf"," hello ☻ kill me please <3 ")

 wend
 
 endfunc
