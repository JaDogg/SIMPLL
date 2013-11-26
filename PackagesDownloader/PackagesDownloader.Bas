/'
	PackagesDownloader-GUI for SIMPLL
	This application is developed for the user to choose to download packages from Dropbox or to install packages from the 7z files in the same folder
	
	TODO:
	Parse a file and get required hashes for the package files
	If all packages are present and the hashes are same -> just install
	If a single package is damaged then it has to be re downloaded
	The GUI must be simple yet graphical as much as it can be
'/

#Include Once "windows.bi"

#Include "PackagesDownloader.bi"

Declare Function DlgProc(ByVal hWin As HWND, ByVal uMsg As UINT, ByVal wParam As WPARAM, ByVal lParam As LPARAM) As Integer

'''
''' Program start
'''

	''
	'' Create the Dialog
	''
	hInstance=GetModuleHandle(NULL)
	DialogBoxParam(hInstance, Cast(ZString Ptr,IDD_DLG1), NULL, @DlgProc, NULL)
	''
	'' Program has ended
	''

	ExitProcess(0)
	End

'''
''' Program end
'''
Function DlgProc(ByVal hWin As HWND,ByVal uMsg As UINT,ByVal wParam As WPARAM,ByVal lParam As LPARAM) As Integer
	Dim As Long id, Event, x, y
	Dim hBtn As HWND
	Dim rect As RECT

	Select Case uMsg
		Case WM_INITDIALOG
			'
		Case WM_CLOSE
			EndDialog(hWin, 0)
			'
		Case WM_COMMAND
			id=LoWord(wParam)
			Event=HiWord(wParam)
			Select Case id
				Case IDC_BTN1
					EndDialog(hWin, 0)
					'
			End Select
		Case WM_SIZE
			GetClientRect(hWin,@rect)
			hBtn=GetDlgItem(hWin,IDC_BTN1)
			x=rect.right-100
			y=rect.bottom-35
			MoveWindow(hBtn,x,y,97,31,TRUE)
			'
		Case Else
			Return FALSE
			'
	End Select
	Return TRUE

End Function
