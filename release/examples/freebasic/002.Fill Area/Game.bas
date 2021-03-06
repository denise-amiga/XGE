' include XGE header file
#LibPath "..\..\..\library"
#Include "..\..\..\include\xge.bi"



' Init xywh Game Engine
xge.InitW(800, 600, XGE_INIT_WINDOW Or XGE_INIT_ALPHA, "XGE - Fill Area")

' draw a circle, draw lines to divide several areas
xge.shape.Circ(NULL, 150, 300, 80, &HFFFFFF00)
xge.shape.Lines(NULL, 50, 300, 300, 200, &HFFFFFF00)
xge.shape.Lines(NULL, 50, 200, 600, 420, &HFFFFFF00)

' fill the area with color
xge.shape.Full(NULL, 117, 251, &HFFAAAAAA, &HFFFFFF00)
xge.shape.Full(NULL, 170, 234, &HFF666666, &HFFFFFF00)
xge.shape.Full(NULL, 203, 251, &HFFFFFFFF, &HFFFFFF00)
xge.shape.Full(NULL, 160, 310, &HFF333333, &HFFFFFF00)

' draw a circle, draw lines to divide several areas again
xge.shape.Circ(NULL, 450, 300, 80, &HFFFFFF00)
xge.shape.Lines(NULL, 350, 380, 700, 160, &HFFFFFF00)

' create a image (8*8px)
Dim img As xge.Surface Ptr = New xge.Surface(8, 8)
xge.shape.RectFull(img, 0, 0, 4, 4, &HFFFF1133)
xge.shape.RectFull(img, 4, 0, 8, 4, &HFF11FF33)
xge.shape.RectFull(img, 0, 4, 4, 8, &HFF1133FF)
xge.shape.RectFull(img, 4, 4, 8, 8, &HFFFFFFFF)

' fill the area with image
' remind : only 8*8 image can be used
xge.shape.FullEx(NULL, 440, 275, img->PixAddr, &HFFFFFF00)

' free memory it's a good habit
Delete img

' wait 5s
Sleep 5000

' release menory by XGE
xge.Unit()
