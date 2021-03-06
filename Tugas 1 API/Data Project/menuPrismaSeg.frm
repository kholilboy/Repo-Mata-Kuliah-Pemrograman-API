VERSION 5.00
Begin VB.Form menuPrismaSeg 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Prism Menu"
   ClientHeight    =   6450
   ClientLeft      =   150
   ClientTop       =   495
   ClientWidth     =   11505
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "menuPrismaSeg.frx":0000
   ScaleHeight     =   6603.571
   ScaleMode       =   0  'User
   ScaleWidth      =   11656.98
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton backBtn 
      BackColor       =   &H0080FFFF&
      Caption         =   "Back"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   440
      Left            =   118
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   27
      Width           =   960
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   4800
      Width           =   1974
   End
   Begin VB.CommandButton btnLPPrisma 
      BackColor       =   &H000080FF&
      Caption         =   "Calc Area"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   498
      Left            =   4096
      MaskColor       =   &H00808080&
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   3720
      Width           =   1530
   End
   Begin VB.CommandButton btnVolPrisma 
      BackColor       =   &H000080FF&
      Caption         =   "Calc Volume"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   508
      Left            =   2448
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   3720
      Width           =   1530
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   440
      Left            =   3711
      TabIndex        =   2
      Top             =   1440
      Width           =   1974
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3711
      TabIndex        =   1
      Top             =   2198
      Width           =   1974
   End
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   3711
      TabIndex        =   0
      Top             =   2950
      Width           =   1974
   End
End
Attribute VB_Name = "menuPrismaSeg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub backBtn_Click()
    Me.Hide
    menuPilihan.Show
    
End Sub
Private Sub btnLPPrisma_Click()
    If Text1 = "" Then
        MsgBox ("Length of Surface Can't Empty!")
    ElseIf (Text3 = "") Then
        MsgBox ("Height of Surface Can't Empty!")
    ElseIf (Text4 = "") Then
        MsgBox ("Height of Prism Can't Empty!")
    Else
        Text2 = (3 * (Text1) * Text3) + (2 * 1 / 2 * Text1 * Text4)
    End If
End Sub

Private Sub btnVolPrisma_Click()
    If Text1 = "" Then
        MsgBox ("Length of Surface Can't Empty!")
    ElseIf (Text3 = "") Then
        MsgBox ("Height of Surface Can't Empty!")
    ElseIf (Text4 = "") Then
        MsgBox ("Height of Prism Can't Empty!")
    Else
        Text2 = Text1 * Text3 * Text4
    End If
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, unloadMode As Integer)
    Select Case unloadMode
        Case 1, 2, 3
            Cancel = False
            Unload Me
        Case Else
            Cancel = True
            End
    End Select
End Sub

Private Sub Picture1_Click()

End Sub

Private Sub Text1_Change()
Dim textval As String
Dim numval As String

textval = Text1.Text
If IsNumeric(textval) Then
    numval = textval
  Else
    Text1.Text = CStr(numval)
  End If
  
End Sub

Private Sub Text3_Change()
Dim textval As String
Dim numval As String

textval = Text3.Text
If IsNumeric(textval) Then
    numval = textval
  Else
    Text3.Text = CStr(numval)
  End If
  
End Sub

Private Sub Text4_Change()
Dim textval As String
Dim numval As String

textval = Text4.Text
If IsNumeric(textval) Then
    numval = textval
  Else
    Text4.Text = CStr(numval)
  End If
  
End Sub
