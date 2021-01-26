' include XGE header file
#LibPath "..\..\..\library"
#Include "..\..\..\include\xge.bi"



' Init xywh Game Engine
xge.InitW(800, 600, XGE_INIT_WINDOW Or XGE_INIT_ALPHA, "XGE - Hello World")

' load font
xge.Text.LoadFontW("..\..\..\res\font\xrf\simsun_16px_ucs2.xrf", 0)
xge.Text.LoadFontW("..\..\..\res\font\ttf\cn_zk_happy_2016.ttf", 0)

' change font size
xge.Text.SetFontSize(2, 32)

' draw text
xge.Text.DrawRectW(NULL, 0, 100, 800, 200, !"Hello World\n你好，世界\n\nxywh Game Engine\nUse freebasic to develop", 0, &HFF00, 1, 0, XGE_ALIGN_CENTER Or XGE_ALIGN_MIDDLE, 1, 6)
xge.Text.DrawRectW(NULL, 0, 300, 800, 200, !"Hello World\n你好，世界\n\nxywh Game Engine\nUse freebasic to develop", 0, &HFF00, 2, 0, XGE_ALIGN_CENTER Or XGE_ALIGN_MIDDLE, 1, 6)

' wait 5s
Sleep 5000

' release menory by XGE
xge.Unit()
