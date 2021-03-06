' include XGE header file
#LibPath "..\..\..\library"
#Include "..\..\..\include\xge.bi"



' ReBuild xPack file (The return value contains the path of the backup file, return null indicates failure)
Print "Backup File :", *xPack_ReBuild(ExePath & "\06.xpk")

' Access the reconstructed package
Dim xpk As xPack
xpk.Open(ExePath & "\06.xpk")

' Read the contents of the file directly into memory.
Dim pText As ZString Ptr
Dim fi As xPack_FileInfo Ptr = xpk.UnPackMemory(1, @pText)
pText[fi->FileSize] = 0
Print *pText
DeAllocate(pText)

Sleep

