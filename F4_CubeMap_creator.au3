#include <Constants.au3>

If FileExists (@ScriptDir & "\1.dds") and FileExists (@ScriptDir & "\2.dds") and FileExists (@ScriptDir & "\3.dds") and FileExists (@ScriptDir & "\4.dds") and FileExists (@ScriptDir & "\5.dds") and FileExists (@ScriptDir & "\6.dds") then
Main()
Else
ErrorFunc()
EndIf

Func Main()
$hFile = FileOpen(@ScriptDir & "\1.dds", 16)
$hOutFile = FileOpen(@ScriptDir & "\out.dds", 25)
$hText = FileRead($hFile, 112)
FileWrite($hOutFile, $hText)
FileWrite($hOutFile, "0x00FE0000000000000000000000000000")
FileClose($hFile)

$a = 0
While $a <= 6
$a = $a+1
$hFile = FileOpen(@ScriptDir & "\" & $a & ".dds", 16)

FileSetPos ($hFile, 128, 0)
$sSourceCode = FileRead($hFile)
FileWrite($hOutFile, $sSourceCode)
FileClose($hFile)

Wend

FileClose($hOutFile)

EndFunc


Func ErrorFunc()
If @KBLayout=0419 Then
MsgBox($MB_SYSTEMMODAL, "Использование", "Fallout 4 CubeMap & ShaderMap Creator" & @CRLF & @CRLF & "Чтобы создать 6-страничный .dds файл необходимо:" & @CRLF & "1. Скопировать исходные DDS файлы в папку программы" & @CRLF & "2. Переименовать исходные файлы таким образом, чтобы название соответствовало номеру страницы" & @CRLF & "Например: 1.dds, 2.dds и т.д." & @CRLF & "3. Запустить программу." & @CRLF & "В корне программы появится файл out.dds" & @CRLF & "ВНИМАНИЕ! У всех исходных файлов должны быть одинаковые параметры!" & @CRLF & "Подробности в readme_ru.txt")
Else
MsgBox($MB_SYSTEMMODAL, "Using", "Fallout 4 CubeMap & ShaderMap Creator" & @CRLF & @CRLF & "When a make multipage dds-file:" & @CRLF & "1. Coping source dds-file into program folder" & @CRLF & "2. Rename file, according to page numbers" & @CRLF & "Example: 1.dds, 2.dds etc." & @CRLF & "3. Start this program." & @CRLF & "In the program folder will be created file out.dds" & @CRLF & "WARNING! All source files must have the same parameters!" & @CRLF & "Details in readme_en.txt")
EndIf
EndFunc
