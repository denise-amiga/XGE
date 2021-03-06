' include XGE header file
#LibPath "..\..\..\library"
#Include "..\..\..\include\xge.bi"



' Create xPack object
Dim xpk As xPack

' Open a xPack file (The File must exist in read-only mode)
xpk.Open(ExePath & "\04.xpk", TRUE)

' Read the contents of the file directly into memory.
' (xPack always handles files in binary form, if it's text context, it needs to truncate the end)
Dim pMemory As ZString Ptr
Dim fi As xPack_FileInfo Ptr = xpk.UnPackMemory(1, @pMemory)
pMemory[fi->FileSize] = 0
Print *pMemory
DeAllocate(pMemory)

fi = xpk.UnPackMemory(2, @pMemory)
pMemory[fi->FileSize] = 0
Print *pMemory
DeAllocate(pMemory)

' Package opened in read-only mode do not save changes when closed
xpk.Close()

Sleep
