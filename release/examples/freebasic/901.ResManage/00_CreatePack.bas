' include XGE header file
#LibPath "..\..\..\library"
#Include "..\..\..\include\xge.bi"



' This is a program for generating test packages, which has nothing to do whih examples



' Create a xPack file
Dim xpk As xPack
xpk.Open(ExePath & "\00.xpk")

' Add files
Dim pMemory As ZString * 40
For i As UInteger = 1 To 65536
	sprintf(pMemory, "Pack File Index : %d", i)
	xpk.AppendMemory(@pMemory, strlen(@pMemory), i, XPACK_COMPRESS_NULL)
Next
xpk.Close()



' Create a xPack file
xpk.Open(ExePath & "\01.xpk")

' Add files
For i As UInteger = 2 To 100000 Step 2
	sprintf(pMemory, "Pack File New Index : %d", i)
	xpk.AppendMemory(@pMemory, strlen(@pMemory), i, XPACK_COMPRESS_NULL)
Next
xpk.Close()
