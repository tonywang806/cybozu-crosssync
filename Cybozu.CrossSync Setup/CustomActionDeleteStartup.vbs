Set WshShell = CreateObject("WScript.Shell")
strStartup = WshShell.SpecialFolders("Startup")
strFileName = strStartup + "\CrossSync.lnk"

Set WshFSO = CreateObject("Scripting.FileSystemObject")
if WshFSO.FileExists(strFileName) Then
    WshFSO.DeleteFile(strFileName)
End if

Set WshFSO = Nothing
Set WshShell = Nothing
