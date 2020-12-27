'==================================================================================
	'�� xywh Game Engine �û�����ϵͳ [nuklear��]
	'#-------------------------------------------------------------------------------
	'# ���� : 
	'# ˵�� : 
'==================================================================================



Extern XGE_EXTERNCLASS



' GUIϵͳ����Ϣ��������������Ϣ�ַ�����Ӧ�Ŀؼ� [����0��ʾ��Ϣû�б�����]
Function xui_EventProc(msg As Integer, param As Integer, eve As XGE_EVENT Ptr) As Integer
	Select Case msg
		Case XGE_MSG_MOUSE_MOVE			' ����ƶ�
			' ����֪ͨ���������Ԫ��
			If xge_xui_element_active Then
				If xge_xui_element_active->ClassEvent.OnMouseMove Then
					If xge_xui_element_active->ClassEvent.OnMouseMove(xge_xui_element_active, eve->x - xge_xui_element_active->Layout.ScreenCoord.x, eve->y - xge_xui_element_active->Layout.ScreenCoord.y) Then
						Return -1
					EndIf
				EndIf
			EndIf
			' �ж�����Ƿ��������ȵ�Ԫ��
			If xge_xui_element_hot Then
				If ((eve->x >= xge_xui_element_hot->Layout.ScreenCoord.x) And (eve->y >= xge_xui_element_hot->Layout.ScreenCoord.y) And (eve->x < xge_xui_element_hot->Layout.ScreenCoord.x + xge_xui_element_hot->Layout.Rect.w) And (eve->y < xge_xui_element_hot->Layout.ScreenCoord.y + xge_xui_element_hot->Layout.Rect.h)) = FALSE Then
					If xge_xui_element_hot->ClassEvent.OnMouseLeave Then
						xge_xui_element_hot->ClassEvent.OnMouseLeave(xge_xui_element_hot)
					EndIf
					xge_xui_element_hot = NULL
				EndIf
			EndIf
			Return xge_xui_element_root->EventLink(msg, param, eve)
		Case XGE_MSG_MOUSE_DOWN			' ��갴��
			' ���û��Ԫ�ش�������¼�����ȡ���������Ԫ�أ�������ŵ���������
			Dim RetInt As Integer = xge_xui_element_root->EventLink(msg, param, eve)
			If (RetInt = 0) And (xge_xui_element_active <> 0) Then
				xui.ActiveElement(NULL)
			EndIf
			Return RetInt
		Case XGE_MSG_MOUSE_UP			' ��굯��
			' ����֪ͨ���������Ԫ��
			If xge_xui_element_active Then
				If xge_xui_element_active->ClassEvent.OnMouseUp Then
					If xge_xui_element_active->ClassEvent.OnMouseUp(xge_xui_element_active, eve->x - xge_xui_element_active->Layout.ScreenCoord.x, eve->y - xge_xui_element_active->Layout.ScreenCoord.y, eve->button) Then
						Return -1
					EndIf
				EndIf
			EndIf
			Return xge_xui_element_root->EventLink(msg, param, eve)
		Case XGE_MSG_MOUSE_CLICK		' ��굥��
			Return xge_xui_element_root->EventLink(msg, param, eve)
		Case XGE_MSG_MOUSE_DCLICK		' ���˫��
			Return xge_xui_element_root->EventLink(msg, param, eve)
		Case XGE_MSG_MOUSE_WHELL		' �����ֹ���
			' ����֪ͨ���ȵ�Ԫ�أ����֪ͨ���������Ԫ��
			If xge_xui_element_hot Then
				If xge_xui_element_hot->ClassEvent.OnMouseWhell Then
					If xge_xui_element_hot->ClassEvent.OnMouseWhell(xge_xui_element_hot, eve->x, eve->y, eve->z, eve->nz) Then
						Return -1
					EndIf
				EndIf
			EndIf
			If xge_xui_element_active Then
				If xge_xui_element_active->ClassEvent.OnMouseWhell Then
					If xge_xui_element_active->ClassEvent.OnMouseWhell(xge_xui_element_active, eve->x, eve->y, eve->z, eve->nz) Then
						Return -1
					EndIf
				EndIf
			EndIf
		Case XGE_MSG_KEY_DOWN			' ���̰���
			' ֻ�б������Ԫ�ز����յ������Ϣ
			If xge_xui_element_active Then
				If xge_xui_element_active->ClassEvent.OnKeyDown Then
					If xge_xui_element_active->ClassEvent.OnKeyDown(xge_xui_element_active, eve->scancode, eve->ascii) Then
						Return -1
					EndIf
				EndIf
			EndIf
		Case XGE_MSG_KEY_UP				' ���̵���
			' ֻ�б������Ԫ�ز����յ������Ϣ
			If xge_xui_element_active Then
				If xge_xui_element_active->ClassEvent.OnKeyUp Then
					If xge_xui_element_active->ClassEvent.OnKeyUp(xge_xui_element_active, eve->scancode, eve->ascii) Then
						Return -1
					EndIf
				EndIf
			EndIf
		Case XGE_MSG_KEY_REPEAT			' �����ظ�����
			' ֻ�б������Ԫ�ز����յ������Ϣ
			If xge_xui_element_active Then
				If xge_xui_element_active->ClassEvent.OnKeyRepeat Then
					If xge_xui_element_active->ClassEvent.OnKeyRepeat(xge_xui_element_active, eve->scancode, eve->ascii) Then
						Return -1
					EndIf
				EndIf
			EndIf
		Case XGE_MSG_LOSTFOCUS			' ʧȥ���� [ȡ�������Ԫ��]
			xui.ActiveElement(NULL)
	End Select
	Return 0
