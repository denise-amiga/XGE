' include XGE header file
#LibPath "..\..\..\library"
#Include "..\..\..\include\xge.bi"



' Expanded package information (Maximum 65535 bytes)
Type MyPackHeadInfo
	PackType As Integer
	PackText As ZString * 256
End Type



' Open a xPack file
Dim xpk As xPack
xpk.Open(ExePath & "\08.xpk", TRUE)

' Read expanded package information
Dim ExtData As MyPackHeadInfo Ptr
ExtData = xpk.GetPackExtData()
Print ExtData->PackType
Print ExtData->PackText

' Unpack files
xpk.UnPackFile(1, ExePath & "\xge_unpack.bi")
xpk.UnPackFile(2, ExePath & "\xge_unpack.dll")
xpk.UnPackFile(3, ExePath & "\bass_unpack.dll")

' close xPack
' Any changes in read-only mode will not be saved
xpk.Close()

Sleep
