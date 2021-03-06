'==================================================================================
	'★ xywh Game Engine 引擎头文件
	'#-----------------------------------------------------------------------------
	'# 功能 : 
	'# 说明 : 
'==================================================================================



#Ifndef xywh_library_xge
	#Define xywh_library_xge
	
	#Ifndef XGE_SOURCE_NOLIB
		#Define XGE_SOURCE_NOLIB
		#Inclib "xge"
	#EndIf
	
	#Define XGE_EXTERNCLASS "Windows"				' Class 导出方式
	#Define XGE_EXTERNMODULE "Windows"				' NameSpace 导出方式
	#Define XGE_EXTERNSTDEXT "Windows"				' 普通函数导出方式
	
	/' -------------------------- XUI元素ID最大字符数 -------------------------- '/
	#Define XGE_XUI_IDSIZE			32
	
	
	
	/' -------------------------- 基础头文件 -------------------------- '/
	#Include Once "Crt.bi"
	#Include Once "Windows.bi"
	#Include Once "win\shlwapi.bi"
	#Include Once "Win\GdiPlus.bi"
	
	
	
	/' -------------------------- 按键扫描码 -------------------------- '/
	#Define SC_ESCAPE					&H01
	#Define SC_1						&H02
	#Define SC_2						&H03
	#Define SC_3						&H04
	#Define SC_4						&H05
	#Define SC_5						&H06
	#Define SC_6						&H07
	#Define SC_7						&H08
	#Define SC_8						&H09
	#Define SC_9						&H0A
	#Define SC_0						&H0B
	#Define SC_MINUS					&H0C
	#Define SC_EQUALS					&H0D
	#Define SC_BACKSPACE				&H0E
	#Define SC_TAB						&H0F
	#Define SC_Q						&H10
	#Define SC_W						&H11
	#Define SC_E						&H12
	#Define SC_R						&H13
	#Define SC_T						&H14
	#Define SC_Y						&H15
	#Define SC_U						&H16
	#Define SC_I						&H17
	#Define SC_O						&H18
	#Define SC_P						&H19
	#Define SC_LEFTBRACKET				&H1A
	#Define SC_RIGHTBRACKET				&H1B
	#Define SC_ENTER					&H1C
	#Define SC_CONTROL					&H1D
	#Define SC_A						&H1E
	#Define SC_S						&H1F
	#Define SC_D						&H20
	#Define SC_F						&H21
	#Define SC_G						&H22
	#Define SC_H						&H23
	#Define SC_J						&H24
	#Define SC_K						&H25
	#Define SC_L						&H26
	#Define SC_SEMICOLON				&H27
	#Define SC_QUOTE					&H28
	#Define SC_TILDE					&H29
	#Define SC_LSHIFT					&H2A
	#Define SC_BACKSLASH				&H2B
	#Define SC_Z						&H2C
	#Define SC_X						&H2D
	#Define SC_C						&H2E
	#Define SC_V						&H2F
	#Define SC_B						&H30
	#Define SC_N						&H31
	#Define SC_M						&H32
	#Define SC_COMMA					&H33
	#Define SC_PERIOD					&H34
	#Define SC_SLASH					&H35
	#Define SC_RSHIFT					&H36
	#Define SC_MULTIPLY					&H37
	#Define SC_ALT						&H38
	#Define SC_SPACE					&H39
	#Define SC_CAPSLOCK					&H3A
	#Define SC_F1						&H3B
	#Define SC_F2						&H3C
	#Define SC_F3						&H3D
	#Define SC_F4						&H3E
	#Define SC_F5						&H3F
	#Define SC_F6						&H40
	#Define SC_F7						&H41
	#Define SC_F8						&H42
	#Define SC_F9						&H43
	#Define SC_F10						&H44
	#Define SC_NUMLOCK					&H45
	#Define SC_SCROLLLOCK				&H46
	#Define SC_HOME						&H47
	#Define SC_UP						&H48
	#Define SC_PAGEUP					&H49
	#Define SC_LEFT						&H4B
	#Define SC_RIGHT					&H4D
	#Define SC_PLUS						&H4E
	#Define SC_END						&H4F
	#Define SC_DOWN						&H50
	#Define SC_PAGEDOWN					&H51
	#Define SC_INSERT					&H52
	#Define SC_DELETE					&H53
	#Define SC_F11						&H57
	#Define SC_F12						&H58
	#Define SC_LWIN						&H5B
	#Define SC_RWIN						&H5C
	#Define SC_MENU						&H5D
	
	
	/' -------------------------- 颜色定义 -------------------------- '/
	#Define COLOR_MASK_24				&HFF00FF
	#Define COLOR_MASK_32				&HFFFF00FF
	#Define COLOR_A						&HFF000000
	#Define COLOR_R						&H00FF0000
	#Define COLOR_G						&H0000FF00
	#Define COLOR_B						&H000000FF
	#Define COLOR_32					&HFFFFFFFF
	
	
	/' -------------------------- 镜像定义 -------------------------- '/
	#Define XGE_BLEND_MIRR_H			1				' 水平
	#Define XGE_BLEND_MIRR_V			2				' 垂直
	#Define XGE_BLEND_MIRR_HV			3				' 水平 + 垂直
	#Define XGE_BLEND_MIRR_VH			3				' 水平 + 垂直
	
	
	/' -------------------------- 初始化定义 -------------------------- '/
	#Define XGE_INIT_WINDOW				&H00			' 窗口模式
	#Define XGE_INIT_FULLSCREEN			&H01			' 全屏模式
	#Define XGE_INIT_NOSWITCH			&H04			' 不允许alt + enter切换窗口/全屏
	#Define XGE_INIT_NOFRAME			&H08			' 窗口没有边框
	#Define XGE_INIT_POSTOP				&H20			' 窗口置顶
	#Define XGE_INIT_ALPHA				&H40			' 开启alpha混合对于所有基础操作
	#Define XGE_INIT_HIGHPRIORITY		&H80			' 高优先权给图像处理
	
	
	/' -------------------------- 场景消息定义 -------------------------- '/
	#Define XGE_MSG_NULL				&H00			' 空消息
	#Define XGE_MSG_LOADRES				&H01			' 载入资源
	#Define XGE_MSG_FREERES				&H02			' 释放资源
	#Define XGE_MSG_FRAME				&H03			' 框架函数
	#Define XGE_MSG_DRAW				&H04			' 绘图函数
	#Define XGE_MSG_ERROR				&H05			' 错误处理
	#Define XGE_MSG_MOUSE_MOVE			&H101			' 鼠标移动
	#Define XGE_MSG_MOUSE_DOWN			&H102			' 鼠标按下
	#Define XGE_MSG_MOUSE_UP			&H103			' 鼠标弹起
	#Define XGE_MSG_MOUSE_CLICK			&H104			' 鼠标单击
	#Define XGE_MSG_MOUSE_DCLICK		&H105			' 鼠标双击
	#Define XGE_MSG_MOUSE_WHELL			&H106			' 滚轮滚动
	#Define XGE_MSG_KEY_DOWN			&H201			' 按键按下
	#Define XGE_MSG_KEY_UP				&H202			' 按键弹起
	#Define XGE_MSG_KEY_REPEAT			&H203			' 按键按住
	#Define XGE_MSG_MOUSE_ENTER			&H301			' 鼠标移入
	#Define XGE_MSG_MOUSE_EXIT			&H302			' 鼠标离开
	#Define XGE_MSG_LOSTFOCUS			&H311			' 丢失焦点
	#Define XGE_MSG_GOTFOCUS			&H312			' 获得焦点
	#Define XGE_MSG_CLOSE				&H321			' 窗口关闭
	
	
	/' -------------------------- 暂停定义 -------------------------- '/
	#Define XGE_PAUSE_DRAW				&H01			' 暂停绘制
	#Define XGE_PAUSE_FRAME				&H02			' 暂停场景框架
	
	
	/' -------------------------- 文件类型定义 -------------------------- '/
	#Define XGE_IMG_FMT_BMP				0
	#Define XGE_IMG_FMT_XGI				1
	
	
	/' -------------------------- XGI文件相关定义 -------------------------- '/
	#Define XGI_FLAG_LZ4		1						' 是否启用 LZ4 压缩
	#Define XGI_FLAG_B16		2						' 是否为 16 位图像
	
	
	/' -------------------------- 音频类型定义 -------------------------- '/
	#Define XGE_SOUND_SAMPLE			1
	#Define XGE_SOUND_MUSIC				2
	#Define XGE_SOUND_STREAM			3
	
	
	/' -------------------------- 小样载入标记定义 -------------------------- '/
	#Define XGE_SUD_SMP_LOOP			4				' 循环
	#Define XGE_SUD_SMP_MONO			2				' 单声道
	#Define XGE_SUD_SMP_8B				1				' 8位
	#Define XGE_SUD_SMP_32B				256				' 32位
	#Define XGE_SUD_SMP_SOFT			16				' 软件混音
	
	
	/' -------------------------- 流媒体载入标记定义 -------------------------- '/
	#Define XGE_SUD_STE_LOOP			4				' 循环
	#Define XGE_SUD_STE_MONO			2				' 单声道
	#Define XGE_SUD_STE_32B				256				' 32位
	#Define XGE_SUD_STE_SOFT			16				' 软件混音
	#Define XGE_SUD_STE_PRES			&H20000			' 预扫描
	#Define XGE_SUD_STE_AFRE			&H40000			' 播放结束自动释放
	#Define XGE_SUD_STE_BLOCK			&H100000		' 分段下载url流媒体 [不能循环播放]
	#Define XGE_SUD_STE_URL				&H80000000		' 从URL载入
	
	
	/' -------------------------- 音乐载入标记定义 -------------------------- '/
	#Define XGE_SUD_MUS_LOOP			4				' 循环
	#Define XGE_SUD_MUS_MONO			2				' 单声道
	#Define XGE_SUD_MUS_32B				256				' 32位
	#Define XGE_SUD_MUS_SOFT			16				' 软件混音
	#Define XGE_SUD_MUS_PRES			&H20000			' 预扫描
	#Define XGE_SUD_MUS_AFRE			&H40000			' 播放结束自动释放
	#Define XGE_SUD_MUS_SUR				&H800			' 环绕
	#Define XGE_SUD_MUS_SUR2			&H1000			' 环绕 [模式2]
	#Define XGE_SUD_MUS_NSMP			&H100000		' 不加载小样
	
	
	/' -------------------------- 音量设置定义 -------------------------- '/
	#Define XGE_SUD_VOL_ALL				&H0
	#Define XGE_SUD_VOL_SMP				&H4
	#Define XGE_SUD_VOL_STE				&H5
	#Define XGE_SUD_VOL_MUS				&H6
	
	
	/' -------------------------- 文本对齐定义 -------------------------- '/
	#Define XGE_ALIGN_LEFT				&H0				' 横向左对齐
	#Define XGE_ALIGN_CENTER			&H1				' 横向居中对齐
	#Define XGE_ALIGN_RIGHT				&H2				' 横向右对齐
	#Define XGE_ALIGN_TOP				&H0				' 纵向上对齐
	#Define XGE_ALIGN_MIDDLE			&H4				' 纵向居中对齐
	#Define XGE_ALIGN_BOTTOM			&H8				' 纵向底部对齐
	
	
	/' -------------------------- 字体风格定义 -------------------------- '/
	#Define XGE_FONT_BOLD				&H10			' 粗体
	#Define XGE_FONT_ITALIC				&H20			' 斜体
	#Define XGE_FONT_BOLDITALIC			&H30			' 粗体 + 斜体
	#Define XGE_FONT_UNDERLINE			&H40			' 下划线
	#Define XGE_FONT_SRTIKEOUT			&H80			' 删除线
	
	
	/' -------------------------- GUI布局方式定义 -------------------------- '/
	#Define XUI_LAYOUT_COORD			0				' 布局系统 - 浮动布局，根据坐标决定位置
	#Define XUI_LAYOUT_L2R				1				' 布局系统 - 横向布局 [从左到右]
	#Define XUI_LAYOUT_R2L				2				' 布局系统 - 横向布局 [从右到左]
	#Define XUI_LAYOUT_T2B				3				' 布局系统 - 纵向布局 [从上到下]
	#Define XUI_LAYOUT_B2T				4				' 布局系统 - 纵向布局 [从下到上]
	
	
	/' -------------------------- GUI布局尺度定义 -------------------------- '/
	#Define XUI_LAYOUT_RULER_COORD		-1				' 布局尺度 - 绝对坐标 [打破父控件的布局方案]
	#Define XUI_LAYOUT_RULER_PIXEL		0				' 布局尺度 - 像素
	#Define XUI_LAYOUT_RULER_RATIO		1				' 布局尺度 - 剩余百分比
	
	
	/' -------------------------- 元素 ClassID 定义 -------------------------- '/
	#Define XUI_CLASS_ELEMENT			0				' 基本元素
	#Define XUI_CLASS_BUTTON			1				' 按钮(包含单选、复选类元素)
	#Define XUI_CLASS_STATIC			2				' 静态元素(包含标签、图片等)
	#Define XUI_CLASS_SCROLLBAR			3				' 滚动条(包含横向和纵向)
	#Define XUI_CLASS_SCROLLVIEW		4				' 滚动视图
	#Define XUI_CLASS_LISTBOX			5				' 列表框
	#Define XUI_CLASS_COMBOBOX			6				' 组合框
	#Define XUI_CLASS_PROGRESSBAR		7				' 进度条
	#Define XUI_CLASS_SLIDER			8				' 滑块
	#Define XUI_CLASS_ANIMATBOX			9				' 动画
	#Define XUI_CLASS_LINEEDIT			10				' 行编辑框
	#Define XUI_CLASS_TEXTBOX			11				' 全功能文本编辑框
	#Define XUI_CLASS_WINDOW			12				' 动画
	#Define XUI_CLASS_USER				&H10000			' 用户自定义元素的开始ID
	
	
	/' -------------------------- 元素滚动条显示状态定义 -------------------------- '/
	#Define XUI_SCROLL_V				1				' 显示纵向滚动条
	#Define XUI_SCROLL_H				2				' 显示横向滚动条
	#Define XUI_SCROLL_VH				3				' 横向和纵向滚动条都显示
	#Define XUI_SCROLL_HV				3				' 横向和纵向滚动条都显示
	
	
	/' -------------------------- 元素进度条显示状态定义 -------------------------- '/
	#Define XUI_PROGRESSBAR_HIDE		0				' 不显示
	#Define XUI_PROGRESSBAR_PERCENT		1				' 显示百分比
	#Define XUI_PROGRESSBAR_VALUE		2				' 显示数值
	
	
	/' -------------------------- XUI IME 相关事件ID定义 -------------------------- '/
	#Define XUI_IME_INPUT				0				' IME传递输入数据
	#Define XUI_IME_STARTCOMPOSITION	1				' IME开始输入
	#Define XUI_IME_COMPTEXT			2				' IME输入变动
	#Define XUI_IME_ENDCOMPOSITION		3				' IME输入结束
	#Define XUI_IME_CHAR				4				' WM_CHAR
	
	
	/' -------------------------- 文件查找规则 -------------------------- '/
	#Define XFILE_RULE_NoAttribEx		0				' 不限制
	#Define XFILE_RULE_FloderOnly		1				' 只查找目录
	#Define XFILE_RULE_PointFloder		2				' 去除根目录及父级目录
	
	
	
	/' -------------------------- 消息结构体 -------------------------- '/
	Type XGE_EVENT
		tpe As Integer
		Union
			Type
				scancode As Integer
				ascii As Integer
			End Type
			Type
				x As Integer
				y As Integer
				dx As Integer
				dy As Integer
			End Type
			Type
				param1 As Integer
				param2 As Integer
				param3 As Integer
				param4 As Integer
			End Type
			Type
				mx As Integer
				my As Integer
				button As Integer
			End Type
			Type
				zx As Integer
				zy As Integer
				z As Integer
				nz As Integer
			End Type
			w As Integer
		End Union
	End Type
	
	
	
	/' -------------------------- 图像结构体 -------------------------- '/
	Type FBGFX_IMAGE
		tpe as UInteger
		bpp As Integer
		Width As UInteger
		Height As UInteger
		Pitch As UInteger
		reserved(1 To 12) As UByte
	End Type
	
	
	
	/' -------------------------- 点数据结构 -------------------------- '/
	Type xge_Coord
		x As Integer
		y As Integer
	End Type
	
	
	
	/' -------------------------- 矩形数据结构 -------------------------- '/
	Type xge_Rect
		Union
			x As Integer
			LeftOffset As Integer
		End Union
		Union
			y As Integer
			TopOffset As Integer
		End Union
		Union
			w As Integer
			RightOffset As Integer
		End Union
		Union
			h As Integer
			BottomOffset As Integer
		End Union
	End Type
	
	
	
	/' -------------------------- xPack相关定义 -------------------------- '/
	
	' 版本信息
	#Define XPACK_VERSION			&H054B5058		' 文件头识别信息 [xpk5]
	#Define XPACK_VERSION_COMP		&H05435058		' 文件头识别信息 [xpc5] (压缩了LDB数据段的文件包)
	
	' 默认压缩算法
	#Define XPACK_COMPRESS_NULL		0				' 不使用压缩算法
	#Define XPACK_COMPRESS_LZ4		1				' LZ4  压缩算法
	#Define XPACK_COMPRESS_LZMA		2				' LZMA 压缩算法
	
	' 文件类型
	#Define XPACK_TYPE_BINARY		0				' 二进制文件
	#Define XPACK_TYPE_TEXT			1				' 文本文件
	#Define XPACK_TYPE_IMAGE		2				' 图像文件
	#Define XPACK_TYPE_SOUND		3				' 声音文件
	#Define XPACK_TYPE_FONT			4				' 字体文件
	#Define XPACK_TYPE_SCRIPT		5				' 脚本文件
	#Define XPACK_TYPE_XTABLE		6				' xTable 数据库文件
	#Define XPACK_TYPE_ANIMAT		7				' 动画文件
	
	' 文件标记
	#Define XPACK_FILEFLAG_CUSE		1				' 常用文件 [暂无实际意义]
	
	' 错误ID
	#Define XPACK_ERROR_FILEOPEN	1				' 无法打开文件
	#Define XPACK_ERROR_READONLY	2				' 只读模式
	#Define XPACK_ERROR_FILEXIST	3				' 文件不存在
	#Define XPACK_ERROR_PACKOPEN	4				' 没有打开文件包
	#Define XPACK_ERROR_MEMALLOC	5				' 内存分配错误
	#Define XPACK_ERROR_VERERROR	6				' 文件包版本不兼容
	#Define XPACK_ERROR_DECOMPER	7				' 解压缩数据失败
	
	' 文件头 [24byte]
	Type xPack_HeadInfo Field = 1
		PackVer As UInteger							' 标志头 [xpk5、xpc5]
		FileCount As UInteger						' 文件数量
		LDB_Addr As UInteger						' 文件列表段偏移
		LDB_Size As UInteger						' 文件列表段长度
		LDB_Hash As Integer							' 文件列表段HASH值
		PackExtSize As UShort						' 文件包附加数据大小
		FileExtSize As UShort						' 文件信息附加数据大小
	End Type
	
	' 文件信息基础结构 [24byte]
	Type xPack_FileInfo Field = 1
		FileAddr As UInteger						' 文件位置
		DataSize As UInteger						' 文件数据大小
		FileSize As UInteger						' 文件实际大小
		FileHash As Integer							' 文件HASH值
		FileIndex As UInteger						' 文件编号
		Compress As UByte							' 文件使用的压缩算法
		FileType As UByte							' 文件类型 [0=binary、1=Text、2=Image、3=Sound、4=Font、5=Script、6=xTable、7=Animat]
		FileFlag As UShort							' 文件位标记
	End Type
	
	
	
	/' -------------------------- ResManage 相关定义 -------------------------- '/
	
	' 资源索引 [20byte]
	Type ResManage_Item Field = 1
		ResIndex As UInteger						' 资源索引
		ResPack As Any Ptr							' 文件包对象
		ResPos As UInteger							' 文件在文件包对象的数据位置 (是数据位置不是索引)
		Union
			AddOrder As ULongInt					' 添加顺序 (用于去重)
			Type
				ObjectCache As Any Ptr				' 对象缓存
				RefCount As UShort					' 引用计数
				FileType As UByte					' 文件类型
				LoadType As UByte					' 载入类型
			End Type
		End Union
	End Type
	
	' 区间映射表
	Type ResManage_RangeMap
		ResIndex As UInteger
		IndexPos As UInteger
	End Type
	
	
	
	/' -------------------------- 数据类型定义 -------------------------- '/
	Type XGE_SCENE_PROC As Function(msg As Integer, param As Integer, eve As XGE_EVENT Ptr) As Integer
	Type XGE_EVENT_PROC As Sub(eve As XGE_EVENT Ptr)
	Type XGE_DELAY_PROC As Sub(ms As Integer)
	Type XGE_BLOAD_PROC As Function(img As Any Ptr, addr As WString Ptr, size As UInteger) As Integer
	Type XGE_FLOAD_PROC As Function(fd As Any Ptr, Addr As WString Ptr, iSize As UInteger, param As Any Ptr) As Integer
	Type XGE_DRAW_BLEND As Sub(SrcAddr As Any Ptr, SrcPitch As Integer, SrcLineS As Integer, DstAddr As Any Ptr, DstPitch As Integer, DstLineS As Integer, w As Integer, h As Integer, param As Integer)
	Type XGE_DRAW_CUSTOM As Function(src As UInteger, dst As UInteger, param As Any Ptr) As UInteger
	
	
	
	
	
	Extern XGE_EXTERNMODULE
		
		
		
		/' -------------------------- 栈结构类[结构体] -------------------------- '/
		Type xStack
			' 构造/析构
			Declare Constructor(max As UInteger, unitsize As UInteger)
			Declare Destructor()
			
			' 初始化/卸载
			Declare Function Init(max As UInteger, unitsize As UInteger) As Integer
			Declare Sub Unit()
			
			' 压栈
			Declare Function Push(dat As Any Ptr) As Integer
			
			' 出栈
			Declare Function Pop(c As UInteger) As Any Ptr
			
			' 栈顶
			Declare Function Top() As Any Ptr
			
			' 压栈数量
			Declare Function Count() As UInteger
			
			Private:
				Dim pMaxCount As UInteger
				Dim pUnitSize As UInteger
				Dim pStackMem As Any Ptr
				Dim pStackTop As UInteger
		End Type
		
		
		
		/' -------------------------- 结构化内存管理器 -------------------------- '/
		Type xBsmm
			' 管理器内存指针
			StructMemory As Any Ptr
			
			' 成员占用内存长度
			StructLenght As UInteger
			
			' 管理器中存在多少成员
			StructCount As UInteger
			
			' 已经申请的结构数量
			AllocCount As UInteger
			
			' 预分配内存步长
			AllocStep As UInteger
			
			' 构造函数
			Declare Constructor()
			Declare Constructor(iItemLenght As UInteger, PreassignStep As UInteger = 32, PreassignLenght As UInteger = 0)
			
			' 析构函数
			Declare Destructor()
			
			' 添加成员
			Declare Function InsertStruct(iPos As UInteger, iCount As UInteger = 1) As UInteger
			Declare Function AppendStruct(iCount As UInteger = 1) As UInteger
			
			' 删除成员
			Declare Function DeleteStruct(iPos As UInteger, iCount As UInteger = 1) As Integer
			
			' 批量删除成员
			Declare Sub DeleteStructs(iPosArray As UInteger Ptr, iCount As UInteger, bSort As Integer = FALSE)
			
			' 移动成员
			Declare Function SwapStruct(iPosA As UInteger, iPosB As UInteger) As Integer
			
			' 获取成员指针
			Declare Function GetPtrStruct(iPos As UInteger) As Any Ptr
			
			' 分配内存
			Declare Function CallocMemory(iCount As UInteger) As Integer
			
			' 重置（释放资源）
			Declare Sub ReInitManage()
		End Type
		
		
		
		/' -------------------------- 字符串缓冲区管理器 [UCS2] -------------------------- '/
		Type xStringBuffer
			
			' 内存指针
			BufferMemory As WString Ptr
			
			' 数据长度
			BufferLenght As UInteger
			
			' 已经申请的内存长度
			AllocLenght As UInteger
			
			' 预分配内存步长
			AllocStep As UInteger
			
			' 附加数据
			Tag As Integer
			
			' 构造函数
			Declare Constructor()
			
			' 析构函数
			Declare Destructor()
			
			' 设置数据
			Declare Function SetText(sText As WString Ptr, iTextSize As UInteger = 0) As Integer
			
			' 追加写数据
			Declare Function AppendText(sText As WString Ptr, iTextSize As UInteger = 0) As Integer
			
			' 插入写数据
			Declare Function InsertText(iPos As UInteger, iSize As UInteger, sText As WString Ptr, iTextSize As UInteger = 0) As Integer
			
			' 删除数据
			Declare Function DeleteText(iPos As UInteger, iSize As UInteger) As Integer
			
			' 分配内存
			Declare Function MallocMemory(iLenght As UInteger) As Integer
			
			' 释放内存
			Declare Sub FreeMemory()
			
		End Type
		
		
		
		/' -------------------------- xPack 5.0 文件包系统 -------------------------- '/
		Type xPack
			
			' 文件头信息
			HeadInfo As xPack_HeadInfo Ptr
			
			' 最后一次错误ID
			LastError As Integer
			
			' 构造和析构
			Declare Constructor()
			Declare Constructor(sFile As ZString Ptr, bReadOnly As Integer = FALSE)
			Declare Constructor(sFile As WString Ptr, bReadOnly As Integer = FALSE)
			Declare Destructor()
			
			' 打开文件包
			Declare Function Open(sFile As ZString Ptr, bReadOnly As Integer = FALSE) As Integer
			Declare Function Open(sFile As WString Ptr, bReadOnly As Integer = FALSE) As Integer
			
			' 保存文件包
			Declare Sub Save()
			
			' 关闭文件包
			Declare Sub Close()
			
			' 获取文件数量
			Declare Function Count() As UInteger
			
			' 添加文件
			Declare Function AppendFile(sFile As ZString Ptr, iIndex As UInteger, iComp As Integer = XPACK_COMPRESS_LZ4) As Any Ptr
			Declare Function AppendFile(sFile As WString Ptr, iIndex As UInteger, iComp As Integer = XPACK_COMPRESS_LZ4) As Any Ptr
			Declare Function AppendMemory(pMemory As Any Ptr, iSize As UInteger, iIndex As UInteger, iComp As Integer = XPACK_COMPRESS_LZ4) As Any Ptr
			
			' 删除文件
			Declare Sub RemoveFile(iIndex As UInteger)
			
			' 解压文件
			Declare Function UnPackFile(iIndex As UInteger, sFile As ZString Ptr) As Integer
			Declare Function UnPackFile(iIndex As UInteger, sFile As WString Ptr) As Integer
			Declare Function UnPackMemory(iIndex As UInteger, pMemory As Any Ptr Ptr) As Any Ptr
			
			' 获取文件信息
			Declare Function GetFileInfo(iIndex As UInteger) As Any Ptr
			
			' 获取包扩展数据结构体指着
			Declare Function GetPackExtData() As Any Ptr
			
			' 内部数据
			FileHdr As HANDLE			' 文件句柄
			LDB As xBsmm				' 文件列表
			OnlyRead As Integer			' 只读模式
			
			' 内部函数
			Declare Function IndexToPos(iIndex As UInteger) As UInteger
			Declare Sub Private_RemoveFile(iPos As UInteger)
			Declare Sub Private_AppendMemory(pMemory As Any Ptr, iSize As UInteger, iIndex As UInteger, FileInfo As xPack_FileInfo Ptr, iComp As Integer = XPACK_COMPRESS_LZ4)
			Declare Function Private_UnPackMemory(FileInfo As xPack_FileInfo Ptr, pMemory As Any Ptr) As Integer
		End Type
		
		
		
		Namespace xge
			
			
			
			/' -------------------------- 核心库 -------------------------- '/
			Declare Function InitA(w As UInteger, h As UInteger, init_gfx As Integer = XGE_INIT_WINDOW, title As ZString Ptr = NULL) As Integer
			Declare Function InitW(w As UInteger, h As UInteger, init_gfx As Integer = XGE_INIT_WINDOW, title As WString Ptr = NULL) As Integer
			Declare Sub Unit()
			Declare Function SetScreen(w As UInteger, h As UInteger, init_gfx As Integer = XGE_INIT_WINDOW) As Integer
			Declare Function hWnd() As HANDLE
			Declare Sub Clear()
			Declare Sub Lock()
			Declare Sub UnLock()
			Declare Sub Sync()
			Declare Function Width() As UInteger
			Declare Function Height() As UInteger
			Declare Function PixAddr() As Any Ptr
			Declare Function PixSize() As UInteger
			Declare Function Pitch() As UInteger
			Declare Sub SetSoundVol(tpe As Integer, vol As Integer)
			Declare Function GetSoundVol(tpe As Integer) As Integer
			
			
			
			/' -------------------------- 图像类 -------------------------- '/
			Type Surface
				img As FBGFX_IMAGE Ptr
				
				' 构造 [空]
				Declare Constructor()
				
				' 构造 [创建]
				Declare Constructor(w As UInteger, h As UInteger)
				
				' 构造 [加载]
				Declare Constructor(addr As ZString Ptr, size As UInteger = 0)
				Declare Constructor(addr As WString Ptr, size As UInteger = 0)
				
				' 析构
				Declare Destructor()
				
				' 创建图像
				Declare Function Create(w As UInteger, h As UInteger) As Integer
				
				' 载入图像
				Declare Function Load(addr As ZString Ptr, size As UInteger = 0) As Integer
				Declare Function Load(addr As WString Ptr, size As UInteger = 0) As Integer
				
				' 保存图像
				Declare Function Save(addr As ZString Ptr, tpe As UInteger = 0, flag As Integer = 0) As Integer
				Declare Function Save(addr As WString Ptr, tpe As UInteger = 0, flag As Integer = 0) As Integer
				
				' 释放图像
				Declare Sub Free()
				
				' 清除图像
				Declare Sub Clear()
				
				' 获取图像属性
				Declare Function Width() As UInteger
				Declare Function Height() As UInteger
				Declare Function PixAddr() As Any Ptr
				Declare Function PixSize() As UInteger
				Declare Function Pitch() As UInteger
				
				' 创建图像副本
				Declare Function Copy(x As Integer, y As Integer, w As Integer, h As Integer) As xge.Surface Ptr
				
				' 绘制
				Declare Sub Draw(sf As xge.Surface Ptr, x As Integer, y As Integer)
				Declare Sub DrawEx(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer)
				Declare Sub Draw_Add(sf As xge.Surface Ptr, x As Integer, y As Integer, mul As Integer = 255)
				Declare Sub DrawEx_Add(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer, mul As Integer = 255)
				Declare Sub Draw_Alpha(sf As xge.Surface Ptr, x As Integer, y As Integer)
				Declare Sub DrawEx_Alpha(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer)
				Declare Sub Draw_Alpha2(sf As xge.Surface Ptr, x As Integer, y As Integer, a As Integer)
				Declare Sub DrawEx_Alpha2(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer, a As Integer)
				Declare Sub Draw_Trans(sf As xge.Surface Ptr, x As Integer, y As Integer)
				Declare Sub DrawEx_Trans(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer)
				Declare Sub Draw_And(sf As xge.Surface Ptr, x As Integer, y As Integer)
				Declare Sub DrawEx_And(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer)
				Declare Sub Draw_Or(sf As xge.Surface Ptr, x As Integer, y As Integer)
				Declare Sub DrawEx_Or(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer)
				Declare Sub Draw_PSet(sf As xge.Surface Ptr, x As Integer, y As Integer)
				Declare Sub DrawEx_PSet(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer)
				Declare Sub Draw_Xor(sf As xge.Surface Ptr, x As Integer, y As Integer)
				Declare Sub DrawEx_Xor(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer)
				Declare Sub Draw_Gray(sf As xge.Surface Ptr, x As Integer, y As Integer)
				Declare Sub DrawEx_Gray(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer)
				Declare Sub Draw_Mirr(sf As xge.Surface Ptr, x As Integer, y As Integer, flag As Integer)
				Declare Sub DrawEx_Mirr(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer, flag As Integer)
				Declare Sub Draw_Shade(sf As xge.Surface Ptr, x As Integer, y As Integer, mask As UByte)
				Declare Sub DrawEx_Shade(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer, mask As UByte)
				Declare Sub Draw_Custom(sf As xge.Surface Ptr, x As Integer, y As Integer, bk As XGE_DRAW_CUSTOM, param As Any Ptr = NULL)
				Declare Sub DrawEx_Custom(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer, bk As XGE_DRAW_CUSTOM, param As Any Ptr = NULL)
				Declare Sub Draw_Blend(sf As xge.Surface Ptr, x As Integer, y As Integer, bk As Any Ptr, param As Integer = 0)
				Declare Sub DrawEx_Blend(sf As xge.Surface Ptr, x As Integer, y As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer, bk As Any Ptr, param As Integer = 0)
			End Type
			
			
			/' -------------------------- Gdi图像类 -------------------------- '/
			Type GdiSurface Extends Surface
				hDC As HANDLE
				hBitmap As HANDLE
				BitmapAddr As Any Ptr
				gfx As GdiPlus.GpGraphics Ptr
				
				' 构造 [空]
				Declare Constructor()
				
				' 构造 [创建]
				Declare Constructor(w As UInteger, h As UInteger)
				
				' 构造 [加载]
				Declare Constructor(addr As ZString Ptr, size As UInteger = 0)
				Declare Constructor(addr As WString Ptr, size As UInteger = 0)
				
				' 析构
				Declare Destructor()
				
				' 创建图像
				Declare Function Create(w As UInteger, h As UInteger) As Integer
				
				' 载入图像
				Declare Function Load(addr As ZString Ptr, size As UInteger = 0) As Integer
				Declare Function Load(addr As WString Ptr, size As UInteger = 0) As Integer
				
				' 释放图像
				Declare Sub Free()
				
				' GDI 绘图
				Declare Sub PrintLine(x1 As Integer, y1 As Integer, x2 As Integer, y2 As Integer, c As UInteger)
				Declare Sub PrintRect(x As Integer, y As Integer, w As Integer, h As Integer, c As UInteger)
				Declare Sub PrintRectFull(x As Integer, y As Integer, w As Integer, h As Integer, c As UInteger)
				Declare Sub PrintCirc(x As Integer, y As Integer, w As Integer, h As Integer, c As UInteger)
				Declare Sub PrintCircFull(x As Integer, y As Integer, w As Integer, h As Integer, c As UInteger)
				Declare Sub PrintText(x As Integer, y As Integer, w As Integer, h As Integer, f As WString Ptr, px As Integer, flag As Integer, c As UInteger, txt As WString Ptr)
				Declare Sub PrintText(x As Integer, y As Integer, w As Integer, h As Integer, f As WString Ptr, px As Integer, flag As Integer, c As UInteger, weight As Integer, txt As WString Ptr)
				Declare Sub PrintText(x As Integer, y As Integer, w As Integer, h As Integer, f As WString Ptr, px As Integer, flag As Integer, c1 As UInteger, c2 As UInteger, weight As Integer, txt As WString Ptr)
				Declare Sub PrintText(x As Integer, y As Integer, w As Integer, h As Integer, f As WString Ptr, px As Integer, flag As Integer, addr As WString Ptr, size As Integer, txt As WString Ptr)
				Declare Sub PrintImage(x As Integer, y As Integer, addr As WString Ptr, size As Integer = 0)
				Declare Sub PrintImageDpi(x As Integer, y As Integer, addr As WString Ptr, size As Integer = 0)
				Declare Sub PrintImageZoom(x As Integer, y As Integer, w As Integer, h As Integer, addr As WString Ptr, size As Integer = 0)
				Declare Sub PrintImageEx(x As Integer, y As Integer, w As Integer, h As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer, addr As WString Ptr, size As Integer = 0)
				Declare Sub PrintImageFull(x As Integer, y As Integer, w As Integer, h As Integer, addr As WString Ptr, size As Integer = 0)
				Declare Sub PrintText(x As Integer, y As Integer, w As Integer, h As Integer, f As ZString Ptr, px As Integer, flag As Integer, c As UInteger, txt As ZString Ptr)
				Declare Sub PrintText(x As Integer, y As Integer, w As Integer, h As Integer, f As ZString Ptr, px As Integer, flag As Integer, c As UInteger, weight As Integer, txt As ZString Ptr)
				Declare Sub PrintText(x As Integer, y As Integer, w As Integer, h As Integer, f As ZString Ptr, px As Integer, flag As Integer, c1 As UInteger, c2 As UInteger, weight As Integer, txt As ZString Ptr)
				Declare Sub PrintText(x As Integer, y As Integer, w As Integer, h As Integer, f As ZString Ptr, px As Integer, flag As Integer, addr As ZString Ptr, size As Integer, txt As ZString Ptr)
				Declare Sub PrintImage(x As Integer, y As Integer, addr As ZString Ptr, size As Integer = 0)
				Declare Sub PrintImageDpi(x As Integer, y As Integer, addr As ZString Ptr, size As Integer = 0)
				Declare Sub PrintImageZoom(x As Integer, y As Integer, w As Integer, h As Integer, addr As ZString Ptr, size As Integer = 0)
				Declare Sub PrintImageEx(x As Integer, y As Integer, w As Integer, h As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer, addr As ZString Ptr, size As Integer = 0)
				Declare Sub PrintImageFull(x As Integer, y As Integer, w As Integer, h As Integer, addr As ZString Ptr, size As Integer = 0)
			End Type
			
			
			/' -------------------------- 声音类 -------------------------- '/
			Type Sound
				SoundObj As UInteger
				
				' 构造 [空]
				Declare Constructor()
				
				' 构造 [加载]
				Declare Constructor(tpe As Integer, flag As Integer, addr As ZString Ptr, size As UInteger = 0, max As Integer = 65535)
				Declare Constructor(tpe As Integer, flag As Integer, addr As WString Ptr, size As UInteger = 0, max As Integer = 65535)
				
				' 析构
				Declare Destructor()
				
				' 载入声音
				Declare Function Load(tpe As Integer, flag As Integer, addr As ZString Ptr, size As UInteger = 0, max As Integer = 65535) As Integer
				Declare Function Load(tpe As Integer, flag As Integer, addr As WString Ptr, size As UInteger = 0, max As Integer = 65535) As Integer
				
				' 释放声音
				Declare Sub Free()
				
				' 声音类型
				Declare Function GetType() As Integer
				
				' 声音控制
				Declare Sub Play()
				Declare Sub Stop()
				Declare Sub Pause()
				Declare Sub Resume()
				
				Protected:
					pTpe As Integer
			End Type
			
			
			/' -------------------------- 资源管理系统 -------------------------- '/
			Type ResManage
				PackList As xBsmm
				IndexList As xBsmm
				RangeList As xBsmm
				IndexMin As UInteger
				IndexMax As UInteger
				
				' 构造 [空]
				Declare Constructor()
				
				' 析构
				Declare Destructor()
				
				' 载入文件包
				Declare Function AddPack(sPath As ZString Ptr) As UInteger
				Declare Function AddPack(sPath As WString Ptr) As UInteger
				
				' 释放文件包
				Declare Sub FreePack(iPos As UInteger)
				
				' 创建索引
				Declare Sub CreateIndex()
				
				' 清空索引
				Declare Sub ClearIndex()
				
				' 根据索引获取信息位置
				Declare Function IndexToPos(index As UInteger) As UInteger
				Declare Function IndexToItem(index As UInteger) As ResManage_Item Ptr
				
				' 载入图片
				Declare Function LoadPicture(index As UInteger) As xge.Surface Ptr
				
				' 载入音乐
				Declare Function LoadMusic(index As UInteger, flag As Integer = 0) As xge.Sound Ptr
				Declare Function LoadSample(index As UInteger, flag As Integer = 0) As xge.Sound Ptr
				
				' 载入字体 (通过文本模块释放)
				Declare Function LoadFont(index As UInteger) As UInteger
				
				' 载入任意数据
				Declare Function LoadBinary(index As UInteger) As Any Ptr
				
				' 释放资源
				Declare Sub FreeAll()
				Declare Sub FreeRes(index As UInteger)
				
			End Type
			
			
			/' -------------------------- 字体驱动结构体 -------------------------- '/
			Type FontDriver
				
				Font As Any Ptr
				
				FontSizeInt As Integer
				WidthInt As Integer
				HeightInt As Integer
				
				FontSizeFloat As Single
				WidthFloat As Single
				HeightFloat As Single
				
				Tag As Integer
				TagFloat As Single
				TagPtr As Any Ptr
				
				' 必要的接口
				DrawWordW As Sub(fd As FontDriver Ptr, sf As xge.Surface Ptr, px As Integer, py As Integer, w As Integer, h As Integer, iCode As UInteger, iColor As Integer, Style As Integer)
				DrawWordA As Sub(fd As FontDriver Ptr, sf As xge.Surface Ptr, px As Integer, py As Integer, w As Integer, h As Integer, iCode As UInteger, iColor As Integer, Style As Integer)
				WordInfoW As Sub(fd As FontDriver Ptr, iCode As Integer, Style As Integer, w As Integer Ptr, h As Integer Ptr)
				WordInfoA As Sub(fd As FontDriver Ptr, iCode As Integer, Style As Integer, w As Integer Ptr, h As Integer Ptr)
				
				' 清理字库(删除字库的时候用，比如释放内存之类的)
				FreeFont As Sub(fd As FontDriver Ptr)
				
				' 设置字体大小
				SetFontSize As Sub(fd As FontDriver Ptr, size As UInteger)
				
				' 测量文字的宽度和高度
				GetTextWidthW_Fast As Function(fd As FontDriver Ptr, txt As WString Ptr, txtLen As UInteger, Style As Integer, wd As Integer) As Integer
				GetTextWidthA_Fast As Function(fd As FontDriver Ptr, txt As ZString Ptr, txtLen As UInteger, Style As Integer, wd As Integer) As Integer
				GetTextRectW_Fast As Function(fd As FontDriver Ptr, txt As WString Ptr, txtLen As UInteger, Style As Integer, align As Integer, wd As Integer, ld As Integer) As xge_Rect
				GetTextRectA_Fast As Function(fd As FontDriver Ptr, txt As ZString Ptr, txtLen As UInteger, Style As Integer, align As Integer, wd As Integer, ld As Integer) As xge_Rect
				
				' 根据坐标或宽度反推文字的位置
				WidthToPosW_Fast As Function(fd As FontDriver Ptr, cw As Integer, txt As WString Ptr, txtLen As UInteger, Style As Integer, wd As Integer) As UInteger
				WidthToPosA_Fast As Function(fd As FontDriver Ptr, cw As Integer, txt As ZString Ptr, txtLen As UInteger, Style As Integer, wd As Integer) As UInteger
				
				' 输出一行文字
				DrawLineW_Fast As Function(fd As FontDriver Ptr, sf As xge.Surface Ptr, x As Integer, y As Integer, txt As WString Ptr, txtLen As UInteger, iColor As Integer, Style As Integer, wd As Integer) As xge_Rect
				DrawLineA_Fast As Function(fd As FontDriver Ptr, sf As xge.Surface Ptr, x As Integer, y As Integer, txt As ZString Ptr, txtLen As UInteger, iColor As Integer, Style As Integer, wd As Integer) As xge_Rect
				
				' 输出一些文字到一个矩形范围内 [ align:对其方式、wd:字间距、ld:行间距 ] [暂未实现自动换行功能]
				DrawRectW_Fast As Function(fd As FontDriver Ptr, sf As xge.Surface Ptr, x As Integer, y As Integer, w As Integer, h As Integer, txt As WString Ptr, txtLen As UInteger, iColor As Integer, Style As Integer, align As Integer, wd As Integer, ld As Integer) As xge_Rect
				DrawRectA_Fast As Function(fd As FontDriver Ptr, sf As xge.Surface Ptr, x As Integer, y As Integer, w As Integer, h As Integer, txt As ZString Ptr, txtLen As UInteger, iColor As Integer, Style As Integer, align As Integer, wd As Integer, ld As Integer) As xge_Rect
				
			End Type
			
			
			/' -------------------------- 文字渲染库 -------------------------- '/
			Namespace Text
				
				' 加载字体 [ 目前支持 xrf字体 和 truetype字体 ] [ ttc字体包加载时通过param参数指定加载的字体ID ]
				Declare Function LoadFontA(Addr As ZString Ptr, iSize As UInteger, param As Any Ptr = NULL) As UInteger
				Declare Function LoadFontW(Addr As WString Ptr, iSize As UInteger, param As Any Ptr = NULL) As UInteger
				
				' 移除字体 [移除字体后字体编号会变动，慎用]
				Declare Function RemoveFont(idx As UInteger) As Integer
				
				' 取得已加载的字体数量
				Declare Function FontCount() As Integer
				
				' 设置字体大小
				Declare Sub SetFontSize(idx As UInteger, size As UInteger)
				
				' 获取字体大小 [字体高度像素]
				Declare Function GetFontSize(idx As UInteger) As Integer
				
				' 测量文字的宽度和高度
				Declare Function GetTextWidthW(txt As WString Ptr, txtLen As UInteger = 0, fontid As Integer = 1, Style As Integer = 0, wd As Integer = 0) As Integer
				Declare Function GetTextWidthA(txt As ZString Ptr, txtLen As UInteger = 0, fontid As Integer = 1, Style As Integer = 0, wd As Integer = 0) As Integer
				Declare Function GetTextRectW(txt As WString Ptr, txtLen As UInteger = 0, fontid As Integer = 1, Style As Integer = 0, align As Integer = XGE_ALIGN_CENTER Or XGE_ALIGN_MIDDLE, wd As Integer = 0, ld As Integer = 0) As xge_Rect
				Declare Function GetTextRectA(txt As ZString Ptr, txtLen As UInteger = 0, fontid As Integer = 1, Style As Integer = 0, align As Integer = XGE_ALIGN_CENTER Or XGE_ALIGN_MIDDLE, wd As Integer = 0, ld As Integer = 0) As xge_Rect
				
				' 根据坐标或宽度反推文字的位置
				Declare Function WidthToPosW(cw As Integer, txt As WString Ptr, txtLen As UInteger = 0, fontid As Integer = 1, Style As Integer = 0, wd As Integer = 0) As UInteger
				Declare Function WidthToPosA(cw As Integer, txt As ZString Ptr, txtLen As UInteger = 0, fontid As Integer = 1, Style As Integer = 0, wd As Integer = 0) As UInteger
				
				' 写字
				Declare Function DrawW(sf As xge.Surface Ptr, px As Integer, py As Integer, txt As WString Ptr, txtLen As UInteger = 0, iColor As UInteger = &HFFFFFFFF, fontid As Integer = 1, Style As Integer = 0, wd As Integer = 0) As xge_Rect
				Declare Function DrawA(sf As xge.Surface Ptr, px As Integer, py As Integer, txt As ZString Ptr, txtLen As UInteger = 0, iColor As UInteger = &HFFFFFFFF, fontid As Integer = 1, Style As Integer = 0, wd As Integer = 0) As xge_Rect
				
				' 矩形格式化写字 [ align:对其方式、wd:字间距、ld:行间距 ]
				Declare Function DrawRectW(sf As xge.Surface Ptr, px As Integer, py As Integer, pw As Integer, ph As Integer, txt As WString Ptr, txtLen As UInteger = 0, iColor As UInteger = &HFFFFFFFF, fontid As Integer = 1, Style As Integer = 0, align As Integer = XGE_ALIGN_CENTER Or XGE_ALIGN_MIDDLE, wd As Integer = 0, ld As Integer = 0) As xge_Rect
				Declare Function DrawRectA(sf As xge.Surface Ptr, px As Integer, py As Integer, pw As Integer, ph As Integer, txt As ZString Ptr, txtLen As UInteger = 0, iColor As UInteger = &HFFFFFFFF, fontid As Integer = 1, Style As Integer = 0, align As Integer = XGE_ALIGN_CENTER Or XGE_ALIGN_MIDDLE, wd As Integer = 0, ld As Integer = 0) As xge_Rect
				
			End Namespace
			
			
			
			/' -------------------------- 场景库 -------------------------- '/
			Namespace Scene
				Declare Function Start(proc As XGE_SCENE_PROC, lfps As UInteger = 0, sync As Integer = FALSE, param As Integer = 0) As Integer
				Declare Function Cut(proc As XGE_SCENE_PROC, lfps As UInteger = 0, sync As Integer = FALSE, param As Integer = 0) As Integer
				Declare Sub Stop()
				Declare Sub StopAll()
				Declare Sub Pause(flag As Integer = XGE_PAUSE_DRAW Or XGE_PAUSE_FRAME)
				Declare Function State() As Integer
				Declare Sub Resume()
				Declare Function FPS() As UInteger
				Declare Sub SetFPS(nv As UInteger)
				Declare Function Stack() As xStack Ptr
			End Namespace
			
			
			
			/' -------------------------- 挂钩库 -------------------------- '/
			Namespace Hook
				Declare Sub SetDelayProc(proc As XGE_DELAY_PROC)
				Declare Sub SetEventProc(proc As XGE_EVENT_PROC)
				Declare Sub SetSceneProc(proc As XGE_SCENE_PROC)
				Declare Sub SetImageLoadProc(proc As XGE_BLOAD_PROC)
				Declare Sub SetFontLoadProc(proc As XGE_FLOAD_PROC)
			End Namespace
			
			
			
			/' -------------------------- 辅助库 -------------------------- '/
			Namespace Aux
				Declare Function ScreenShot() As xge.Surface Ptr
				Declare Function GetPixel(sf As xge.Surface Ptr, x As Integer, y As Integer) As UInteger
				Declare Function RGB2BGR(c As UInteger) As UInteger
				Declare Function RandInt(min As UInteger = 0, max As UInteger = &HFFFFFFFF) As Integer
				Declare Function RandDouble() As Double
				Declare Sub SetTitleA(title As ZString Ptr)
				Declare Sub SetTitleW(title As WString Ptr)
				Declare Sub SetView(x1 As Integer, y1 As Integer, x2 As Integer, y2 As Integer, c As Integer, f As Integer)
				Declare Sub ReSetView()
				Declare Sub SetCoodr(x1 As Integer, y1 As Integer, x2 As Integer, y2 As Integer, c As Integer = 0)
				Declare Sub ReSetCoodr()
				Declare Function MapCoodr(coodr As Integer, tpe As Integer) As Integer
				Declare Function LockMouse() As Integer
				Declare Function UnLockMouse() As Integer
				Declare Function HideCursor() As Integer
				Declare Function ShowCursor() As Integer
			End Namespace
			
			
			
			/' -------------------------- 图形库 -------------------------- '/
			Namespace Shape
				Declare Sub Pixel(sf As xge.Surface Ptr, x As Integer, y As Integer, c As Integer)
				Declare Sub Lines(sf As xge.Surface Ptr, x1 As Integer, y1 As Integer, x2 As Integer, y2 As Integer, c As Integer)
				Declare Sub LinesEx(sf As xge.Surface Ptr, x1 As Integer, y1 As Integer, x2 As Integer, y2 As Integer, c As Integer, s As Integer)
				Declare Sub Rect(sf As xge.Surface Ptr, x1 As Integer, y1 As Integer, x2 As Integer, y2 As Integer, c As Integer)
				Declare Sub RectEx(sf As xge.Surface Ptr, x1 As Integer, y1 As Integer, x2 As Integer, y2 As Integer, c As Integer, s As Integer)
				Declare Sub RectFull(sf As xge.Surface Ptr, x1 As Integer, y1 As Integer, x2 As Integer, y2 As Integer, c As Integer)
				Declare Sub Circ(sf As xge.Surface Ptr, x As Integer, y As Integer, r As Integer, c As Integer)
				Declare Sub CircFull(sf As xge.Surface Ptr, x As Integer, y As Integer, r As Integer, c As Integer)
				Declare Sub CircEx(sf As xge.Surface Ptr, x As Integer, y As Integer, r As Integer, c As Integer, a As Single)
				Declare Sub CircFullEx(sf As xge.Surface Ptr, x As Integer, y As Integer, r As Integer, c As Integer, a As Single)
				Declare Sub CircArc(sf As xge.Surface Ptr, x As Integer, y As Integer, r As Integer, c As Integer, s As Integer, e As Integer, a As Single)
				Declare Sub Full(sf As xge.Surface Ptr, x As Integer, y As Integer, c As Integer, f As Integer)
				Declare Sub FullEx(sf As xge.Surface Ptr, x As Integer, y As Integer, p As Any Ptr, f As Integer)
			End Namespace
			
		End Namespace
		
		
		
		/' -------------------------- 输入库 -------------------------- '/
		Namespace xInput
			Declare Function KeyStatus(k As Integer) As Integer
			Declare Sub MouseStatus(x As Integer Ptr, y As Integer Ptr, w As Integer Ptr, b As Integer Ptr)
			Declare Function JoyStatus(id As Integer, btn As Integer Ptr, a1 As Single Ptr, a2 As Single Ptr, a3 As Single Ptr, a4 As Single Ptr, a5 As Single Ptr, a6 As Single Ptr, a7 As Single Ptr, a8 As Single Ptr) As Integer
			Declare Function GetMousePos() As Integer
			Declare Function SetMousePos(x As Integer, y As Integer) As Integer
			Declare Function GetMouseX() As Integer
			Declare Function GetMouseY() As Integer
			Declare Function GetMouseBtn() As Integer
			Declare Function GetMouseBtnL() As Integer
			Declare Function GetMouseBtnR() As Integer
			Declare Function GetMouseBtnM() As Integer
			Declare Function GetMouseWhell() As Integer
		End Namespace
		
		
		
		/' -------------------------- 界面库 -------------------------- '/
		Namespace xui
			
			
			' 布局数据结构
			Type Layout
				Ruler As Integer			' 布局尺度 [ 参考定义前缀 : XUI_LAYOUT_RULER ]
				RectBox As xge_Rect			' 外框大小 [ 单位是像素，浮动布局时这个数据无效 ]
				Rect As xge_Rect			' 最终坐标 [ 这个数据会在运行时产生 ]
				ScreenCoord As xge_Coord	' 在屏幕上的最终坐标 [ 以游戏左上角为起点，这个数据会在运行时产生 ]
				w As Integer				' 布局宽度
				h As Integer				' 布局高度
			End Type
			
			
			' 背景结构
			Type BackStyle_Struct
				Image As xge.Surface Ptr = NULL
				BorderColor As UInteger
				FillColor As UInteger
				Hide As Integer
			End Type
			Type BackStyle_Text_Struct
				Image As xge.Surface Ptr = NULL
				BorderColor As UInteger
				FillColor As UInteger
				TextColor As UInteger
				Hide As Integer
			End Type
			
			
			' 元素事件 [部分事件处理过程占用时间，因此仅在注册后才会处理这些事件]
			' 元素事件返回 -1 代表中断事件链处理，其他符合条件的控件将无法再收到事件
			Type ElementEvent
				' 鼠标移动 [被激活的控件可以优先处理这个事件，如果他放弃处理的话，则这个事件进入正常的消息链]
				OnMouseMove As Function(ele As Any Ptr, x As Integer, y As Integer) As Integer = NULL
				' 鼠标按下
				OnMouseDown As Function(ele As Any Ptr, x As Integer, y As Integer, btn As Integer) As Integer = NULL
				' 鼠标弹起 [被激活的控件可以优先处理这个事件，如果他放弃处理的话，则这个事件进入正常的消息链]
				OnMouseUp As Function(ele As Any Ptr, x As Integer, y As Integer, btn As Integer) As Integer = NULL
				' 鼠标单击
				OnMouseClick As Function(ele As Any Ptr, x As Integer, y As Integer, btn As Integer) As Integer = NULL
				' 鼠标双击
				OnMouseDoubleClick As Function(ele As Any Ptr, x As Integer, y As Integer, btn As Integer) As Integer = NULL
				' 鼠标进入元素范围
				OnMouseEnter As Sub(ele As Any Ptr) = NULL
				' 鼠标离开元素
				OnMouseLeave As Sub(ele As Any Ptr) = NULL
				' 鼠标滚轮拨动 [鼠标指针所在位置最顶层的元素能够收到这个事件，如果他不处理的话，则事件会被转发给被激活的元素]
				OnMouseWhell As Function(ele As Any Ptr, x As Integer, y As Integer, z As Integer, nz As Integer) As Integer = NULL
				' 键盘按键按下 [只有被激活的元素能收到这个事件]
				OnKeyDown As Function(ele As Any Ptr, k As Integer, c As Integer) As Integer = NULL
				' 键盘按键弹起 [只有被激活的元素能收到这个事件]
				OnKeyUp As Function(ele As Any Ptr, k As Integer, c As Integer) As Integer = NULL
				' 键盘按键点击 [只有被激活的元素能收到这个事件]
				OnKeyRepeat As Function(ele As Any Ptr, k As Integer, c As Integer) As Integer = NULL
				' 元素被激活
				OnGotfocus As Sub(ele As Any Ptr) = NULL
				' 元素丢失激活状态
				OnLostFocus As Sub(ele As Any Ptr) = NULL
				' 绘制事件，在元素需要画出的时候调用
				OnDraw As Sub(ele As Any Ptr) = NULL
				' 自绘事件，在 OnDraw 之后调用，可以进行补充绘制 [这个事件系统一般不会占用]
				OnUserDraw As Sub(ele As Any Ptr) = NULL
				' 大小改变事件
				OnSize As Sub(ele As Any Ptr) = NULL
			End Type
			
			
			' 列表项结构体
			Type List_Item_BasicStruct							' 列表项结构体 [基础结构]
				Checked As Integer								' 选中状态
				Tag As Integer									' 附加数据
				Text As WString Ptr								' 显示文本
				TextColor As UInteger							' 文本颜色
				UserData As Any Ptr								' 用户自定义数据开始的位置 [这个数据是不存在的，用于提取指针]
			End Type
			
			' 列表项集合管理器
			Type List_ItemSet Extends xBsmm						' 列表项集合管理器
				Parent As Any Ptr								' 父元素指针
				
				' 构造函数
				Declare Constructor()
				
				' 列表项数量
				Declare Function Count() As UInteger
				
				' 添加列表项
				Declare Function Append(sVal As WString Ptr, Tag As Integer = 0) As UInteger
				Declare Function Insert(iPos As UInteger, sVal As WString Ptr, Tag As Integer = 0) As UInteger
				
				' 删除列表项
				Declare Function Remove(iPos As UInteger) As Integer
				Declare Sub Clear()
				
				' 获取/设置 列表项的标题
				Declare Property Text(iPos As UInteger) As WString Ptr
				Declare Property Text(iPos As UInteger, sVal As WString Ptr)
				
				' 获取/设置 列表项的附加数据
				Declare Property Tag(iPos As UInteger) As Integer
				Declare Property Tag(iPos As UInteger, iVal As Integer)
				
				' 选中列表项
				Declare Property Selected(iPos As UInteger) As Integer
				Declare Property Selected(iPos As UInteger, iStk As Integer)
				
				' 统计选中列表项的数量
				Declare Function SelectCount() As UInteger
				
				' 选择所有列表项
				Declare Sub SelectAll()
				
				' 取消所有选中的列表项
				Declare Sub SelectClear()
				
				' 反选所有列表项
				Declare Sub SelectInverse()
				
				' 设置用户自定义数据结构大小 [默认为0，只能在还没有列表项时调用]
				Declare Sub SetUserDataSize(bc As UInteger)
				
				' 获取用户自定义数据指针
				Declare Function UserData(iPos As UInteger) As Any Ptr
			End Type
			
			
			' 按钮的事件结构
			Type ButtonEvent
				OnClick As Sub(ele As Any Ptr, btn As Integer)
				OnCheck As Sub(ele As Any Ptr)
			End Type
			
			
			' 滚动条的事件结构
			Type ScrollBarEvent
				OnScroll As Sub(ele As Any Ptr)
			End Type
			
			
			' 滚动视图事件结构
			Type ScrollViewEvent
				OnDrawView As Sub(ele As Any Ptr, px As Integer, py As Integer, x As Integer, y As Integer, w As Integer, h As Integer)
			End Type
			
			
			' 列表框事件结构
			Type ListBoxEvent
				OnDrawItem As Sub(ele As Any Ptr, iPos As UInteger, Item As List_Item_BasicStruct Ptr, stk As Integer, x As Integer, y As Integer, w As Integer, h As Integer)
				OnClickItem As Sub(ele As Any Ptr, iPos As UInteger, btn As Integer)
				OnDoubleClickItem As Sub(ele As Any Ptr, iPos As UInteger, btn As Integer)
				OnSelectChange As Sub(ele As Any Ptr, iOld As UInteger)
			End Type
			
			
			' 输入框事件结构
			Type LineEditEvent
				OnChange As Sub(ele As Any Ptr)
				OnGotfocus As Sub(ele As Any Ptr)
				OnLostFocus As Sub(ele As Any Ptr)
				OnSubmit As Sub(ele As Any Ptr)
				OnTab As Sub(ele As Any Ptr)
			End Type
			
			
			' 窗口事件结构
			Type WindowEvent
				OnGotfocus As Sub(ele As Any Ptr)
				OnLostFocus As Sub(ele As Any Ptr)
				OnMove As Sub(ele As Any Ptr)
				OnSize As Sub(ele As Any Ptr)		' 暂未实现
			End Type
			
			
			' 子元素列表类
			Type ElementList Extends xBsmm
				Parent As Any Ptr		' 父元素指针 [添加子元素的时候需要]
				Declare Function AddElement(elePtr As Any Ptr) As Integer
				Declare Function InsElement(elePtr As Any Ptr, iPos As Integer) As Integer
				Declare Function GetElement(iPos As Integer) As Any Ptr
				Declare Function DelElement(iPos As Integer) As Integer
				Declare Sub Clear()
				Declare Function Count() As UInteger
			End Type
			
			
			' 元素基类
			Type Element
				ClassID As Integer						' 类识别编号，仅用于识别，没有其他意义 0x10000 以内的编号为引擎预留 [0=Element]
				LayoutMode As Integer					' 布局模式 [ 参考定义前缀 : XUI_LAYOUT ]
				Layout As xui.Layout					' 布局数据
				ClassEvent As ElementEvent				' 事件
				Childs As ElementList					' 子元素数据
				Parent As Element Ptr = NULL			' 父元素指针
				Visible As Integer = -1					' 是否显示 [参与布局和绘制的开关] [使用布局的话修改后必须重新应用布局]
				DrawBuffer As xge.Surface Ptr			' 绘制缓冲区
				NeedRedraw As Integer = -1				' 需要重绘标记
				Identifier As WString * XGE_XUI_IDSIZE	' 元素ID [相当于引擎附加数据，用户可以将ID映射到脚本语言中处理事件]
				DrawRange As Integer = 0				' 绘制元素范围
				TagInt As Integer						' 附加数据
				TagPtr As Any Ptr						' 附加数据
				
				' 构造函数
				Declare Constructor()
				Declare Constructor(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, iLayoutMode As Integer = XUI_LAYOUT_COORD, sIdentifier As WString Ptr = NULL)
				
				' 析构函数
				Declare Destructor()
				
				' 填写基础数据
				Declare Sub InitElement(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, iLayoutMode As Integer = XUI_LAYOUT_COORD, sIdentifier As WString Ptr = NULL)
				
				' 应用布局
				Declare Sub LayoutApply()
				
				' 绘制
				Declare Sub Draw(sf As xge.Surface Ptr = NULL, px As Integer = 0, py As Integer = 0)
				
				' 事件链
				Declare Function EventLink(msg As Integer,param As Integer,eve As xge_event Ptr) As Integer
				
				' 画参考线
				Declare Sub DrawDebug()
			End Type
			
			
			' 按钮类
			Type Button Extends xui.Element
				Text As WString Ptr								' 按钮的标题
				TextOffset As xge_Coord							' 按钮标题坐标偏移
				TextFont As UInteger							' 按钮标题的字体
				
				Mode As Integer									' 工作模式 [1=复选框、2=单选框、其他=无状态按钮]
				Checked As Integer								' 按钮是否被选中
				
				' 背景样式
				NormalStyle As BackStyle_Text_Struct			' 正常状态的样式
				HotStyle As BackStyle_Text_Struct				' 按钮被激活的样式 (鼠标进入)
				PressStyle As BackStyle_Text_Struct				' 按钮被按下的样式
				CheckStyle As BackStyle_Text_Struct				' 选中时的样式
				
				' 声音
				EnterSound As xge.Sound Ptr						' 鼠标进入的声音
				LeaveSound As xge.Sound Ptr						' 鼠标离开的声音
				DownSound As xge.Sound Ptr						' 鼠标按下的声音
				ClickSound As xge.Sound Ptr						' 按钮被点击的声音 [鼠标按下并松开时播放]
				
				'Declare Sub ApplyStyle(StyleID As Integer = 0)	' 应用样式
				
				Event As ButtonEvent							' 按钮的事件
				
				' 不公开的属性 [但我没有隐藏这些细节，方便二次开发]
				private_Status As Integer						' 按钮的状态 [0=常规、1=热点、2=按下]
				private_AllowClick As Integer					' 允许触发点击事件 [当鼠标是在按钮上按下的时候设置为TRUE]
			End Type
			
			
			' 标签类
			Type Label Extends xui.Element
				Text As WString Ptr								' 标题
				TextOffset As xge_Coord							' 标题显示偏移
				TextColor As UInteger							' 标题颜色
				TextFont As UInteger							' 标题字体
				TextAlign As Integer							' 标题对齐方式
				LineSpace As Integer							' 行间距
				WordSpace As Integer							' 字间距
				BackStyle As xui.BackStyle_Struct				' 背景样式
			End Type
			
			
			' 容器类
			Type Frame Extends xui.Element
				Text As WString Ptr								' 标题
				TextColor As UInteger							' 标题颜色
				TextFont As UInteger							' 标题字体
				BackStyle As xui.BackStyle_Struct				' 背景样式
			End Type
			
			
			' 图像类
			Type Image Extends xui.Element
				Image As xge.Surface Ptr						' 图像对象指针
				ImageOffset As xge_Coord						' 图像绘制偏移
				BorderWidth As UInteger							' 边框宽度
				BorderColor As UInteger							' 边框颜色
			End Type
			
			
			' 进度条类
			Type ProgressBar Extends xui.Element
				Max As Integer									' 最大值
				Min As Integer									' 最小值
				Value As Integer								' 当前值
				TextFont As UInteger							' 字体
				TextColor As UInteger							' 文字颜色
				BackStyle As xui.BackStyle_Struct				' 背景样式
				ForeStyle As xui.BackStyle_Struct				' 前景样式
				ShowMode As Integer								' 显示模式 [ 1=显示百分比、2=显示数值、else=不显示 ]
				RercentDigit As UInteger						' 百分比位数
				BorderWidth As UInteger							' 边框宽度
			End Type
			
			
			' 滚动条类
			Type ScrollBar Extends xui.Element
				Max As Integer									' 最大值
				Min As Integer									' 最小值
				Value As Integer								' 当前值
				SmallChange As Integer							' 当用户单击滚动条上下按钮或箭头键时的滚动幅度
				LargeChange As Integer							' 当用户单击滚动条空白空间或PageDown、PageUp时的滚动幅度
				WhellChange As Integer							' 滚轮的滚动幅度
				BackStyle As xui.BackStyle_Struct				' 背景样式
				
				Event As ScrollBarEvent							' 滚动条的事件
				
				' 设置滚动范围
				Declare Sub SetRange(iMin As Integer, iMax As Integer, bApplyLayout As Integer = TRUE)
				
				' 不公开的属性 [但我没有隐藏这些细节，方便二次开发]
				private_Type As Integer							' 类型 [1=横向滚动条、else=纵向滚动条]
				private_DragX As Integer						' 拖动滑块时记录的横坐标
				private_DragY As Integer						' 拖动滑块时记录的纵坐标
				private_SpaceCount As Integer					' 拖动滑块时，总的空白空间像素数
				private_ButtonUp As xui.Button Ptr				' 上 按钮
				private_ButtonDown As xui.Button Ptr			' 下 按钮
				private_ButtonCurPos As xui.Button Ptr			' 当前位置 按钮
				private_SpaceUp As xui.Element Ptr				' 上方空间 元素
				private_SpaceDown As xui.Element Ptr			' 下方空间 元素
			End Type
			
			
			' 滚动视图类
			Type ScrollView Extends xui.Element
				View As xge_Rect								' 视图 [ x+y=视图绘制位置、w+h=视图完整大小 ]
				ScrollBar As Integer							' 滚动条显示状态
				BorderWidth As UInteger							' 边框宽度
				BorderColor As UInteger							' 边框颜色
				BackColor As UInteger							' 背景颜色 [它只会用来填充两个滚动条附近的空白]
				
				ViewEvent As ScrollViewEvent					' 滚动视图的事件
				
				' 构造函数
				Declare Constructor()
				
				' 设置视图大小
				Declare Sub SetViewSize(nw As Integer, nh As Integer, bApplyLayout As Integer = TRUE)
				
				' 不公开的属性 [但我没有隐藏这些细节，方便二次开发]
				private_VScroll As xui.ScrollBar Ptr			' 视图滚动条
				private_HScroll As xui.ScrollBar Ptr			' 视图滚动条
				DefaultScrollBar As xui.ScrollBar Ptr			' 默认滚动条 [在视图上拨动滚动条，会将消息发送给这个元素，默认使用垂直滚动条]
			End Type
			
			
			' 列表框类 (列表项范围从1开始, 0代表非法范围, 选择是0表示没有任何列表项被选中)
			Type ListBox Extends xui.Element
				List As List_ItemSet							' 列表项集合
				TextColor As UInteger							' 文字颜色
				TextFont As UInteger							' 文字字体
				BackStyle As xui.BackStyle_Struct				' 背景样式
				ItemHotStyle As xui.BackStyle_Struct			' 热点项样式
				ItemSelStyle As xui.BackStyle_Struct			' 选中项样式
				BorderWidth As UInteger							' 边框宽度
				ItemHeight As UInteger							' 列表项高度
				
				Event As ListBoxEvent							' 列表框事件
				
				Declare Property ListIndex As Integer
				Declare Property ListIndex(iPos As Integer)
				
				' 不公开的属性 [但我没有隐藏这些细节，方便二次开发]
				private_HotItem As UInteger						' 鼠标指向的元素
				private_ListIndex As UInteger					' 当前选择项
				private_WordHeight As UInteger					' 文字高度
				private_ShowCount As UInteger					' 列表能够显示的项目数量 [用于计算滚动条]
				private_Scroll As xui.ScrollBar Ptr				' 滚动条
				private_ShowScroll As Integer					' 是否显示滚动条
			End Type
			
			
			' 行编辑类 [单行编辑器]
			Type LineEdit Extends xui.Element
				TextFont As UInteger							' 文字字体
				TextColor As UInteger							' 文字颜色
				CompColor As UInteger							' 正在输入的文字颜色
				SelTextColor As UInteger						' 选中文字的颜色
				SelBackColor As UInteger						' 选中文字的背景颜色
				BorderWidth As UInteger							' 边框宽度
				BackStyle As xui.BackStyle_Struct				' 背景样式
				SelStart As UInteger							' 选择文本开始的位置
				SelSize As UInteger								' 选择文本的长度
				TextAlign As Integer							' 文字对齐方式 [暂未实现]
				EnableIME As Integer							' 是否启用IME输入法
				PassWordChar As Integer							' 密码模式字符 [为0时不使用密码模式；密码模式下无法复制和剪切]
				MaxLenght As UInteger							' 最大长度，为 0 时不限制
				
				Event As LineEditEvent
				
				' 构造函数
				Declare Constructor()
				
				' 文本属性
				Declare Property Text As WString Ptr
				Declare Property Text(sText As WString Ptr)
				
				' 文本长度
				Declare Function TextLenght() As UInteger
				
				' 全选
				Declare Sub SelectAll()
				
				' 剪切
				Declare Sub Cut()
				
				' 复制
				Declare Sub Copy()
				
				' 粘贴
				Declare Sub Paste()
				
				' 删除选择内容
				Declare Sub Del()
				
				' 设置当前选择的文字
				Declare Sub SetSelText(sText As WString Ptr, iSize As UInteger = 0)
				
				' 设置文字选择范围
				Declare Sub SetSel(s As UInteger, l As Integer)
				
				' 不公开的属性 [但我没有隐藏这些细节，方便二次开发]
				private_ViewX As UInteger						' 视图横坐标 [用于处理输入文字超出范围的情况] [暂未实现]
				private_Buffer As xStringBuffer					' 文字缓冲区
				private_Offset As xge_Coord						' 文字绘制偏移 [用于排版、计算坐标]
				private_Caret As xge_Rect						' 插入符的像素位置和大小
				private_CaretTick As UInteger					' 插入符上次闪烁的时间
				private_CaretShow As Integer					' 插入符显示状态
				private_CaretPos As UInteger					' 插入符位置
				private_CaretBlink As UInteger					' 插入符闪烁间隔 [毫秒]
				private_CaretColor As UInteger					' 插入符的颜色
				private_compstr As WString Ptr					' IME输入字符串
				private_comppos As UInteger						' IME输入字符串指针所在的位置
				private_DragPos As UInteger						' 鼠标在拖动选择时记忆的字符位置
			End Type
			
			
			' 窗口类
			Type Window Extends xui.Element
				
				Text As WString Ptr								' 标题
				TextColor As UInteger							' 标题颜色
				TextFont As UInteger							' 标题字体
				BackStyle As xui.BackStyle_Struct				' 背景样式
				AllowMove As Integer							' 允许拖拽移动
				AllowSize As Integer							' 允许调整大小 [暂未实现]
				
				Event As WindowEvent
				
				' 构造函数
				Declare Constructor()
				
				' 不公开的属性 [但我没有隐藏这些细节，方便二次开发]
				private_DragMode As Integer						' 是否开始拖动
				private_Drag As xge_Coord						' 拖动窗口时点击的坐标
				private_DragWinPos As xge_Coord					' 拖动窗口时窗口的坐标
			End Type
			
			
			' 获取根元素 (Desktop元素)
			Declare Function GetRootElement() As xui.Element Ptr
			
			' 获取被激活的元素
			Declare Function GetActiveElement() As xui.Element Ptr
			
			' 激活元素 [传递NULL则取消当前激活的元素]
			Declare Sub ActiveElement(ele As xui.Element Ptr)
			
			' 设置鼠标捕获 [传递NULL则释放鼠标捕获]
			' 鼠标捕获一般在 OnMouseDown 时设置，OnMouseUp 时释放
			' 捕获期间，鼠标消息会优先通知给捕获的元素处理，当捕获元素不处理时才会分发给其他元素和XGE引擎
			Declare Sub MouseCapture(ele As xui.Element Ptr)
			
			' 关闭和激活输入法
			Declare Sub DisableIME()
			Declare Sub EnableIME(proc As Any Ptr, param As Integer)
			Declare Sub EnableCharInput(proc As Any Ptr, param As Integer)
			
			' 获取鼠标指针下的热点元素
			Declare Function GetHotElement() As xui.Element Ptr
			
			' 释放某个元素下的所有子元素 (默认清空Desktop元素)
			Declare Sub FreeChilds(ui As xui.Element Ptr = NULL)
			
			' 应用布局
			Declare Sub LayoutApply()
			
			' 创建基础元素
			Declare Function CreateElement(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, iLayoutMode As Integer = XUI_LAYOUT_COORD, sIdentifier As WString Ptr = NULL) As xui.Element Ptr
			
			' 创建标签元素
			Declare Function CreateLabel(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, sCaption As WString Ptr, TextColor As UInteger = &HFFFFFFFF, TextFont As UInteger = 1, sIdentifier As WString Ptr = NULL) As xui.Label Ptr
			
			' 创建容器元素
			Declare Function CreateFrame(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, iLayoutMode As Integer = XUI_LAYOUT_COORD, sCaption As WString Ptr = NULL, sIdentifier As WString Ptr = NULL) As xui.Frame Ptr
			
			' 创建图像元素
			Declare Function CreateImage(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, pImage As xge.Surface Ptr = NULL, sIdentifier As WString Ptr = NULL) As xui.Image Ptr
			
			' 创建按钮元素
			Declare Function CreateButton(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, sCaption As WString Ptr, sIdentifier As WString Ptr = NULL) As xui.Button Ptr
			
			' 创建选择按钮元素
			Declare Function CreateCheckButton(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, sCaption As WString Ptr, sIdentifier As WString Ptr = NULL) As xui.Button Ptr
			Declare Function CreateRadioButton(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, sCaption As WString Ptr, sIdentifier As WString Ptr = NULL) As xui.Button Ptr
			
			' 创建复选框元素
			Declare Function CreateCheckBox(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, sCaption As WString Ptr, sIdentifier As WString Ptr = NULL) As xui.Button Ptr
			
			' 创建单选框元素
			Declare Function CreateRadioBox(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, sCaption As WString Ptr, sIdentifier As WString Ptr = NULL) As xui.Button Ptr
			
			' 创建超链接元素
			Declare Function CreateHyperLink(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, sCaption As WString Ptr, sIdentifier As WString Ptr = NULL) As xui.Button Ptr
			
			' 创建纵向滚动条
			Declare Function CreateVScrollBar(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 18, h As Integer = 200, sIdentifier As WString Ptr = NULL) As xui.ScrollBar Ptr
			
			' 创建横向滚动条
			Declare Function CreateHScrollBar(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 200, h As Integer = 18, sIdentifier As WString Ptr = NULL) As xui.ScrollBar Ptr
			
			' 创建滚动视图
			Declare Function CreateScrollView(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 200, h As Integer = 200, vw As Integer = 200, vh As Integer = 200, sIdentifier As WString Ptr = NULL) As xui.ScrollView Ptr
			
			' 创建列表框
			Declare Function CreateListBox(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 120, h As Integer = 200, TextColor As UInteger = &HFF000000, TextFont As UInteger = 1, sIdentifier As WString Ptr = NULL) As xui.ListBox Ptr
			
			' 创建行编辑框
			Declare Function CreateLineEdit(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, sCaption As WString Ptr, TextFont As UInteger = 1, sIdentifier As WString Ptr = NULL) As xui.LineEdit Ptr
			
			' 创建密码编辑框
			Declare Function CreatePassWordEdit(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, sCaption As WString Ptr, TextFont As UInteger = 1, sIdentifier As WString Ptr = NULL) As xui.LineEdit Ptr
			
			' 创建进度条
			Declare Function CreateProgressBar(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, sIdentifier As WString Ptr = NULL) As xui.ProgressBar Ptr
			
			' 创建窗口
			Declare Function CreateBaseWindow(x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, iLayoutMode As Integer = XUI_LAYOUT_COORD, sCaption As WString Ptr, TextColor As UInteger = &HFFFFFFFF, TextFont As UInteger = 1, sIdentifier As WString Ptr = NULL) As xui.Window Ptr
			
		End Namespace
		
		
		
		/' -------------------------- 网络库 -------------------------- '/
		Namespace xSock
			
			Type Event_Server
				OnRecv As Sub(client As HANDLE, pack As Any Ptr, size As UInteger)
				OnSend As Sub(client As HANDLE, code As Integer)
				OnAccept As Sub(client As HANDLE)
				OnDisconn As Sub(client As HANDLE)
			End Type
			
			Type Event_Client
				OnRecv As Sub(pack As Any Ptr, size As UInteger)
				OnSend As Sub(code As Integer)
				OnDisconn As Sub()
			End Type
			
			Type Event_UDP
				OnRecv As Sub(pack As Any Ptr, size As UInteger, ip As Any Ptr, port As Integer)
				OnSend As Sub(code As Integer)
			End Type
			
			Type xServer
				Section As CRITICAL_SECTION
				
				' 事件
				Event As Event_Server
				
				' 析构
				Declare Destructor()
				
				' 创建
				Declare Function Create(ip As ZString Ptr, port As UShort, max As UInteger = 1000, ThreadCountt As UInteger = 1) As Integer
				Declare Function Create(ip As WString Ptr, port As UShort, max As UInteger = 1000, ThreadCountt As UInteger = 1) As Integer
				
				' 销毁
				Declare Sub Destroy()
				
				' 状态
				Declare Function Status() As Integer
				
				' 发送
				Declare Function Send(Client As HANDLE, pack As Any Ptr, size As UInteger, sync As Integer = TRUE) As Integer
				
				' 遍历客户端
				Declare Function EnumClient(first As HANDLE) As HANDLE
				
				' 获取客户端信息
				Declare Function GetClientInfo(client As HANDLE, ip As ZString Ptr Ptr, port As UInteger Ptr) As Integer
				Declare Function GetClientInfo(client As HANDLE, ip As WString Ptr Ptr, port As UInteger Ptr) As Integer
				
				' 内部事件函数
				#Ifdef XGE_SOURCE_BUILD
					Declare Sub AcceptProc(client As HANDLE)
					Declare Sub DisconnProc(client As HANDLE)
				#EndIf
				
				' 不公开的属性 [但我没有隐藏这些细节，方便二次开发]
				h_Socket As HANDLE
				c_Max As UInteger
				c_Conn As UInteger
				c_Enter As UInteger
				c_Leave As UInteger
				c_List As HANDLE Ptr
				c_FindCursor As UInteger
				c_AddIndex As UInteger
				
				' 添加到客户端列表
				Declare Function AddClientList(client As HANDLE) As Integer
				
				' 从客户端列表删除
				Declare Function DelClientList(client As HANDLE) As Integer
			End Type
	
			Type xClient
				Section As CRITICAL_SECTION
				
				' 事件
				Event As Event_Client
				
				' 析构
				Declare Destructor()
				
				' 连接
				Declare Function Connect(ip As ZString Ptr, port As UShort) As Integer
				Declare Function Connect(ip As WString Ptr, port As UShort) As Integer
				
				' 断开
				Declare Sub Close()
				
				' 状态
				Declare Function Status() As Integer
				
				' 发送
				Declare Function Send(pack As Any Ptr, size As UInteger, sync As Integer = TRUE) As Integer
				
				' 不公开的属性 [但我没有隐藏这些细节，方便二次开发]
				h_Client As HANDLE
			End Type
			
			Type xUDP
				' 事件
				Event As Event_UDP
				
				' 析构
				Declare Destructor()
				
				' 创建
				Declare Function Create(ip As ZString Ptr, port As UShort, ThreadCountt As UInteger = 1) As HANDLE
				Declare Function Create(ip As WString Ptr, port As UShort, ThreadCountt As UInteger = 1) As HANDLE
				
				' 销毁
				Declare Sub Destroy()
				
				' 状态 [已创建=TRUE]
				Declare Function Status() As Integer
				
				' 发送
				Declare Function send(pack As Any Ptr, size As UInteger, ip As ZString Ptr, port As UShort, sync As Integer = TRUE) As Integer
				Declare Function send(pack As Any Ptr, size As UInteger, ip As WString Ptr, port As UShort, sync As Integer = TRUE) As Integer
				
				' 不公开的属性 [但我没有隐藏这些细节，方便二次开发]
				h_Socket As HANDLE
				private_Unicode As Integer
			End Type
			
		End Namespace
		
	End Extern
	
	
	
	' -------------------------- 场景结构体 -------------------------- '/
	Type XGE_SCENE
		proc As XGE_SCENE_PROC
		pause As Integer
		sync As Integer
		Lockfps As UInteger
		RootElement As xui.Element Ptr
	End Type
	
	
	
	Extern XGE_EXTERNSTDEXT
		/' -------------------------- 混合渲染库 -------------------------- '/
		Declare Function Blend_Custom(src As xge.Surface Ptr, px As Integer, py As Integer, cx As Integer, cy As Integer, cw As Integer, ch As Integer,dst As xge.Surface Ptr, bk As XGE_DRAW_BLEND, param As Integer) As Integer
		Declare Sub SetShadeData(w As Integer, h As Integer, d As Any Ptr)
		Declare Sub MakeShadeData(sf As xge.Surface Ptr, sd As UByte Ptr)
		
		
		/' -------------------------- 临时内存管理 -------------------------- '/
		Declare Function AllocTempMemory(size As UInteger) As Any Ptr
		Declare Sub AddTempMemory(pMemory As Any Ptr)
		Declare Sub FreeTempMemory()
		
		
		/' -------------------------- 字符集转换库 -------------------------- '/
		Declare Function AsciToUnicode(ZStrPtr As ZString Ptr, ZStrLen As UInteger = 0) As WString Ptr
		Declare Function UnicodeToAsci(WStrPtr As WString Ptr, WStrLen As UInteger = 0) As ZString Ptr
		Declare Function UnicodeToUTF8(WStrPtr As WString Ptr, WStrLen As UInteger = 0) As ZString Ptr
		Declare Function UTF8ToUnicode(UTF8Ptr As ZString Ptr, UTF8Len As UInteger = 0) As WString Ptr
		Declare Function A2W(AStr As ZString Ptr, ALen As UInteger = 0) As WString Ptr
		Declare Function W2A(UStr As WString Ptr, ULen As UInteger = 0) As ZString Ptr
		Declare Function W2U(UStr As WString Ptr, ULen As UInteger = 0) As ZString Ptr
		Declare Function U2W(UStr As ZString Ptr, ULen As UInteger = 0) As WString Ptr
		Declare Function A2U(ZStr As ZString Ptr, ZLen As UInteger = 0) As ZString Ptr
		Declare Function U2A(UStr As ZString Ptr, ULen As UInteger = 0) As ZString Ptr
		
		
		/' -------------------------- 其他易用性函数库 -------------------------- '/
		Declare Sub xui_DrawBackStyle(ele As xui.Element Ptr, bs As xui.BackStyle_Struct Ptr)
		Declare Sub xui_DrawBackStyle_Rect(ele As xui.Element Ptr, bs As xui.BackStyle_Struct Ptr, rc As xge_Rect Ptr)
		Declare Sub xui_DrawBackStyle_Text(ele As xui.Element Ptr, bs As xui.BackStyle_Text_Struct Ptr, sText As WString Ptr, fontid As UInteger, CaptionOffset As xge_Coord Ptr)
		
		
		/' -------------------------- 文件操作库 -------------------------- '/
		Declare Function xFile_CreateA(FilePath As ZString Ptr) As Integer
		Declare Function xFile_CreateW(FilePath As WString Ptr) As Integer
		Declare Function xFile_OpenA(FilePath As ZString Ptr, OnlyRead As Integer = 0) As HANDLE
		Declare Function xFile_OpenW(FilePath As WString Ptr, OnlyRead As Integer = 0) As HANDLE
		Declare Function xFile_Close(FileHdr As HANDLE) As Integer
		Declare Function xFile_ExistsA(FilePath As ZString Ptr) As Integer
		Declare Function xFile_ExistsW(FilePath As WString Ptr) As Integer
		Declare Function xFile_hwrite(FileHdr As HANDLE, Buffer As Any Ptr, Addr As UInteger, Length As UInteger) As UInteger
		Declare Function xFile_WriteA(FilePath As ZString Ptr, Buffer As Any Ptr, Addr As UInteger, Length As UInteger) As UInteger
		Declare Function xFile_WriteW(FilePath As WString Ptr, Buffer As Any Ptr, Addr As UInteger, Length As UInteger) As UInteger
		Declare Function xFile_hRead(FileHdr As HANDLE, Buffer As Any Ptr, Addr As UInteger, Length As UInteger) As UInteger
		Declare Function xFile_ReadA(FilePath As ZString Ptr, Buffer As Any Ptr, Addr As UInteger, Length As UInteger) As UInteger
		Declare Function xFile_ReadW(FilePath As WString Ptr, Buffer As Any Ptr, Addr As UInteger, Length As UInteger) As UInteger
		Declare Function xFile_hSize(FileHdr As HANDLE) As UInteger
		Declare Function xFile_SizeA(FilePath As ZString Ptr) As UInteger
		Declare Function xFile_SizeW(FilePath As WString Ptr) As UInteger
		Declare Function xFile_hCut(FileHdr As HANDLE, FileSize As UInteger) As Integer
		Declare Function xFile_CutA(FilePath As ZString Ptr, FileSize As UInteger) As Integer
		Declare Function xFile_CutW(FilePath As WString Ptr, FileSize As UInteger) As Integer
		Declare Function xFile_TempPathA(sPath As ZString Ptr) As ZString Ptr
		Declare Function xFile_TempPathW(sPath As WString Ptr) As WString Ptr
		Declare Function xFile_ScanA(RootDir As ZString Ptr, Filter As ZString Ptr, Attrib As Integer, AttribEx As Integer, Recursive As Integer, CallBack As Function(Path As ZString Ptr, FindData As WIN32_FIND_DATAA Ptr, param As Integer) As Integer, param As Integer = 0) As Integer
		Declare Function xFile_ScanW(RootDir As WString Ptr, Filter As WString Ptr, Attrib As Integer, AttribEx As Integer, Recursive As Integer, CallBack As Function(Path As WString Ptr, FindData As WIN32_FIND_DATAW Ptr, param As Integer) As Integer, param As Integer = 0) As Integer
		
		
		/' -------------------------- ini 文件操作库 -------------------------- '/
		Declare Function xIni_GetStrA(IniFile As ZString Ptr, IniSec As ZString Ptr, IniKey As ZString Ptr) As ZString Ptr
		Declare Function xIni_GetStrW(IniFile As WString Ptr, IniSec As WString Ptr, IniKey As WString Ptr) As WString Ptr
		Declare Function xIni_GetIntA(IniFile As ZString Ptr, IniSec As ZString Ptr, IniKey As ZString Ptr) As Integer
		Declare Function xIni_GetIntW(IniFile As WString Ptr, IniSec As WString Ptr, IniKey As WString Ptr) As Integer
		Declare Function xIni_SetStrA(IniFile As ZString Ptr, IniSec As ZString Ptr, IniKey As ZString Ptr, kValue As ZString Ptr) As Integer
		Declare Function xIni_SetStrW(IniFile As WString Ptr, IniSec As WString Ptr, IniKey As WString Ptr, kValue As WString Ptr) As Integer
		
		
		/' -------------------------- 剪贴板操作库 -------------------------- '/
		Declare Function xClip_GetTextW() As WString Ptr
		Declare Function xClip_SetTextW(Text As WString Ptr, Size As UInteger = 0) As Integer
		Declare Function xClip_GetTextA() As ZString Ptr
		Declare Function xClip_SetTextA(Text As ZString Ptr, Size As UInteger = 0) As Integer
		
		
		/' -------------------------- xPack 5.0 函数 -------------------------- '/
		Declare Function xPack_CreateA(sFile As ZString Ptr, iPackExt As UShort = 0, iFileExt As UShort = 0) As UInteger
		Declare Function xPack_CreateW(sFile As WString Ptr, iPackExt As UShort = 0, iFileExt As UShort = 0) As UInteger
		Declare Function xPack_ReBuildA(sFile As ZString Ptr) As ZString Ptr
		Declare Function xPack_ReBuildW(sFile As WString Ptr) As WString Ptr
	End Extern
	
	
	
	' Unicode
	#Ifdef UNICODE
		
		#Define xFile_Create			xFile_CreateW
		#Define xFile_Open				xFile_OpenW
		#Define xFile_Exists			xFile_ExistsW
		#Define xFile_Write				xFile_WriteW
		#Define xFile_Read				xFile_ReadW
		#Define xFile_Size				xFile_SizeW
		#Define xFile_Cut				xFile_CutW
		#Define xFile_TempPath			xFile_TempPathW
		#Define xFile_Scan				xFile_ScanW
		
		#Define xIni_GetStr				xIni_GetStrW
		#Define xIni_GetInt				xIni_GetIntW
		#Define xIni_SetStr				xIni_SetStrW
		
		#Define xClip_GetText			xClip_GetTextW
		#Define xClip_SetText			xClip_SetTextW
		
		#Define xPack_Create			xPack_CreateW
		#Define xPack_ReBuild			xPack_ReBuildW
		
	#Else
		
		#Define xFile_Create			xFile_CreateA
		#Define xFile_Open				xFile_OpenA
		#Define xFile_Exists			xFile_ExistsA
		#Define xFile_Write				xFile_WriteA
		#Define xFile_Read				xFile_ReadA
		#Define xFile_Size				xFile_SizeA
		#Define xFile_Cut				xFile_CutA
		#Define xFile_TempPath			xFile_TempPathA
		#Define xFile_Scan				xFile_ScanA
		
		#Define xIni_GetStr				xIni_GetStrA
		#Define xIni_GetInt				xIni_GetIntA
		#Define xIni_SetStr				xIni_SetStrA
		
		#Define xClip_GetText			xClip_GetTextA
		#Define xClip_SetText			xClip_SetTextA
		
		#Define xPack_Create			xPack_CreateA
		#Define xPack_ReBuild			xPack_ReBuildA
		
	#EndIf
	
	
#EndIf