End Function



Namespace xui
	
	
	
	' ��ȡ��Ԫ�� (DesktopԪ��)
	Function GetRootElement() As xui.Element Ptr XGE_EXPORT_ALL
		Return xge_xui_element_root
	End Function
	
	' ��ȡ�������Ԫ��
	Function GetActiveElement() As xui.Element Ptr XGE_EXPORT_ALL
		Return xge_xui_element_active
	End Function
	
	' ��ȡ���ָ���µ��ȵ�Ԫ��
	Function GetHotElement() As xui.Element Ptr XGE_EXPORT_ALL
		Return xge_xui_element_hot
	End Function
	
	' Ӧ�ò���
	Sub LayoutApply() XGE_EXPORT_ALL
		xge_xui_element_root->LayoutApply()
	End Sub
	
	
	
	' ����һ���հ׵�Ԫ��
	Function CreateElement(iLayoutRuler As Integer = XUI_LAYOUT_RULER_PIXEL, x As Integer = 0, y As Integer = 0, w As Integer = 80, h As Integer = 24, iLayoutMode As Integer = XUI_LAYOUT_COORD, sIdentifier As ZString Ptr = NULL) As xui.Element Ptr XGE_EXPORT_ALL
		Dim ele As xui.Element Ptr
		ele = New xui.Element(iLayoutRuler, x, y, w, h, iLayoutMode, sIdentifier)
		Return ele
	End Function
	
	
	
	' ����Ԫ�� [����NULL��ȡ����ǰ�����Ԫ��]
	Sub ActiveElement(ele As xui.Element Ptr) XGE_EXPORT_ALL
		' ����Ԫ��һ��ʧȥ����״̬���¼�
		If xge_xui_element_active Then
			If xge_xui_element_active->ClassEvent.OnLostFocus Then
				xge_xui_element_active->ClassEvent.OnLostFocus(xge_xui_element_active)
			EndIf
		EndIf
		' ����Ԫ��һ����ü���״̬���¼�
		If ele Then
			If ele->ClassEvent.OnGotfocus Then
				ele->ClassEvent.OnGotfocus(ele)
			EndIf
		EndIf
		xge_xui_element_active = ele
	End Sub
	
End Namespace



' ����Ԫ��
Function xui.ElementList.AddElement(elePtr As Any Ptr) As Integer XGE_EXPORT_OBJ
	If elePtr Then
		Dim idx As UInteger = InsertStruct(StructCount, 1)
		Dim ElementPoint As Element Ptr Ptr = StructMemory + ((idx - 1) * StructLenght)
		*ElementPoint = elePtr
		Cast(Element Ptr, elePtr)->Parent = Parent
		Return idx
	EndIf
	Return 0
End Function

' ����Ԫ�ص�ָ��λ��
Function xui.ElementList.InsElement(elePtr As Any Ptr, iPos As Integer) As Integer XGE_EXPORT_OBJ
	If elePtr Then
		Dim idx As UInteger = InsertStruct(iPos, 1)
		Dim ElementPoint As Element Ptr Ptr = StructMemory + ((idx - 1) * StructLenght)
		*ElementPoint = elePtr
		Cast(Element Ptr, elePtr)->Parent = Parent
		Return idx
	EndIf
	Return 0
End Function

' ��ȡԪ��ָ��
Function xui.ElementList.GetElement(iPos As Integer) As Any Ptr XGE_EXPORT_OBJ
	Return *Cast(Any Ptr Ptr, GetPtrStruct(iPos))
End Function

' ɾ��Ԫ��
Function xui.ElementList.DelElement(iPos As Integer) As Integer XGE_EXPORT_OBJ
	Return DeleteStruct(iPos)
End Function

' ���Ԫ��
Sub xui.ElementList.Clear()
	ReInitManage()
End Sub

' ��ȡԪ������
Function xui.ElementList.Count() As UInteger XGE_EXPORT_OBJ
	Return StructCount
End Function



End Extern

