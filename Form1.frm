VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   BorderStyle     =   0  'None
   Caption         =   "Fatal-instinct.cjb.net"
   ClientHeight    =   2010
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3945
   LinkTopic       =   "Form1"
   ScaleHeight     =   2010
   ScaleWidth      =   3945
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   70
      Left            =   0
      Top             =   720
   End
   Begin MSComctlLib.ProgressBar ProgLoad 
      Height          =   255
      Left            =   360
      TabIndex        =   0
      Top             =   1560
      Width           =   3135
      _ExtentX        =   5530
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Loading..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   360
      TabIndex        =   2
      Top             =   1320
      Width           =   1335
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "fatalinstinct.cjb.net"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   735
      Left            =   120
      TabIndex        =   1
      Top             =   0
      Width           =   3735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'All form ontop stuff :)
Const HWND_TOPMOST = -1
Const HWND_NOTOPMOST = -2
Const SWP_NOSIZE = &H1
Const SWP_NOMOVE = &H2
Const SWP_NOACTIVATE = &H10
Const SWP_SHOWWINDOW = &H40

Private Declare Sub SetWindowPos Lib "User32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long)

Private Sub Form_Activate()
    SetWindowPos Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
End Sub

Private Sub Form_Load()
    
    'Centers the form.
    Left = (Screen.Width - Width) \ 2
    Top = (Screen.Height - Height) \ 2

End Sub

Private Sub Timer1_Timer()
    
    ProgLoad.Value = ProgLoad.Value + 5
    'If the Progress Bar (ProgLoad) is 100% then your function happens.
    If ProgLoad.Value = 100 Then
        
        'Your function, can be anything. Open another form, frmMain.show... Ect.
             
        'Unloads this form
        Unload Me
    End If

End Sub
