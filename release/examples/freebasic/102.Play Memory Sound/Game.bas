' include XGE header file
#LibPath "..\..\..\library"
#Include "..\..\..\include\xge.bi"



' Init xywh Game Engine
xge.InitW(640, 480, XGE_INIT_WINDOW, "XGE - Play Memory Sound")

' load font
xge.Text.LoadFontW("..\..\..\res\font\xrf\simsun_16px_ucs2.xrf", 0)

' draw text
xge.Text.DrawRectW(NULL, 0, 0, 640, 480, "Press ESC to exit", 0, &HFF00)

' Read music into memory
Dim t_len As Integer = xFile_Size("..\..\..\res\bgm.mp3")
Dim t_mem As WString Ptr = Allocate(t_len)
xFile_Read("..\..\..\res\bgm.mp3", t_mem, 0, t_len)

' load music (XGE_ SUD_ STE_ AFRE can release memory automatically, so t_ MEM does not need to be released manually)
Dim bgm As xge.Sound Ptr = New xge.Sound(XGE_SOUND_STREAM, XGE_SUD_STE_AFRE, t_mem, t_len)

' play music
bgm->Play()

' Wait, press ESC to exit
Do
	Sleep(15)
Loop Until xInput.KeyStatus(SC_ESCAPE)

' free memory it's a good habit
Delete bgm

' release menory by XGE
xge.Unit()
