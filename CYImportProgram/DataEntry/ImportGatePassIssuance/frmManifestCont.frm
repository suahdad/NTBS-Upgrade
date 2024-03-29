VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmManifestCont 
   BackColor       =   &H00E0E0E0&
   Caption         =   "CY Import Billing - Manifest Containers"
   ClientHeight    =   11040
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15450
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   15
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11040
   ScaleWidth      =   15450
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtLog 
      Height          =   555
      Left            =   360
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   203
      Text            =   "frmManifestCont.frx":0000
      Top             =   10380
      Visible         =   0   'False
      Width           =   14415
   End
   Begin TabDlg.SSTab sstMain 
      Height          =   10845
      Left            =   0
      TabIndex        =   1
      Top             =   120
      Width           =   15015
      _ExtentX        =   26485
      _ExtentY        =   19129
      _Version        =   393216
      Tabs            =   6
      TabsPerRow      =   6
      TabHeight       =   520
      BackColor       =   12632256
      ForeColor       =   32768
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Permit"
      TabPicture(0)   =   "frmManifestCont.frx":0006
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "lblManifest(35)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "lblManifest(36)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "lblManifest(37)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "lblManifest(29)"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "lblManifest(41)"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "lblManifest(42)"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "lblManifest(43)"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "lblManifest(74)"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "cmdNextBL"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "txtBL"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "txtRegistry"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "chkForExam"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "txtSBMAPermit"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "txtCustomPermit"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "txtTransactionType"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "txtCompCode"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).ControlCount=   16
      TabCaption(1)   =   "Header"
      TabPicture(1)   =   "frmManifestCont.frx":0022
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "lblManifest(2)"
      Tab(1).Control(1)=   "lblManifest(0)"
      Tab(1).Control(2)=   "lblManifest(1)"
      Tab(1).Control(3)=   "lblManifest(4)"
      Tab(1).Control(4)=   "lblManifest(5)"
      Tab(1).Control(5)=   "mskGatePassNo"
      Tab(1).Control(6)=   "txtBrokerNO"
      Tab(1).Control(7)=   "txtCustomer"
      Tab(1).Control(8)=   "cboVAT"
      Tab(1).Control(9)=   "chkWharfageExempt"
      Tab(1).Control(10)=   "chkWharfageOnly"
      Tab(1).Control(11)=   "cboUnderGuarantee"
      Tab(1).Control(12)=   "cmdPreviousHeader"
      Tab(1).Control(13)=   "cmdNextHeader"
      Tab(1).ControlCount=   14
      TabCaption(2)   =   "Other Info"
      TabPicture(2)   =   "frmManifestCont.frx":003E
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "cmdNextOtherInfo"
      Tab(2).Control(1)=   "cmdPreviousOtherInfo"
      Tab(2).Control(2)=   "fraOther"
      Tab(2).ControlCount=   3
      TabCaption(3)   =   "Container"
      TabPicture(3)   =   "frmManifestCont.frx":005A
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "cmdNextContainer"
      Tab(3).Control(1)=   "cmdPreviousContainer"
      Tab(3).Control(2)=   "cmdCompute"
      Tab(3).Control(3)=   "cboDangClass"
      Tab(3).Control(4)=   "cboStorageStat"
      Tab(3).Control(5)=   "chkWeighing"
      Tab(3).Control(6)=   "fraPlug"
      Tab(3).Control(7)=   "fraDetail"
      Tab(3).Control(8)=   "fraOversize"
      Tab(3).Control(9)=   "fraStorage"
      Tab(3).Control(10)=   "mskCRODate"
      Tab(3).Control(11)=   "mskAdvGPDate"
      Tab(3).Control(12)=   "lblManifest(15)"
      Tab(3).Control(13)=   "lblManifest(16)"
      Tab(3).Control(14)=   "lblManifest(11)"
      Tab(3).Control(15)=   "lblManifest(14)"
      Tab(3).ControlCount=   16
      TabCaption(4)   =   "Charges"
      TabPicture(4)   =   "frmManifestCont.frx":0076
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "lblManifest(34)"
      Tab(4).Control(1)=   "lblManifest(71)"
      Tab(4).Control(2)=   "mskReeferHours"
      Tab(4).Control(3)=   "msfCharges"
      Tab(4).Control(4)=   "cmdPreviousCharges"
      Tab(4).Control(5)=   "cmdNextCharges"
      Tab(4).Control(6)=   "fraRunning"
      Tab(4).Control(7)=   "fraCharges"
      Tab(4).Control(8)=   "fraStorageInfo"
      Tab(4).Control(9)=   "fraExpand"
      Tab(4).Control(10)=   "cmdAnother"
      Tab(4).Control(11)=   "cmdViewGrid"
      Tab(4).ControlCount=   12
      TabCaption(5)   =   "Payment"
      TabPicture(5)   =   "frmManifestCont.frx":0092
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "fraPayment"
      Tab(5).ControlCount=   1
      Begin VB.TextBox txtCompCode 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   4440
         MaxLength       =   30
         TabIndex        =   206
         Top             =   5160
         Width           =   1575
      End
      Begin VB.TextBox txtTransactionType 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   4440
         MaxLength       =   1
         TabIndex        =   196
         Text            =   "F"
         Top             =   3960
         Width           =   375
      End
      Begin VB.TextBox txtCustomPermit 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   4440
         MaxLength       =   10
         TabIndex        =   185
         Top             =   3240
         Width           =   2415
      End
      Begin VB.TextBox txtSBMAPermit 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   4440
         MaxLength       =   10
         TabIndex        =   184
         Top             =   2520
         Width           =   2415
      End
      Begin VB.Frame fraPayment 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   9375
         Left            =   -74062
         TabIndex        =   147
         Top             =   840
         Width           =   13575
         Begin VB.TextBox txtCustomerCode 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   400
            Left            =   2640
            MaxLength       =   6
            TabIndex        =   157
            Top             =   6240
            Width           =   1335
         End
         Begin VB.TextBox txtCustomerName 
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   400
            Left            =   6840
            MaxLength       =   40
            TabIndex        =   156
            Top             =   6240
            Width           =   6615
         End
         Begin VB.CommandButton cmdSave 
            Caption         =   "       F4 Save and Print"
            Height          =   495
            Left            =   7800
            TabIndex        =   155
            Top             =   8160
            Width           =   5655
         End
         Begin VB.CommandButton cmdPreviousPayment 
            Caption         =   "F11 Charges"
            Height          =   400
            Left            =   7800
            TabIndex        =   154
            Top             =   8760
            Width           =   2775
         End
         Begin VB.TextBox txtBank 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   400
            Index           =   0
            Left            =   7440
            MaxLength       =   10
            TabIndex        =   153
            Top             =   2160
            Width           =   1815
         End
         Begin VB.TextBox txtBank 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   400
            Index           =   1
            Left            =   7440
            MaxLength       =   10
            TabIndex        =   152
            Top             =   2640
            Width           =   1815
         End
         Begin VB.TextBox txtBank 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   400
            Index           =   2
            Left            =   7440
            MaxLength       =   10
            TabIndex        =   151
            Top             =   3120
            Width           =   1815
         End
         Begin VB.TextBox txtBank 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   400
            Index           =   3
            Left            =   7440
            MaxLength       =   10
            TabIndex        =   150
            Top             =   3600
            Width           =   1815
         End
         Begin VB.TextBox txtBank 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   400
            Index           =   4
            Left            =   7440
            MaxLength       =   10
            TabIndex        =   149
            Top             =   4080
            Width           =   1815
         End
         Begin VB.CommandButton cmdNextPayment 
            Caption         =   "F12 BL"
            Height          =   400
            Left            =   10680
            TabIndex        =   148
            Top             =   8760
            Width           =   2775
         End
         Begin MSMask.MaskEdBox mskAmountToPay 
            Height          =   405
            Left            =   2640
            TabIndex        =   158
            Top             =   600
            Width           =   2535
            _ExtentX        =   4471
            _ExtentY        =   714
            _Version        =   393216
            Enabled         =   0   'False
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCashAmount 
            Height          =   405
            Left            =   2640
            TabIndex        =   159
            Top             =   1440
            Width           =   2535
            _ExtentX        =   4471
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCheckAmount 
            Height          =   405
            Index           =   1
            Left            =   2640
            TabIndex        =   160
            Top             =   2640
            Width           =   2535
            _ExtentX        =   4471
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskADRAmount 
            Height          =   405
            Left            =   2640
            TabIndex        =   161
            Top             =   4800
            Width           =   2535
            _ExtentX        =   4471
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCheckAmount 
            Height          =   405
            Index           =   0
            Left            =   2640
            TabIndex        =   162
            Top             =   2160
            Width           =   2535
            _ExtentX        =   4471
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCheckAmount 
            Height          =   405
            Index           =   2
            Left            =   2640
            TabIndex        =   163
            Top             =   3120
            Width           =   2535
            _ExtentX        =   4471
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCheckAmount 
            Height          =   405
            Index           =   3
            Left            =   2640
            TabIndex        =   164
            Top             =   3600
            Width           =   2535
            _ExtentX        =   4471
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCheckAmount 
            Height          =   405
            Index           =   4
            Left            =   2640
            TabIndex        =   165
            Top             =   4080
            Width           =   2535
            _ExtentX        =   4471
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskADRBalance 
            Height          =   400
            Left            =   6840
            TabIndex        =   166
            Top             =   6960
            Width           =   2535
            _ExtentX        =   4471
            _ExtentY        =   714
            _Version        =   393216
            Enabled         =   0   'False
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCheckNo 
            Height          =   405
            Index           =   0
            Left            =   5400
            TabIndex        =   167
            Top             =   2160
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   714
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCheckNo 
            Height          =   405
            Index           =   1
            Left            =   5400
            TabIndex        =   168
            Top             =   2640
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   714
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCheckNo 
            Height          =   405
            Index           =   2
            Left            =   5400
            TabIndex        =   169
            Top             =   3120
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   714
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCheckNo 
            Height          =   405
            Index           =   3
            Left            =   5400
            TabIndex        =   170
            Top             =   3600
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   714
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCheckNo 
            Height          =   405
            Index           =   4
            Left            =   5400
            TabIndex        =   171
            Top             =   4080
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   714
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskChange 
            Height          =   405
            Left            =   2640
            TabIndex        =   198
            Top             =   5520
            Width           =   2535
            _ExtentX        =   4471
            _ExtentY        =   714
            _Version        =   393216
            Enabled         =   0   'False
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Amount to Pay:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   50
            Left            =   120
            TabIndex        =   182
            Top             =   600
            Width           =   2415
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Cash Amount:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   51
            Left            =   480
            TabIndex        =   181
            Top             =   1440
            Width           =   2055
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Check Amount:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   285
            Index           =   52
            Left            =   360
            TabIndex        =   180
            Top             =   2160
            Width           =   2175
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "ADR Amount:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   53
            Left            =   480
            TabIndex        =   179
            Top             =   4800
            Width           =   2055
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Customer Code:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   67
            Left            =   120
            TabIndex        =   178
            Top             =   6240
            Width           =   2415
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Customer Name:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   68
            Left            =   4200
            TabIndex        =   177
            Top             =   6240
            Width           =   2535
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Change:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   69
            Left            =   960
            TabIndex        =   176
            Top             =   5520
            Width           =   1575
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "ADR Balance:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   70
            Left            =   4680
            TabIndex        =   175
            Top             =   6960
            Width           =   2055
         End
         Begin VB.Label lblAmountInWords 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   15
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   -1  'True
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   855
            Left            =   5280
            TabIndex        =   174
            Top             =   480
            Width           =   7215
         End
         Begin VB.Label lblManifest 
            Caption         =   "Check No."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   30
            Left            =   5400
            TabIndex        =   173
            Top             =   1800
            Width           =   1815
         End
         Begin VB.Label lblManifest 
            Caption         =   "Bank Code"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   31
            Left            =   7440
            TabIndex        =   172
            Top             =   1800
            Width           =   1815
         End
      End
      Begin VB.CommandButton cmdViewGrid 
         Caption         =   "F9 &Grid"
         Height          =   495
         Left            =   -62160
         TabIndex        =   142
         Top             =   7680
         Width           =   1935
      End
      Begin VB.CommandButton cmdAnother 
         Caption         =   "F8 Next Container"
         Height          =   735
         Left            =   -62160
         TabIndex        =   141
         Top             =   6840
         Width           =   1935
      End
      Begin VB.Frame fraExpand 
         Caption         =   "Expand"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   735
         Left            =   -74760
         TabIndex        =   135
         Top             =   5880
         Width           =   11415
         Begin VB.OptionButton optReefer 
            Caption         =   "&Reefer"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   345
            Left            =   6600
            TabIndex        =   138
            Top             =   240
            Width           =   1335
         End
         Begin VB.OptionButton optArrastre 
            Caption         =   "&Arrastre"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   345
            Left            =   3600
            TabIndex        =   140
            Top             =   240
            Width           =   1695
         End
         Begin VB.OptionButton optWeighing 
            Caption         =   "&Weighing"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   345
            Left            =   5520
            TabIndex        =   139
            Top             =   240
            Visible         =   0   'False
            Width           =   855
         End
         Begin VB.OptionButton optStorage 
            Caption         =   "st&Orage"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   345
            Left            =   1200
            TabIndex        =   137
            Top             =   240
            Width           =   1575
         End
         Begin VB.OptionButton optNoExpand 
            Caption         =   "&No Expand"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   345
            Left            =   9000
            TabIndex        =   136
            Top             =   240
            Value           =   -1  'True
            Width           =   1815
         End
      End
      Begin VB.Frame fraStorageInfo 
         Caption         =   "Storage Info"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   3015
         Left            =   -74760
         TabIndex        =   124
         Top             =   6720
         Width           =   7095
         Begin MSMask.MaskEdBox mskPayableDays 
            Height          =   405
            Left            =   4800
            TabIndex        =   125
            Top             =   2280
            Width           =   855
            _ExtentX        =   1508
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskDaysInYard 
            Height          =   405
            Left            =   4800
            TabIndex        =   126
            Top             =   1800
            Width           =   855
            _ExtentX        =   1508
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker dtStartStorage 
            Height          =   405
            Left            =   4800
            TabIndex        =   127
            Top             =   360
            Width           =   2175
            _ExtentX        =   3836
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            CalendarBackColor=   16777215
            CustomFormat    =   "yyy-MM-dd"
            Format          =   92209155
            CurrentDate     =   32874
         End
         Begin MSComCtl2.DTPicker dtStorageFree 
            Height          =   405
            Left            =   4800
            TabIndex        =   128
            Top             =   840
            Width           =   2175
            _ExtentX        =   3836
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            CustomFormat    =   "yyy-MM-dd"
            Format          =   92209155
            CurrentDate     =   32874
         End
         Begin MSComCtl2.DTPicker dtEndStorage 
            Height          =   405
            Left            =   4800
            TabIndex        =   129
            Top             =   1320
            Width           =   2175
            _ExtentX        =   3836
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            CustomFormat    =   "yyy-MM-dd"
            Format          =   92209155
            CurrentDate     =   32874
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Payable days:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   405
            Index           =   49
            Left            =   1800
            TabIndex        =   134
            Top             =   2280
            Width           =   2895
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Days in yard:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   48
            Left            =   1560
            TabIndex        =   133
            Top             =   1800
            Width           =   3135
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "End Storage day in ICTSI:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   47
            Left            =   480
            TabIndex        =   132
            Top             =   1320
            Width           =   4215
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Storage free until:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   46
            Left            =   1560
            TabIndex        =   131
            Top             =   840
            Width           =   3135
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Start Storage day in ICTSI:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   45
            Left            =   120
            TabIndex        =   130
            Top             =   360
            Width           =   4575
         End
      End
      Begin VB.Frame fraCharges 
         Caption         =   "Charges Summary"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   3015
         Left            =   -67560
         TabIndex        =   113
         Top             =   6720
         Width           =   5295
         Begin MSMask.MaskEdBox mskTotalAMT 
            Height          =   405
            Left            =   2880
            TabIndex        =   114
            Top             =   360
            Width           =   2295
            _ExtentX        =   4048
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskTotalVAT 
            Height          =   405
            Left            =   2880
            TabIndex        =   115
            Top             =   840
            Width           =   2295
            _ExtentX        =   4048
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskTotalWTAX 
            Height          =   405
            Left            =   2880
            TabIndex        =   116
            Top             =   1320
            Width           =   2295
            _ExtentX        =   4048
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskContainerTotal 
            Height          =   405
            Left            =   2880
            TabIndex        =   117
            Top             =   1800
            Width           =   2295
            _ExtentX        =   4048
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskPayOnly 
            Height          =   405
            Left            =   2880
            TabIndex        =   118
            Top             =   2400
            Width           =   2295
            _ExtentX        =   4048
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Pay Only:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   58
            Left            =   1200
            TabIndex        =   123
            Top             =   2400
            Width           =   1575
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Container Total:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   57
            Left            =   120
            TabIndex        =   122
            Top             =   1800
            Width           =   2655
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Total WTAX:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   56
            Left            =   960
            TabIndex        =   121
            Top             =   1320
            Width           =   1815
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Total VAT:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   55
            Left            =   960
            TabIndex        =   120
            Top             =   840
            Width           =   1815
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Total AMT:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   54
            Left            =   1080
            TabIndex        =   119
            Top             =   360
            Width           =   1695
         End
      End
      Begin VB.Frame fraRunning 
         Caption         =   "Running Total"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   855
         Left            =   -63120
         TabIndex        =   111
         Top             =   5820
         Width           =   2895
         Begin MSMask.MaskEdBox mskRunning 
            Height          =   405
            Left            =   120
            TabIndex        =   112
            Top             =   360
            Width           =   2655
            _ExtentX        =   4683
            _ExtentY        =   714
            _Version        =   393216
            Enabled         =   0   'False
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
      End
      Begin VB.CommandButton cmdNextCharges 
         Caption         =   "F12 Payment"
         Height          =   400
         Left            =   -63240
         TabIndex        =   110
         Top             =   10080
         Width           =   3015
      End
      Begin VB.CommandButton cmdPreviousCharges 
         Caption         =   "F11 Container"
         Height          =   400
         Left            =   -66480
         TabIndex        =   109
         Top             =   10080
         Width           =   3015
      End
      Begin VB.CommandButton cmdNextContainer 
         Caption         =   "F12 Charges"
         Height          =   400
         Left            =   -62760
         TabIndex        =   102
         Top             =   10320
         Width           =   2535
      End
      Begin VB.CommandButton cmdPreviousContainer 
         Caption         =   "F11 Oth Info"
         Height          =   400
         Left            =   -65400
         TabIndex        =   101
         Top             =   10320
         Width           =   2535
      End
      Begin VB.CommandButton cmdCompute 
         Caption         =   "F8 Compute &Charges"
         Height          =   400
         Left            =   -65400
         TabIndex        =   100
         Top             =   9720
         Width           =   5175
      End
      Begin VB.ComboBox cboDangClass 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         ItemData        =   "frmManifestCont.frx":00AE
         Left            =   -72000
         List            =   "frmManifestCont.frx":00B0
         Style           =   2  'Dropdown List
         TabIndex        =   99
         Top             =   4260
         Width           =   8535
      End
      Begin VB.ComboBox cboStorageStat 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         ItemData        =   "frmManifestCont.frx":00B2
         Left            =   -72000
         List            =   "frmManifestCont.frx":00B4
         Style           =   2  'Dropdown List
         TabIndex        =   98
         Top             =   4920
         Width           =   11775
      End
      Begin VB.CheckBox chkWeighing 
         Caption         =   "For Weighing"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   -62880
         TabIndex        =   97
         Top             =   4320
         Width           =   2415
      End
      Begin VB.Frame fraPlug 
         ForeColor       =   &H8000000D&
         Height          =   1455
         Left            =   -68160
         TabIndex        =   92
         Top             =   2520
         Width           =   7335
         Begin MSMask.MaskEdBox mskPlugIN 
            Height          =   375
            Left            =   3840
            TabIndex        =   93
            Top             =   240
            Width           =   3375
            _ExtentX        =   5953
            _ExtentY        =   661
            _Version        =   393216
            MaxLength       =   19
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "####-##-## ##:##:##"
            PromptChar      =   " "
         End
         Begin MSMask.MaskEdBox mskPlugOUT 
            Height          =   375
            Left            =   3840
            TabIndex        =   94
            Top             =   840
            Width           =   3375
            _ExtentX        =   5953
            _ExtentY        =   661
            _Version        =   393216
            MaxLength       =   19
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "####-##-## ##:##:##"
            PromptChar      =   " "
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Plug-IN Date/Time:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   12
            Left            =   240
            TabIndex        =   96
            Top             =   240
            Width           =   3495
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Plug-OUT Date/Time:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   13
            Left            =   240
            TabIndex        =   95
            Top             =   840
            Width           =   3495
         End
      End
      Begin VB.Frame fraDetail 
         Caption         =   "Container Info"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   1935
         Left            =   -74880
         TabIndex        =   81
         Top             =   600
         Width           =   14055
         Begin VB.ComboBox cmbConNo 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            ItemData        =   "frmManifestCont.frx":00B6
            Left            =   2760
            List            =   "frmManifestCont.frx":00B8
            TabIndex        =   199
            Top             =   360
            Width           =   3255
         End
         Begin VB.TextBox txtContainer 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Index           =   1
            Left            =   8040
            MaxLength       =   2
            TabIndex        =   84
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox txtContainer 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Index           =   2
            Left            =   8640
            MaxLength       =   1
            TabIndex        =   83
            Text            =   "F"
            Top             =   360
            Width           =   375
         End
         Begin VB.TextBox txtContainer 
            BackColor       =   &H00FFFFFF&
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Index           =   3
            Left            =   11880
            TabIndex        =   82
            Top             =   360
            Width           =   2055
         End
         Begin MSMask.MaskEdBox mskLastDischargeDate 
            Height          =   375
            Left            =   3840
            TabIndex        =   85
            Top             =   1440
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   661
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "####-##-##"
            PromptChar      =   " "
         End
         Begin MSMask.MaskEdBox mskTrainMountDate 
            Height          =   375
            Left            =   10560
            TabIndex        =   86
            Top             =   960
            Visible         =   0   'False
            Width           =   3375
            _ExtentX        =   5953
            _ExtentY        =   661
            _Version        =   393216
            MaxLength       =   19
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "####-##-## ##:##:##"
            PromptChar      =   " "
         End
         Begin VB.Label lblManifest 
            Caption         =   "Hold/Release Status:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   73
            Left            =   720
            TabIndex        =   205
            Top             =   960
            Width           =   2415
         End
         Begin VB.Label lblHolds 
            Caption         =   "--Holds--"
            Height          =   375
            Left            =   3480
            TabIndex        =   204
            Top             =   960
            Width           =   10455
         End
         Begin VB.Label lblManifest 
            Caption         =   "Container No.:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   6
            Left            =   720
            TabIndex        =   91
            Top             =   360
            Width           =   1935
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Size,  F/E:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   7
            Left            =   6000
            TabIndex        =   90
            Top             =   360
            Width           =   1935
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Registry No.:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   8
            Left            =   9480
            TabIndex        =   89
            Top             =   360
            Width           =   2295
         End
         Begin VB.Label lblManifest 
            Caption         =   "Last Discharge Date:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   9
            Left            =   720
            TabIndex        =   88
            Top             =   1440
            Width           =   2895
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Train Mount Date/Time: "
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   10
            Left            =   6720
            TabIndex        =   87
            Top             =   960
            Visible         =   0   'False
            Width           =   3735
         End
      End
      Begin VB.Frame fraOversize 
         Caption         =   "Oversize Container"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   3615
         Left            =   -65280
         TabIndex        =   70
         Top             =   5760
         Width           =   4455
         Begin VB.TextBox txtUMS 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Left            =   2880
            MaxLength       =   1
            TabIndex        =   71
            Text            =   "I"
            Top             =   1800
            Width           =   285
         End
         Begin MSMask.MaskEdBox mskOVLength 
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "#,##0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            Height          =   405
            Left            =   2880
            TabIndex        =   72
            Top             =   360
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskOVWidth 
            Height          =   405
            Left            =   2880
            TabIndex        =   73
            Top             =   840
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   714
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskOVHeight 
            Height          =   405
            Left            =   2880
            TabIndex        =   74
            Top             =   1320
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   714
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskRevenueTon 
            Height          =   405
            Left            =   2880
            TabIndex        =   75
            Top             =   2400
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   714
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Length:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   17
            Left            =   1560
            TabIndex        =   80
            Top             =   360
            Width           =   1215
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Width:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   18
            Left            =   1680
            TabIndex        =   79
            Top             =   840
            Width           =   1095
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Height:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   19
            Left            =   1560
            TabIndex        =   78
            Top             =   1320
            Width           =   1215
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "UMS {C/I}:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   20
            Left            =   1080
            TabIndex        =   77
            Top             =   1800
            Width           =   1695
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Revenue Tonnage:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   21
            Left            =   120
            TabIndex        =   76
            Top             =   2400
            Width           =   2655
         End
      End
      Begin VB.Frame fraStorage 
         Caption         =   "Storage"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   3495
         Left            =   -74880
         TabIndex        =   57
         Top             =   5880
         Width           =   7335
         Begin VB.TextBox txtRelayContainer 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   465
            Left            =   5160
            MaxLength       =   1
            TabIndex        =   58
            Top             =   2760
            Width           =   375
         End
         Begin MSMask.MaskEdBox mskDaysFree 
            Height          =   405
            Left            =   5160
            TabIndex        =   59
            Top             =   1320
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   714
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskDiscount 
            Height          =   405
            Left            =   5160
            TabIndex        =   60
            Top             =   840
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   714
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Format          =   "0.00%"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskNonWorkingDays 
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#,##0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   405
            Left            =   5160
            TabIndex        =   61
            Top             =   2280
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   714
            _Version        =   393216
            MaxLength       =   5
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskStripDate 
            Height          =   375
            Left            =   5160
            TabIndex        =   62
            Top             =   360
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   661
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "####-##-##"
            PromptChar      =   " "
         End
         Begin MSMask.MaskEdBox mskBOCGatepassDate 
            Height          =   375
            Left            =   5160
            TabIndex        =   63
            Top             =   1800
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   661
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "####-##-##"
            PromptChar      =   " "
         End
         Begin VB.Label lblStrippingDate 
            Alignment       =   1  'Right Justify
            Caption         =   "Stripping Date:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Left            =   2520
            TabIndex        =   69
            Top             =   360
            Width           =   2535
         End
         Begin VB.Label lblDiscount 
            Alignment       =   1  'Right Justify
            Caption         =   "Discount in %:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Left            =   2640
            TabIndex        =   68
            Top             =   840
            Width           =   2415
         End
         Begin VB.Label lblNoDaysFree 
            Alignment       =   1  'Right Justify
            Caption         =   "No. of Days Free:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Left            =   2160
            TabIndex        =   67
            Top             =   1320
            Width           =   2895
         End
         Begin VB.Label lblBOCGatepassDate 
            Alignment       =   1  'Right Justify
            Caption         =   "BOC Gatepass Date:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Left            =   2040
            TabIndex        =   66
            Top             =   1800
            Width           =   3015
         End
         Begin VB.Label lblNonWorkingDaysinBetween 
            Alignment       =   1  'Right Justify
            Caption         =   "Non-Working Days in Between:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Left            =   360
            TabIndex        =   65
            Top             =   2280
            Width           =   4695
         End
         Begin VB.Label lblImportOrExport 
            Alignment       =   1  'Right Justify
            Caption         =   "Import or Export:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Left            =   2160
            TabIndex        =   64
            Top             =   2760
            Width           =   2895
         End
      End
      Begin VB.CommandButton cmdNextOtherInfo 
         Caption         =   "F12 Container"
         Height          =   400
         Left            =   -62520
         TabIndex        =   56
         Top             =   9900
         Width           =   2295
      End
      Begin VB.CommandButton cmdPreviousOtherInfo 
         Caption         =   "F11 Header"
         Height          =   400
         Left            =   -65040
         TabIndex        =   55
         Top             =   9900
         Width           =   2295
      End
      Begin VB.Frame fraOther 
         ForeColor       =   &H8000000D&
         Height          =   7455
         Left            =   -74760
         TabIndex        =   22
         Top             =   720
         Width           =   14535
         Begin VB.TextBox txtConsigneeTIN 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   5160
            MaxLength       =   9
            TabIndex        =   191
            Top             =   960
            Width           =   2655
         End
         Begin VB.TextBox txtBrokerTIN 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   5160
            MaxLength       =   9
            TabIndex        =   190
            Top             =   2160
            Width           =   2655
         End
         Begin VB.TextBox txtVoyageNo 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   10560
            MaxLength       =   20
            TabIndex        =   188
            Top             =   5280
            Width           =   2655
         End
         Begin VB.TextBox txtLocation 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   10560
            MaxLength       =   10
            TabIndex        =   186
            Top             =   4680
            Width           =   2055
         End
         Begin VB.TextBox txtShippingLine 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   10560
            MaxLength       =   7
            TabIndex        =   38
            Top             =   1080
            Width           =   3015
         End
         Begin VB.TextBox txtOrderSupplier 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   10560
            MaxLength       =   8
            TabIndex        =   37
            Top             =   1680
            Width           =   3015
         End
         Begin VB.TextBox txtBillofLading1 
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   10560
            MaxLength       =   30
            TabIndex        =   36
            Top             =   2280
            Width           =   3735
         End
         Begin VB.TextBox txtSealNo 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   10560
            MaxLength       =   30
            TabIndex        =   35
            Top             =   3480
            Width           =   1935
         End
         Begin VB.TextBox txtPortofOrigin 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   10560
            MaxLength       =   3
            TabIndex        =   34
            Top             =   4080
            Width           =   735
         End
         Begin VB.TextBox txtEntryType 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   10560
            MaxLength       =   1
            TabIndex        =   33
            Top             =   2880
            Width           =   615
         End
         Begin VB.TextBox txtConsolidationType 
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   10560
            MaxLength       =   1
            TabIndex        =   32
            ToolTipText     =   "Please enter customer name"
            Top             =   5850
            Visible         =   0   'False
            Width           =   375
         End
         Begin VB.CheckBox chkCustomsGuard 
            Caption         =   "Customs Guard?"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Left            =   2760
            TabIndex        =   31
            Top             =   6360
            Width           =   2655
         End
         Begin VB.TextBox txtRemarks 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   2760
            MaxLength       =   30
            TabIndex        =   30
            Top             =   5760
            Width           =   5055
         End
         Begin VB.TextBox txtVesselCode 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   2760
            MaxLength       =   10
            TabIndex        =   29
            Top             =   5160
            Width           =   2655
         End
         Begin VB.TextBox txtDeclaredWeight 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   2760
            MaxLength       =   15
            TabIndex        =   28
            Top             =   4560
            Width           =   2655
         End
         Begin VB.TextBox txtBoatNote 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   2760
            MaxLength       =   8
            TabIndex        =   27
            Top             =   3960
            Width           =   1455
         End
         Begin VB.TextBox txtPDIGNo 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   2760
            MaxLength       =   15
            TabIndex        =   26
            Top             =   3360
            Visible         =   0   'False
            Width           =   2655
         End
         Begin VB.TextBox txtCommodity 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   2760
            MaxLength       =   30
            TabIndex        =   25
            Top             =   2760
            Width           =   5055
         End
         Begin VB.TextBox txtBroker 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   2760
            MaxLength       =   30
            TabIndex        =   24
            Top             =   1560
            Width           =   5055
         End
         Begin VB.TextBox txtConsignee 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   2760
            MaxLength       =   30
            TabIndex        =   23
            Top             =   480
            Width           =   5055
         End
         Begin VB.Label lblManifest 
            Caption         =   "1 -  PEZA"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   255
            Index           =   72
            Left            =   12240
            TabIndex        =   202
            Top             =   5880
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.Label lblManifest 
            Caption         =   "2 -  NAPOCOR"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   255
            Index           =   59
            Left            =   12240
            TabIndex        =   201
            Top             =   6240
            Visible         =   0   'False
            Width           =   1695
         End
         Begin VB.Label lblManifest 
            Caption         =   "3 -  CREDIT MEMO"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   255
            Index           =   44
            Left            =   12240
            TabIndex        =   200
            Top             =   6600
            Visible         =   0   'False
            Width           =   2175
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "TIN:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   40
            Left            =   3240
            TabIndex        =   193
            Top             =   960
            Width           =   1815
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "TIN:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   39
            Left            =   3240
            TabIndex        =   192
            Top             =   2160
            Width           =   1815
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Voyage No:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   3
            Left            =   7920
            TabIndex        =   189
            Top             =   5280
            Width           =   2535
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Location:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   38
            Left            =   7920
            TabIndex        =   187
            Top             =   4680
            Width           =   2535
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Shipping Line:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   62
            Left            =   8040
            TabIndex        =   54
            Top             =   1080
            Width           =   2415
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Order Supplier:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   63
            Left            =   7920
            TabIndex        =   53
            Top             =   1680
            Width           =   2535
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Bill of Lading:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   64
            Left            =   7920
            TabIndex        =   52
            Top             =   2280
            Width           =   2535
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Seal No.:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   65
            Left            =   8640
            TabIndex        =   51
            Top             =   3480
            Width           =   1815
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Port of Origin:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   66
            Left            =   7920
            TabIndex        =   50
            Top             =   4080
            Width           =   2535
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Entry Type:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   28
            Left            =   8640
            TabIndex        =   49
            Top             =   2880
            Width           =   1815
         End
         Begin VB.Label lblManifest 
            Caption         =   "Consolidation Type:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   375
            Index           =   32
            Left            =   8040
            TabIndex        =   48
            Top             =   5880
            Visible         =   0   'False
            Width           =   2415
         End
         Begin VB.Label lblManifest 
            Caption         =   "Legend :"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   375
            Index           =   33
            Left            =   11040
            TabIndex        =   47
            Top             =   5880
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Remarks:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   61
            Left            =   1080
            TabIndex        =   46
            Top             =   5760
            Width           =   1575
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Declared Weight:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   60
            Left            =   0
            TabIndex        =   45
            Top             =   4560
            Width           =   2655
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Vessel Code:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   27
            Left            =   480
            TabIndex        =   44
            Top             =   5160
            Width           =   2175
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Boat Note:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   26
            Left            =   960
            TabIndex        =   43
            Top             =   3960
            Width           =   1695
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "PDIG No.:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   25
            Left            =   720
            TabIndex        =   42
            Top             =   3360
            Visible         =   0   'False
            Width           =   1935
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Commodity:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   24
            Left            =   720
            TabIndex        =   41
            Top             =   2760
            Width           =   1935
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Broker:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   23
            Left            =   1320
            TabIndex        =   40
            Top             =   1560
            Width           =   1335
         End
         Begin VB.Label lblManifest 
            Alignment       =   1  'Right Justify
            Caption         =   "Consignee:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   375
            Index           =   22
            Left            =   840
            TabIndex        =   39
            Top             =   480
            Width           =   1815
         End
      End
      Begin VB.CommandButton cmdNextHeader 
         BackColor       =   &H8000000A&
         Caption         =   "F12 Other Info"
         Height          =   400
         Left            =   -62880
         Picture         =   "frmManifestCont.frx":00BA
         TabIndex        =   21
         Top             =   9960
         Width           =   2655
      End
      Begin VB.CommandButton cmdPreviousHeader 
         Caption         =   "F11 Permit"
         Height          =   400
         Left            =   -65760
         TabIndex        =   20
         Top             =   9960
         Width           =   2655
      End
      Begin VB.ComboBox cboUnderGuarantee 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         ItemData        =   "frmManifestCont.frx":0984
         Left            =   -71280
         List            =   "frmManifestCont.frx":0986
         Style           =   2  'Dropdown List
         TabIndex        =   13
         Top             =   4200
         Width           =   5655
      End
      Begin VB.CheckBox chkWharfageOnly 
         Caption         =   "Wharfage Only"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   345
         Left            =   -71280
         TabIndex        =   12
         Top             =   4800
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox chkWharfageExempt 
         Caption         =   "Wharfage Exempt"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   345
         Left            =   -71280
         TabIndex        =   11
         Top             =   5280
         Visible         =   0   'False
         Width           =   2895
      End
      Begin VB.ComboBox cboVAT 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         ItemData        =   "frmManifestCont.frx":0988
         Left            =   -71280
         List            =   "frmManifestCont.frx":098A
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   3600
         Width           =   8055
      End
      Begin VB.TextBox txtCustomer 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   -71280
         MaxLength       =   40
         TabIndex        =   9
         ToolTipText     =   "Please enter customer name"
         Top             =   2400
         Visible         =   0   'False
         Width           =   8655
      End
      Begin VB.TextBox txtBrokerNO 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   -71280
         MaxLength       =   10
         TabIndex        =   8
         Top             =   3000
         Width           =   1815
      End
      Begin VB.CheckBox chkForExam 
         Caption         =   "For Exam"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   345
         Left            =   4440
         TabIndex        =   7
         Top             =   6240
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.TextBox txtRegistry 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   4440
         MaxLength       =   12
         TabIndex        =   5
         Top             =   5760
         Width           =   2175
      End
      Begin VB.TextBox txtBL 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   4440
         MaxLength       =   30
         TabIndex        =   4
         Top             =   4560
         Width           =   3735
      End
      Begin VB.CommandButton cmdNextBL 
         BackColor       =   &H8000000A&
         Caption         =   "F12 Header"
         Height          =   400
         Left            =   12480
         Picture         =   "frmManifestCont.frx":098C
         TabIndex        =   0
         Top             =   9900
         Width           =   2295
      End
      Begin MSMask.MaskEdBox mskGatePassNo 
         Height          =   435
         Left            =   -71280
         TabIndex        =   14
         Top             =   1800
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   767
         _Version        =   393216
         MaxLength       =   8
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Format          =   "########"
         PromptChar      =   " "
      End
      Begin MSMask.MaskEdBox mskCRODate 
         Height          =   375
         Left            =   -71040
         TabIndex        =   103
         Top             =   2760
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   661
         _Version        =   393216
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "####-##-##"
         PromptChar      =   " "
      End
      Begin MSMask.MaskEdBox mskAdvGPDate 
         Height          =   375
         Left            =   -71040
         TabIndex        =   104
         Top             =   3360
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   661
         _Version        =   393216
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "####-##-##"
         PromptChar      =   " "
      End
      Begin MSFlexGridLib.MSFlexGrid msfCharges 
         Height          =   4935
         Left            =   -74880
         TabIndex        =   143
         Top             =   840
         Width           =   14535
         _ExtentX        =   25638
         _ExtentY        =   8705
         _Version        =   393216
         Cols            =   114
         FixedCols       =   0
         AllowBigSelection=   0   'False
         SelectionMode   =   1
         AllowUserResizing=   3
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Courier New"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSMask.MaskEdBox mskReeferHours 
         Height          =   405
         Left            =   -72600
         TabIndex        =   144
         Top             =   9840
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   714
         _Version        =   393216
         Enabled         =   0   'False
         MaxLength       =   6
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         PromptChar      =   "_"
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Company Code:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   74
         Left            =   1680
         TabIndex        =   207
         Top             =   5160
         Width           =   2655
      End
      Begin VB.Label lblManifest 
         Caption         =   "(F for Foreign, D for Domestic)"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   43
         Left            =   4920
         TabIndex        =   197
         Top             =   3960
         Width           =   5895
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Transaction type:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   42
         Left            =   1320
         TabIndex        =   195
         Top             =   3960
         Width           =   3015
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "(format: AAA999YY)"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   41
         Left            =   6600
         TabIndex        =   194
         Top             =   5760
         Visible         =   0   'False
         Width           =   2295
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "SBMA Control No:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   29
         Left            =   1800
         TabIndex        =   183
         Top             =   2520
         Width           =   2535
      End
      Begin VB.Label lblManifest 
         Caption         =   "Press the ""Up/Down"" Arrows to select, ""Return"" or ""Enter"" key to View/Edit a transaction,  ""Delete"" key to delete a transaction."
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   735
         Index           =   71
         Left            =   -74760
         TabIndex        =   146
         Top             =   480
         Width           =   14415
      End
      Begin VB.Label lblManifest 
         Caption         =   "Reefer No Hours:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Index           =   34
         Left            =   -74760
         TabIndex        =   145
         Top             =   9840
         Width           =   2055
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Danger Class:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Index           =   15
         Left            =   -74520
         TabIndex        =   108
         Top             =   4320
         Width           =   2415
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Storage Status:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Index           =   16
         Left            =   -74640
         TabIndex        =   107
         Top             =   4920
         Width           =   2535
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "CRO Date:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Index           =   11
         Left            =   -72720
         TabIndex        =   106
         Top             =   2760
         Width           =   1575
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Advance GPass Date:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Index           =   14
         Left            =   -74280
         TabIndex        =   105
         Top             =   3360
         Width           =   3135
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "UnderGuaratee Code:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   5
         Left            =   -74520
         TabIndex        =   19
         Top             =   4200
         Width           =   3135
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "VAT Code:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   4
         Left            =   -73080
         TabIndex        =   18
         Top             =   3600
         Width           =   1695
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Broker ID No:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   1
         Left            =   -74160
         TabIndex        =   17
         Top             =   3000
         Width           =   2775
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Customer:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   0
         Left            =   -73080
         TabIndex        =   16
         Top             =   2400
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Next Gatepass Number:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   2
         Left            =   -74880
         TabIndex        =   15
         Top             =   1800
         Width           =   3495
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Custom Permit No:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   37
         Left            =   1200
         TabIndex        =   6
         Top             =   3240
         Width           =   3135
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Registry Number:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   36
         Left            =   1320
         TabIndex        =   3
         Top             =   5760
         Width           =   3015
      End
      Begin VB.Label lblManifest 
         Alignment       =   1  'Right Justify
         Caption         =   "Bill of Lading:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   375
         Index           =   35
         Left            =   1680
         TabIndex        =   2
         Top             =   4560
         Width           =   2655
      End
   End
End
Attribute VB_Name = "frmManifestCont"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************
'* CY IMPORT Data Entry Program - SUBIC
'* by noelistic ;-)
'* July, 2000
'* Revised by Bien 9-22-2000
'******************************************************

Option Explicit

Const cGPSType As String = "1"
Const cControlType As String = "CYM"
Const cStatus As String = " "
Const cUpdateCode As String = "A"
'
Const cRTon20 As Currency = 27.95
Const cRTon40 As Currency = 63.75
Const cRTon45 As Currency = 76.38
'Const cRevenueTonMultiplier As Currency = 71
Const cConsolidationWharfageRate As Currency = 15.25
Const cNullDate As Date = #12:00:00 AM#
'
Const cDangerClassRate1 As Currency = 0.5
Const cDangerClassRate2 As Currency = 0.25
Const cDangerClassRate3 As Currency = 0.1
'
Const cCAMTWidthRegular As Integer = 1500
Const cCAMTWidthReduced As Integer = 0
Const cCFixedWidth As Integer = 300
Const cCGatePassWidth As Integer = 0
Const cCSequenceWidth As Integer = 0
'
Const cCContainerWidth As Integer = 2000
Const cCRevenueTonWidth As Integer = 1000
Const cPayOnly As Integer = 2200
Const cCWidthNormal As Integer = 1000
'
Const cTabBL As Integer = 0
Const cTabHeader As Integer = 1
Const cTabOtherInfo As Integer = 2
Const cTabContainer As Integer = 3
Const cTabCharges As Integer = 4
Const cTabPayment As Integer = 5

Const cDateFormat As String = "    -  -  "
Const cDateTimeFormat As String = "    -  -     :  :  "
'
Private Type columnBLs
    EntryType As Byte
    BillofLading As Byte
    Registry As Byte
    Broker As Byte
    Close As Byte
End Type
'
Private Type BLs
    EntryType As String * 1
    BillofLading As String * 22
    Registry As String * 10
    Broker As String * 30
    Close As String * 1
End Type
'
Private Type columnContainers
    ContainerNo As Byte
    Size As Byte
    GatepassNo As Byte
    Split As Byte
    Exam As Byte
    Error As Byte
    NotPaid As Byte
    NoEntry As Byte
    NIL As Byte
    Hold As Byte
    Maersk As Byte
    FE As Byte
    OrderSupplier As Byte
    ShipLine As Byte
    Reefer As Byte
    Bill As Byte
End Type
'
Private Type Entries
    ContainerNo As String * 12
    BillofLading As String * 22
    Registry As String * 8
    RegistryOrig As String * 10
    Broker As String * 30
    EntryNo As Long
    Exam As String * 1
    CandidateforSix As Boolean
End Type
'
Private Type Columns
    FixedCol As Byte
    Gatepass As Byte
    Sequence As Byte
    RevenueTon As Byte

    StorageTotal As Byte
    StorageBasic As Byte
    StorageWTAX As Byte
    StorageVAT As Byte

    ArrastreTotal As Byte
    ArrastreBasic As Byte
    ArrastreWTAX As Byte
    ArrastreVAT As Byte

    WeighingTotal As Byte
    WeighingBasic As Byte
    WeighingWTAX As Byte
    WeighingVAT As Byte

    ReeferTotal As Byte
    ReeferBasic As Byte
    ReeferWTAX As Byte
    ReeferVAT As Byte

    TotalAMT As Byte

    Reference As Byte
    GPassType As Byte
    ContainerID As Byte
    EntryType As Byte
    EntryNo As Byte
    
    CustomPN As Byte
    SBMAPN As Byte
    Location As Byte
    VoyageNo As Byte
    
    ContainerSize As Byte
    FullEmpty As Byte
    OVLength As Byte
    OVWidth As Byte
    OVHeight As Byte

    OversizeUMS As Byte
    OversizeAMT As Byte
    TranshipmentCode As Byte
    ConsolCargoCode As Byte
    DeclaredWeight As Byte
    BillofLading As Byte
    
    RegistryNo As Byte
    CRODate As Byte
    LastDischargeDate As Byte
    ExtensionDate As Byte
    VesselCode As Byte
    SealNumber As Byte

    OrderSupplier As Byte
    BoatNote As Byte
    ShippingLine As Byte
    PortofOrigin As Byte
    Consignee As Byte

    Broker As Byte
    BrokerNo As Byte
    PDIGNo As Byte
    Commodity As Byte
    DangerClass As Byte
    DangerAMT As Byte
    Weighing As Byte

    StorageDiscount As Byte
    BillableDays As Byte
    FreeStorageDays As Byte
    StorageStatus As Byte
    StrippingDate As Byte
    Discount As Byte
    NoDaysFree As Byte
    BOCGatePassDate As Byte
    NonWorkingDaysinBetween As Byte
    ImportOrExport As Byte
    
    VATCode As Byte

    WharfageExempt As Byte
    GuaranteeCode As Byte
    CustomGuard As Byte
    PlugINDate As Byte
    PlugOUTDate As Byte
    VisitID As Byte
    MountDate As Byte

    StartStorageDate As Byte
    FreeStorageUntil As Byte
    EndStorageDate As Byte
    RemarksCode As Byte
    Remarks As Byte
    StatusCode As Byte
    RecordTag As Byte

    UserID As Byte
    GatePassDate As Byte
    UpdateCode As Byte
    
    TotalAMOUNT As Byte
    TotalVAT As Byte
    TotalWTAX As Byte
    ContainerTotal As Byte
    PayOnly As Byte
    DaysInYard As Byte
    PayableDays As Byte
    
    tmpStorageBasic As Byte
    tmpStorageWTAX As Byte
    tmpStorageVAT6 As Byte
    tmpStorageVAT10 As Byte

    tmpArrastreBasic As Byte
    tmpArrastreWTAX As Byte
    tmpArrastreVAT6 As Byte
    tmpArrastreVAT10 As Byte

    tmpWeighingBasic As Byte
    tmpWeighingWTAX As Byte
    tmpWeighingVAT6 As Byte
    tmpWeighingVAT10 As Byte

    tmpReeferBasic As Byte
    tmpReeferWTAX As Byte
    tmpReeferVAT6 As Byte
    tmpReeferVAT10 As Byte

    ForExam As Byte
    RegistryOrig As Byte
    TINBroker As Byte
    TINConsignee As Byte
    
    'PRNH - Company Code tagging
    CompanyCode As String
End Type
'
Private Type Headers
    Customer As String * 40
    BrokerNo As String * 7
    VATCode As String * 1
    UnderGuaranteeCode As String * 1
    WharfageOnly As Integer
    WharfageExempt As Integer
End Type
'
Private Type Payments
    ADR As Currency
    CheckAmt1 As Currency
    CheckAmt2 As Currency
    CheckAmt3 As Currency
    CheckAmt4 As Currency
    CheckAmt5 As Currency
    CheckNo1 As String * 10
    CheckNo2 As String * 10
    CheckNo3 As String * 10
    CheckNo4 As String * 10
    CheckNo5 As String * 10
    CheckBnk1 As String * 10
    CheckBnk2 As String * 10
    CheckBnk3 As String * 10
    CheckBnk4 As String * 10
    CheckBnk5 As String * 10
    Cash As Currency
    Change As Currency
    TotalPayment As Currency
    RemainingPayment As Currency
    Customer As String * 30
End Type

Private Type Details
    Arrastre As Currency
    ArrastreVAT As Currency
    ArrastreTAX As Currency
    Storage As Currency
    StorageVAT As Currency
    StorageTAX As Currency
    Weighing As Currency
    WeighingVAT As Currency
    WeighingTAX As Currency
    Reefer As Currency
    ReeferVAT As Currency
    ReeferTAX As Currency
    Wharfage As Currency
    UnderGuarantee As String * 1
    ArrastreNet As Currency
    StorageNet As Currency
    WeighingNet As Currency
    ReeferNet As Currency
    TotalCharge As Currency
    TotalNet As Currency
    DueICTSI As Currency
    DueICTSIWords As Currency
    Gatepass As Long
    Reference As Long
    Sequence As Integer
    SysDate As Date
    Consignee As String * 30
    Broker As String * 30
    Registry As String * 12
    Location As String * 20
    VoyageNo As String * 20
    SMBAPermitNo As String * 20
    CustomPermitNo As String * 20
    EntryNo As Long
    BillNum As String * 22
    VesselCode As String * 7
    PortofOrig As String * 15
    DeclaredWeight As String * 15
    PDIGNo As String * 15
    ContainerNo As String * 22
    ContainerSize As Integer
    LastDischarge As Date
    ShippingLine As String * 7
    OrderSupplier As String * 8
    SealNumber As String * 8
    FullEmp As String * 1
    CRODate As Date
    FreeUntil As Date
    StorageEnd As Date
    StorageDay As Integer
    PlugIn As Date
    PlugOut As Date
    RevenueTon As Currency
    Discount As Currency
    StorageAMT As Currency
    DiscountAMT As Currency
    Oversize As Currency
    Commodity As String * 30
    UserID As String * 10
    ForExam As String * 1
    Remark As String * 30
    CustomsGuard As String * 1
    ConsCode As String * 1
    VATCode As String * 1
    ForWeighing As String * 1
    DangerClass As String * 1
    BoatNote As String * 8
    strRevenueTon As String * 7
    strArrastreLessOversize As String * 10
    strStorageAmt As String * 10
    strWeighingNet As String * 7
    strReeferNet As String * 10
    strTotalNet As String * 11
    strWharfage As String * 7
    strTotalCharge As String * 11
    strOversize As String * 10
    strDiscount As String * 10
    strToText As String * 50
    
    'PRNH - Company Code tagging
    CompanyCode As String * 10
End Type

Private compCode As String

'
Dim rstCYMPay As ADODB.Recordset
Dim rstCYMGps As ADODB.Recordset

Dim columnBL As columnBLs
Dim BL As BLs
Dim columnContainer As columnContainers
Dim Column As Columns
Dim arrContainer() As Entries
Dim Header As Headers
Dim Detail As Details
Dim Payment As Payments

Dim strSelectedBL As String
Dim dtmServerDateTime As Date
Dim dtmSystemDateTime As Date
Dim lngReferenceNo As Long
Dim curTotalCashChecks As Currency

Dim blnSplit As Boolean
Dim blnForExam As Boolean
Dim blnError As Boolean
Dim blnNIL As Boolean
Dim blnNotPaid As Boolean
Dim blnNoEntry As Boolean
Dim blnOKToBill As Boolean

Dim curArrastreTotal As Currency
Dim curArrastreBasic As Currency
Dim curArrastreWtax As Currency
Dim curArrastreVat As Currency

Dim curArrastreVAT10 As Currency
Dim curArrastreVAT6 As Currency
Dim curTmpArrastreWTAX As Currency
Dim curTmpArrastreBasic As Currency

Dim curStorageTotal As Currency
Dim curStorageBasic As Currency
Dim curStorageWTAX As Currency
Dim curStorageVAT As Currency

Dim curStorageVAT10 As Currency
Dim curStorageVAT6 As Currency
Dim curTmpStorageWTAX As Currency
Dim curTmpStorageBasic As Currency

Dim curWeighingTotal As Currency
Dim curWeighingBasic As Currency
Dim curWeighingWTAX As Currency
Dim curWeighingVAT As Currency

Dim curWeighingVAT10 As Currency
Dim curWeighingVAT6 As Currency
Dim curTmpWeighingWTAX As Currency
Dim curTmpWeighingBasic As Currency

Dim curReeferTotal As Currency
Dim curReeferBasic As Currency
Dim curReeferWTAX As Currency
Dim curReeferVAT As Currency

Dim curReeferVAT10 As Currency
Dim curReeferVAT6 As Currency
Dim curTmpReeferWTAX As Currency
Dim curTmpReeferBasic As Currency

Dim curWharfage As Currency
Dim curTmpWharfage As Currency
Dim curTotalAMT As Currency
Dim curRevenueTonnage As Currency
Dim strConsCode As String

Dim intResponse As Integer
Dim blnADDRows As Boolean
Dim intRow As Integer
Dim intCol As Integer
Dim blnPopulating As Boolean

Dim curPrevADRAmount As Currency
Dim intMaxRatesCTR As Integer
Dim blnInChargesColumn As Boolean

Dim strVAT As String
Dim strUnderGuarantee As String
Dim strWharfageOnly As String
Dim WharfageExempt As String
Dim blnFirstTime As Boolean

Dim blnCustomerChanged As Boolean
Dim blnBrokerNoChanged As Boolean
Dim blnVATCodeChanged As Boolean
Dim blnUGCodeChanged As Boolean
Dim blnWharfageOnlyChanged As Boolean
Dim blnWharfageExemptChanged As Boolean
Dim blnConsolidationTypeChanged As Boolean
Dim blnHeaderChanged As Boolean

Dim intCheckIfAlreadyExist As Integer
Dim blnOKToCompute As Boolean
Dim intEntryNo As Long
Dim intNumberOfContainersTagged As Integer
Dim intIDXContainer As Integer
Dim intProcessedContainers As Integer
Dim lngGPSNum As Long
Dim lngStartGatepass As Long
Dim blnBLTagged As Boolean
'
Dim curDangerAMT As Currency
Dim curOverSizeAMT As Currency
Dim curWharfageRate As Currency
Dim lngControlNo As Long
Dim lngVisitID As Long
Dim blnCandidateForSix As Boolean
Dim blnExamination As Boolean
Dim blnMaersk As Boolean
Dim dtmMaerskLastDischarge As Date
Dim strMaerskVessel As String
Dim blnReefer As Boolean
Dim curPHPAmount As Currency

Dim gConnNav As String

'PRNH
Dim cntIndex As Long, cntCount As Long

Private Sub cboDangClass_GotFocus()
    txtLog.Text = txtLog.Text & "cboDangClass_GotFocus: Start Sub" & vbCrLf
    SendKeys "{F4}", True
    txtLog.Text = txtLog.Text & "cboDangClass_GotFocus: Sendkeys '{F4}',true" & vbCrLf
    txtLog.Text = txtLog.Text & "cboDangClass_GotFocus: End Sub" & vbCrLf
End Sub

Private Sub cboDangClass_KeyDown(KeyCode As Integer, Shift As Integer)
    txtLog.Text = txtLog.Text & "cboDangClass_KeyDown: Start Sub" & vbCrLf
    If IsDate(mskPlugIN) Then
    txtLog.Text = txtLog.Text & "cboDangClass_KeyDown: If IsDate(mskPlugIN) Then" & vbCrLf
        Call FieldAdvance(KeyCode, mskPlugOUT, cboStorageStat)
    Else
        Call FieldAdvance(KeyCode, mskAdvGPDate, cboStorageStat)
    End If
End Sub

Private Sub cboStorageStat_Click()
    Select Case Left(cboStorageStat, 1)
        Case "1"
            mskStripDate.Enabled = False
            mskDiscount.Enabled = False
            mskDaysFree.Enabled = False
            mskBOCGatepassDate.Enabled = False
            mskNonWorkingDays.Enabled = False
            txtRelayContainer.Enabled = False
        Case "2"
            mskStripDate.Enabled = True
            mskDiscount.Enabled = False
            mskDaysFree.Enabled = False
            mskBOCGatepassDate.Enabled = False
            mskNonWorkingDays.Enabled = False
            txtRelayContainer.Enabled = False
        Case "3"
            mskStripDate.Enabled = False
            mskDiscount.Enabled = True
            mskDaysFree.Enabled = False
            mskBOCGatepassDate.Enabled = False
            mskNonWorkingDays.Enabled = False
            txtRelayContainer.Enabled = False
        Case "4"
            mskStripDate.Enabled = False
            mskDiscount.Enabled = False
            mskDaysFree.Enabled = True
            mskBOCGatepassDate.Enabled = False
            mskNonWorkingDays.Enabled = False
            txtRelayContainer.Enabled = False
        Case "5"
            mskStripDate.Enabled = False
            mskDiscount.Enabled = False
            mskDaysFree.Enabled = False
            mskBOCGatepassDate.Enabled = True
            mskNonWorkingDays.Enabled = True
            txtRelayContainer.Enabled = False
        Case "6"
            mskStripDate.Enabled = False
            mskDiscount.Enabled = False
            mskDaysFree.Enabled = False
            mskBOCGatepassDate.Enabled = False
            mskNonWorkingDays.Enabled = False
            txtRelayContainer.Enabled = True
    End Select
End Sub

Private Sub cboStorageStat_GotFocus()
    SendKeys "{F4}", True
End Sub

Private Sub cboStorageStat_KeyDown(KeyCode As Integer, Shift As Integer)
     If KeyCode = vbKeyReturn Then
        Select Case Left(cboStorageStat, 1)
            Case "1"
                mskStripDate.Enabled = False
                mskDiscount.Enabled = False
                mskDaysFree.Enabled = False
                mskBOCGatepassDate.Enabled = False
                mskNonWorkingDays.Enabled = False
                txtRelayContainer.Enabled = False
                Call FieldAdvance(KeyCode, cboStorageStat, mskOVLength)
            Case "2"
                mskStripDate.Enabled = True
                mskDiscount.Enabled = False
                mskDaysFree.Enabled = False
                mskBOCGatepassDate.Enabled = False
                mskNonWorkingDays.Enabled = False
                txtRelayContainer.Enabled = False
                Call FieldAdvance(KeyCode, cboStorageStat, mskStripDate)
            Case "3"
                mskStripDate.Enabled = False
                mskDiscount.Enabled = True
                mskDaysFree.Enabled = False
                mskBOCGatepassDate.Enabled = False
                mskNonWorkingDays.Enabled = False
                txtRelayContainer.Enabled = False
                Call FieldAdvance(KeyCode, cboStorageStat, mskDiscount)
            Case "4"
                mskStripDate.Enabled = False
                mskDiscount.Enabled = False
                mskDaysFree.Enabled = True
                mskBOCGatepassDate.Enabled = False
                mskNonWorkingDays.Enabled = False
                txtRelayContainer.Enabled = False
                Call FieldAdvance(KeyCode, cboStorageStat, mskDaysFree)
            Case "5"
                mskStripDate.Enabled = False
                mskDiscount.Enabled = False
                mskDaysFree.Enabled = False
                mskBOCGatepassDate.Enabled = True
                mskNonWorkingDays.Enabled = True
                txtRelayContainer.Enabled = False
                Call FieldAdvance(KeyCode, cboStorageStat, mskBOCGatepassDate)
            Case "6"
                mskStripDate.Enabled = False
                mskDiscount.Enabled = False
                mskDaysFree.Enabled = False
                mskBOCGatepassDate.Enabled = False
                mskNonWorkingDays.Enabled = False
                txtRelayContainer.Enabled = True
                Call FieldAdvance(KeyCode, cboStorageStat, txtRelayContainer)
        End Select
    Else
        Call FieldAdvance(KeyCode, cboDangClass, mskOVLength)
    End If
End Sub

Private Sub cboUnderGuarantee_GotFocus()
    SendKeys "{F4}", True
End Sub

Private Sub cboUnderGuarantee_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode <> vbKeyDown Then
        Call FieldAdvance(KeyCode, cboVAT, cmdNextHeader)
        'Call FieldAdvance(KeyCode, txtBroker, cmdNextHeader)
    End If
End Sub
Private Sub cboVAT_GotFocus()
    SendKeys "{F4}", True
End Sub

Private Sub cboVAT_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode <> vbKeyDown Then
        Call FieldAdvance(KeyCode, txtBrokerNO, cmdNextHeader) 'cboUnderGuarantee)
    End If
End Sub

Private Sub chkCustomsGuard_KeyDown(KeyCode As Integer, Shift As Integer)
    If txtConsolidationType.Enabled = False Then
        Call FieldAdvance(KeyCode, txtPortofOrigin, cmdNextOtherInfo)
    Else
        Call FieldAdvance(KeyCode, txtPortofOrigin, txtConsolidationType)
    End If
End Sub

Private Sub chkForExam_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtRegistry, txtSBMAPermit)
End Sub

Private Sub chkWeighing_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, cboDangClass, cboStorageStat)
End Sub

Private Sub chkWharfageExempt_Click()
    If chkWharfageExempt.Value = 1 Then
        txtConsolidationType.Enabled = True
        txtConsolidationType = "1"
    Else
        txtConsolidationType = ""
    End If
End Sub

Private Sub chkWharfageExempt_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, cboUnderGuarantee, cmdNextHeader)
End Sub

Private Sub chkWharfageOnly_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, cboUnderGuarantee, chkWharfageExempt)
End Sub

Private Sub cmbConNo_Click()
    Call Evaluate_ContainerNo
End Sub

Private Sub cmbConNo_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        Call Evaluate_ContainerNo
    End If
End Sub

Private Sub Get_ContainerSize()
On Error GoTo err
    Dim rstConSize As ADODB.Recordset
    
    Set rstConSize = New ADODB.Recordset
    
    rstConSize.Open "SELECT ctnsze FROM CargoMDet WHERE bilnum='" & Trim(txtBL.Text) & "' AND ctnnum='" & Trim(cmbConNo.Text) & "'", gcnnBilling, adOpenForwardOnly, adLockReadOnly
    
    txtContainer(1).Text = rstConSize.Fields("ctnsze")
    'txtContainer(2).SetFocus
    Exit Sub
err:
    MsgBox err.Description, vbOKOnly, "Get_ContainerSize"
End Sub

Private Sub cmbConNo_LostFocus()
    If Trim(cmbConNo.Text) <> "" And sstMain.Tab = 3 Then
        Call Evaluate_ContainerNo
    End If
End Sub

Private Sub cmdAnother_Click()
    'sstMain.Tab = cTabOtherInfo
    
    'PRNH
    If cntIndex < cntCount - 1 Then
        sstMain.Tab = cTabContainer
        cntIndex = cntIndex + 1
        cmbConNo.Text = cmbConNo.List(cntIndex)
        Evaluate_ContainerNo
    End If
End Sub

Private Sub InitializeAndEnableManifestControls()
    txtSBMAPermit.Text = ""
    txtCustomPermit.Text = ""
End Sub

Private Sub cmdAnother_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, chkCustomsGuard, cmdPreviousOtherInfo)
End Sub

Private Sub cmdNextBL_Click()
    'PRNH
    sstMain.Tab = cTabHeader
End Sub

Private Sub cmdNextPayment_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabPayment) = True, cTabBL, cTabPayment)
End Sub

Private Sub cmdPreviousBLInfo_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabBL - 1) = True, cTabBL - 1, cTabBL)
End Sub

Private Sub cmdPreviousHeader_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabHeader - 1) = True, cTabHeader - 1, cTabHeader)
End Sub

Private Sub cmdSave_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, sstMain, sstMain)
End Sub

Private Sub DisableManifestTab()
'    fraEntry.Enabled = False
'    grdBLList.Enabled = False
'    grdContList.Enabled = False
'    lstBLInfo.Enabled = False
'    grdSplit.Enabled = False
End Sub

Private Sub cmdViewGrid_Click()
    msfCharges.SetFocus
    msfCharges.Col = 1
    SendKeys "{RIGHT}{LEFT}"
End Sub

Private Sub cmdViewGrid_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, sstMain, sstMain)
End Sub

Private Function lzForExam(pEntNo As Long) As Boolean
    Dim cmd As ADODB.Command
    Dim prm As ADODB.Parameter
    
    ' create command
    Set cmd = New ADODB.Command
    Set prm = New ADODB.Parameter
    With cmd
        .ActiveConnection = gcnnBilling
        .CommandText = "up_entryforexam"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        .Parameters(0).Direction = adParamReturnValue
        .Parameters(1).Type = adInteger
        .Parameters(1).Value = pEntNo
        .Parameters(1).Direction = adParamInput

        .Execute
        lzForExam = (.Parameters(0) = 1)
    End With
End Function

Private Function lzSplit(ByVal pContNo As String, ByVal pRegNo As String) As Boolean
Dim cmd As ADODB.Command
Dim prm As ADODB.Parameter
    
    ' create command
    Set cmd = New ADODB.Command
    Set prm = New ADODB.Parameter
    With cmd
        .ActiveConnection = gcnnBilling
        .CommandText = "up_splitcontainer"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        .Parameters(0).Direction = adParamReturnValue
        .Parameters(1).Type = adChar
        .Parameters(1).Value = pContNo
        .Parameters(1).Direction = adParamInput
        .Parameters(2).Type = adChar
        .Parameters(2).Value = pRegNo
        .Parameters(2).Direction = adParamInput

        .Execute
        lzSplit = (.Parameters(0) = 1)
    End With
End Function

Private Function lzRegExists(ByVal pRegNo As String) As Boolean
Dim cmd As ADODB.Command
Dim prm As ADODB.Parameter
    
    pRegNo = Replace(pRegNo, "-", "")
    pRegNo = Left(pRegNo, 3) & Mid(pRegNo, 5)
    
    ' create command
    Set cmd = New ADODB.Command
    Set prm = New ADODB.Parameter
    With cmd
        .ActiveConnection = gcnnBilling
        .CommandText = "up_registryexists"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        .Parameters(0).Direction = adParamReturnValue
        .Parameters(1).Type = adChar
        .Parameters(1).Value = pRegNo
        .Parameters(1).Direction = adParamInput

        .Execute
        lzRegExists = (.Parameters(0) = 1)
    End With
End Function

Private Function lzSplitPaid(ByVal pContNo As String, ByVal pRegNum As String) As Boolean
                                                   
Dim cmd As ADODB.Command
Dim prm As ADODB.Parameter
    
    ' create command
    Set cmd = New ADODB.Command
    Set prm = New ADODB.Parameter
    With cmd
        .ActiveConnection = gcnnBilling
        .CommandText = "upnew_splitpaid"
                             
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        .Parameters(0).Direction = adParamReturnValue
        .Parameters(1).Type = adChar
        .Parameters(1).Value = pContNo
        .Parameters(1).Direction = adParamInput
        
        .Parameters(2).Type = adChar
        .Parameters(2).Value = pRegNum
        .Parameters(2).Direction = adParamInput
        

        .Execute
        lzSplitPaid = (.Parameters(0) = 1)
    End With
End Function

Private Sub GetOverSizeAMT(pAft As Currency, pHeight As Currency, pLeft As Currency, pRight As Currency, pFore As Currency)
    Dim curOVLength As Currency
    If pAft = 0 And pHeight = 0 And pLeft = 0 And pRight = 0 And pFore = 0 Then
        mskOVLength = 0
        mskOVWidth = 0
        mskOVHeight = 0
    Else
        curOVLength = IIf(txtContainer(1) = "20", 240, 480)
        pAft = Round(pAft / 2.54)
        pHeight = Round(pHeight / 2.54)
        pLeft = Round(pLeft / 2.54)
        pRight = Round(pRight / 2.54)
        pFore = Round(pFore / 2.54)
        mskOVLength = pFore + pAft + curOVLength
        mskOVHeight = 96 + pHeight
        mskOVWidth = 96 + pLeft + pRight
    End If
End Sub

Private Sub cmdNextCharges_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabCharges + 1) = True, cTabCharges + 1, cTabCharges)
End Sub

Private Sub cmdNextContainer_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabContainer + 1) = True, cTabContainer + 1, cTabContainer)
End Sub

Private Sub cmdNextHeader_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabHeader) = True, cTabHeader + 1, cTabHeader)
End Sub

Private Sub cmdNextOtherInfo_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabOtherInfo + 1) = True, cTabOtherInfo + 1, cTabOtherInfo)
End Sub

Private Sub cmdPreviousCharges_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabCharges - 1) = True, cTabCharges - 1, cTabCharges)
End Sub

Private Sub cmdPreviousContainer_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabContainer - 1) = True, cTabContainer - 1, cTabContainer)
End Sub

Private Sub cmdPreviousOtherInfo_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabOtherInfo - 1) = True, cTabOtherInfo - 1, cTabOtherInfo)
End Sub

Private Sub cmdPreviousPayment_Click()
    sstMain.Tab = IIf(sstMain.TabEnabled(cTabPayment - 1) = True, cTabPayment - 1, cTabPayment)
End Sub

Private Sub cmdSave_Click()
txtLog.Text = txtLog.Text & "cmdSave_Click: Start Sub" & vbCrLf
Dim vChkCode As Boolean
txtLog.Text = txtLog.Text & "cmdSave_Click: Dim vChkCode As Boolean" & vbCrLf
'Call Update_Manifest(Trim(txtBL.Text), Trim(cmbConNo.Text), Trim(mskGatePassNo.Text))

vChkCode = False
txtLog.Text = txtLog.Text & "cmdSave_Click: vChkCode = False" & vbCrLf
  If Left(cboUnderGuarantee.Text, 1) <> " " Then
  txtLog.Text = txtLog.Text & "cmdSave_Click: If Left(cboUnderGuarantee.Text, 1) <> "" "" Then" & vbCrLf
     If Trim(txtCustomerCode) <> "" Then
        txtLog.Text = txtLog.Text & "cmdSave_Click: If Trim(txtCustomerCode) <> """" Then" & vbCrLf
        vChkCode = True
        txtLog.Text = txtLog.Text & "cmdSave_Click: vChkCode = True" & vbCrLf
     Else
       txtLog.Text = txtLog.Text & "cmdSave_Click: else" & vbCrLf
       MsgBox "Please Enter Customer Code.", , "UnderGuarantee"
       
       txtCustomerCode.SetFocus
     End If
  Else
  
     vChkCode = True
  End If
  If vChkCode Then
  txtLog.Text = txtLog.Text & "cmdSave_Click: If vChkCode Then" & vbCrLf
    intResponse = MsgBox("Save Transactions to disk?", vbYesNo + vbInformation, "Saving...")
    If intResponse = vbYes Then
        If OKToSave Then
        
            lngReferenceNo = gzGetControlNo(cControlType)
            
            'PRNH - Removed ADR Validation
'            If mskADRAmount > 0 Then
'                lngControlNo = lzApplyADR(txtCustomerCode, cControlType, lngReferenceNo, CCur(mskADRAmount), UCase(zCurrentUser()), "")
'            Else
'                lngControlNo = 0
'            End If
            
            Call SaveHeaders
            Call SaveDetails
            
            
            
            intResponse = MsgBox("Gatepass will now be printed.", vbOKOnly + vbInformation, "Printing...")
            If intResponse = vbOK Then
                Call PrintGatePass
            End If
        
            Call InitializeHeaderVariables
            Call InitializeComputationVariables
            Call InitializeGridAndOther
            Call InitializeOtherInfo
            Call InitializePayment
            Call DisableNextTabs
            Call InitializeAndEnableManifestControls
            mskRunning = 0
            msfCharges.Rows = 1
            cmdAnother.Enabled = True
            blnFirstTime = True
            sstMain.Tab = cTabBL
            With txtSBMAPermit
                .SelStart = 0
                .SelLength = .MaxLength
                .SetFocus
            End With
        End If
    End If
  End If
End Sub

Private Function OKToSave() As Boolean
    Dim lngGatePassEnding As Long
    Dim lngReturnedGP As Long
    Dim lngReturnValue As Long
    Dim intCheckCtr As Integer
    
    OKToSave = True
    If CCur(mskChange) < 0 Then
        OKToSave = False
        intResponse = MsgBox("Not Balanced. Please check...", vbExclamation + vbOKOnly, "")
        With mskCashAmount
            .SelStart = 0
            .SelLength = .MaxLength
            .SetFocus
        End With
        Exit Function
    End If
    
    If msfCharges.Rows >= 1 Then
        If msfCharges.Rows = 1 Then
            If Trim(msfCharges.TextMatrix(msfCharges.Row, Column.ContainerID)) <> "" Then
                intResponse = MsgBox("No information to Save...", vbExclamation + vbOKOnly, "")
                With mskCashAmount
                    .SelStart = 0
                    .SelLength = .MaxLength
                    .SetFocus
                End With
                OKToSave = False
                Exit Function
            Else
                OKToSave = True
            End If
        Else
            'ok
            OKToSave = True
        End If
    End If
    
    For intCheckCtr = 0 To 4
        If mskCheckAmount(intCheckCtr) > 0 Then
            If mskCheckNo(intCheckCtr) = 0 Or Len(txtBank(intCheckCtr)) < 1 Then
                intResponse = MsgBox("Check No. / Bank Code Required...", vbExclamation + vbOKOnly, "")
                With mskCheckAmount(intCheckCtr)
                    .SelStart = 0
                    .SelLength = .MaxLength
                    .SetFocus
                End With
                OKToSave = False
                Exit Function
            End If
        End If
        
        lngGatePassEnding = CLng(mskGatePassNo) + (msfCharges.Rows - 1) - 1
        lngReturnedGP = gzChkValidCYM(UCase(zCurrentUser()), lngGatePassEnding, txtCompCode.Text)
        If (lngReturnedGP = 0) Or (lngReturnedGP = -1) Or (lngReturnedGP = -2) Or (lngReturnedGP = -3) Then
            intResponse = MsgBox("Insufficient Gatepass. Please key in valid gatepass number...", vbOKOnly + vbExclamation, "")
            If intResponse = vbOKOnly Then
                With mskGatePassNo
                    .SelStart = 0
                    .SelLength = .MaxLength
                    .SetFocus
                End With
                OKToSave = False
                Exit Function
            End If
        End If
    Next intCheckCtr
    
'    lngGatePassEnding = CLng(mskGatePassNo) + (msfCharges.Rows - 1) - 1
'    lngReturnedGP = gzChkValidCYM(UCase(zCurrentUser()), lngGatePassEnding, txtCompCode.Text)
'    If (lngReturnedGP = 0) Or (lngReturnedGP = -1) Or (lngReturnedGP = -2) Or (lngReturnedGP = -3) Then
'        intResponse = MsgBox("Insufficient Gatepass. Please key in valid gatepass number...", vbOKOnly + vbExclamation, "")
'        If intResponse = vbOKOnly Then
'            With mskGatePassNo
'                .SelStart = 0
'                .SelLength = .MaxLength
'                .SetFocus
'            End With
'            OKToSave = False
'            Exit Function
'        End If
'    End If
End Function

Private Sub InitializePayment()
    mskAmountToPay = 0
    mskCashAmount = 0
    mskCheckAmount(0) = 0
    mskCheckAmount(1) = 0
    mskCheckAmount(2) = 0
    mskCheckAmount(3) = 0
    mskCheckAmount(4) = 0
    
    mskCheckNo(0) = 0
    mskCheckNo(1) = 0
    mskCheckNo(2) = 0
    mskCheckNo(3) = 0
    mskCheckNo(4) = 0
    
    txtBank(0) = ""
    txtBank(1) = ""
    txtBank(2) = ""
    txtBank(3) = ""
    txtBank(4) = ""
    
    mskADRAmount = 0
    mskADRAmount = 0
    mskChange = 0
    txtCustomerCode = ""
    txtCustomerName = ""
    mskADRBalance = 0
    lblAmountInWords = ""
End Sub

'Private Sub SaveHeaders()
'    On Error GoTo ErrSaveHeaders
'
'        dtmSystemDateTime = gzGetSysDate
'
'        Set rstCYMPay = New ADODB.Recordset
'
'        With rstCYMPay
'            Dim query As String
'            .LockType = adLockOptimistic
'            .CursorType = adOpenDynamic
'
'            .Open "CYMPAY", gcnnBilling, , , adCmdTable
'
'            .AddNew
'            .Fields("Refnum") = lngReferenceNo
'            .Fields("cuscde") = "" & Trim(txtCustomerCode)
'            If txtCustomerName = "" Then
'                .Fields("cusnam") = "" & Trim(txtCustomer)
'            Else
'                .Fields("cusnam") = "" & Trim(txtCustomerName)
'            End If
'            .Fields("phpamt") = curPHPAmount
'            .Fields("cshamt") = mskCashAmount
'            .Fields("adramt") = mskADRAmount
'            .Fields("adrnum") = lngControlNo
'            .Fields("chgamt") = mskChange
'            .Fields("trntype") = txtTransactionType
'            .Fields("chkno1") = "" & mskCheckNo(0)
'            .Fields("chkno2") = "" & mskCheckNo(1)
'            .Fields("chkno3") = "" & mskCheckNo(2)
'            .Fields("chkno4") = "" & mskCheckNo(3)
'            .Fields("chkno5") = "" & mskCheckNo(4)
'            .Fields("chkamt1") = mskCheckAmount(0)
'            .Fields("chkamt2") = mskCheckAmount(1)
'            .Fields("chkamt3") = mskCheckAmount(2)
'            .Fields("chkamt4") = mskCheckAmount(3)
'            .Fields("chkamt5") = mskCheckAmount(4)
'            .Fields("chkbnk1") = "" & txtBank(0)
'            .Fields("chkbnk2") = "" & txtBank(1)
'            .Fields("chkbnk3") = "" & txtBank(2)
'            .Fields("chkbnk4") = "" & txtBank(3)
'            .Fields("chkbnk5") = "" & txtBank(4)
'            .Fields("status") = cStatus
'            .Fields("rectag") = ""
'            .Fields("userid") = UCase(zCurrentUser())
'            .Fields("sysdttm") = dtmSystemDateTime
'            .Fields("updcde") = cUpdateCode
'            .Update
'            .Close
'        End With
'    On Error GoTo 0
'
'    Exit Sub
'
'
'ErrSaveHeaders:
'    MsgBox err.Description
'    intResponse = MsgBox(err.Description) '"Error writing in header...", vbExclamation + vbDefaultButton2 + vbAbortRetryIgnore, "Error!")
'    If intResponse = vbAbort Then
'        Unload Me
'    ElseIf (intResponse = vbRetry) Or (intResponse = vbIgnore) Then
'        Resume
'    End If
'End Sub

'PRNH - Uses ADODB.Command to prevent "Cursor operation conflict" error
Private Sub SaveHeaders()
    On Error GoTo ErrSaveHeaders

    dtmSystemDateTime = gzGetSysDate
    
    Dim rsCYMPay As New ADODB.Command, updateQuery As String, updateQuery2 As String

    'cnCYMPay.Open pCnnStr2
    
    rsCYMPay.ActiveConnection = gcnnBilling

    updateQuery = "INSERT INTO CYMPAY (Refnum,cuscde,cusnam,phpamt,cshamt,adramt,adrnum,chgamt,trntype,chkno1,chkno2,chkno3,chkno4,chkno5," & _
                    "chkamt1,chkamt2,chkamt3,chkamt4,chkamt5,chkbnk1,chkbnk2,chkbnk3,chkbnk4,chkbnk5,status,rectag,userid,sysdttm,updcde) "
    
    updateQuery2 = "VALUES("
    
        updateQuery2 = updateQuery2 & lngReferenceNo & "," 'Refnum
        updateQuery2 = updateQuery2 & "'" & Trim(txtCustomerCode) & "'," 'cuscde
        If txtCustomerName = "" Then 'cusnam
            updateQuery2 = updateQuery2 & "'" & Trim(txtCustomer) & "',"
        Else
            updateQuery2 = updateQuery2 & "'" & Trim(txtCustomerName) & "',"
        End If
        updateQuery2 = updateQuery2 & curPHPAmount & "," 'phpamt
        updateQuery2 = updateQuery2 & Replace(mskCashAmount, ",", "") & "," 'cshamt
        updateQuery2 = updateQuery2 & Replace(mskADRAmount, ",", "") & "," 'adramt
        
        'PRNH - Removed ADR Validation
        'updateQuery2 = updateQuery2 & lngControlNo & "," 'adrnum
        updateQuery2 = updateQuery2 & "0" & "," 'adrnum=0
        
        updateQuery2 = updateQuery2 & mskChange & "," 'chgamt
        updateQuery2 = updateQuery2 & "'" & txtTransactionType & "'," 'trntype
        updateQuery2 = updateQuery2 & "'" & mskCheckNo(0) & "'," 'chkno1
        updateQuery2 = updateQuery2 & "'" & mskCheckNo(1) & "'," 'chkno2
        updateQuery2 = updateQuery2 & "'" & mskCheckNo(2) & "'," 'chkno3
        updateQuery2 = updateQuery2 & "'" & mskCheckNo(3) & "'," 'chkno4
        updateQuery2 = updateQuery2 & "'" & mskCheckNo(4) & "'," 'chkno5
        updateQuery2 = updateQuery2 & Replace(mskCheckAmount(0), ",", "") & "," 'chkamt1
        updateQuery2 = updateQuery2 & Replace(mskCheckAmount(1), ",", "") & "," 'chkamt2
        updateQuery2 = updateQuery2 & Replace(mskCheckAmount(2), ",", "") & "," 'chkamt3
        updateQuery2 = updateQuery2 & Replace(mskCheckAmount(3), ",", "") & "," 'chkamt4
        updateQuery2 = updateQuery2 & Replace(mskCheckAmount(4), ",", "") & "," 'chkamt5
        updateQuery2 = updateQuery2 & "'" & txtBank(0) & "'," 'chkbnk1
        updateQuery2 = updateQuery2 & "'" & txtBank(1) & "'," 'chkbnk2
        updateQuery2 = updateQuery2 & "'" & txtBank(2) & "'," 'chkbnk3
        updateQuery2 = updateQuery2 & "'" & txtBank(3) & "'," 'chkbnk4
        updateQuery2 = updateQuery2 & "'" & txtBank(4) & "'," 'chkbnk5
        updateQuery2 = updateQuery2 & "'" & cStatus & "'," 'status
        updateQuery2 = updateQuery2 & "''" & "," 'rectag
        updateQuery2 = updateQuery2 & "'" & UCase(zCurrentUser()) & "'," 'userid
        updateQuery2 = updateQuery2 & "'" & dtmSystemDateTime & "'," 'sysdttm'
        updateQuery2 = updateQuery2 & "'" & cUpdateCode & "')" 'updcde
        
        updateQuery = updateQuery & updateQuery2
        
        rsCYMPay.CommandTimeout = 3000
        rsCYMPay.CommandText = updateQuery
        rsCYMPay.Execute , , adExecuteNoRecords
        
    
    On Error GoTo 0
    
    Exit Sub
    

ErrSaveHeaders:
    MsgBox err.Description
    intResponse = MsgBox(err.Description) '"Error writing in header...", vbExclamation + vbDefaultButton2 + vbAbortRetryIgnore, "Error!")
    If intResponse = vbAbort Then
        Unload Me
    ElseIf (intResponse = vbRetry) Or (intResponse = vbIgnore) Then
        Resume
    End If
End Sub

'OLD - PRNH
'Private Sub SaveDetails()
'Dim strContNo1 As String
'Dim strIsForWeighing As String
'Dim strOOGAmount As String
'Dim strDGAmount As String
'Dim strGKey, strVisit As String
'Dim nStoAmt, nRfrAmt As Integer
'Dim strPlugOut As String
'Dim strRegNo As String
'
'        strOOGAmount = ""
'        strDGAmount = ""
'        On Error GoTo ErrSaveDetails
'        lngGPSNum = CLng(mskGatePassNo)
'        lngStartGatepass = lngGPSNum
'        Set rstCYMGps = New ADODB.Recordset
'        With rstCYMGps
'            .LockType = adLockOptimistic
'            .CursorType = adOpenDynamic
'            .Open "CYMgps", gcnnBilling, , , adCmdTable
'
'            For intRow = 1 To (msfCharges.Rows - 1)
'                msfCharges.Row = intRow
'                .AddNew
'                .Fields("refnum") = lngReferenceNo
'                .Fields("seqnum") = intRow
'                .Fields("gpsnum") = lngGPSNum
'                '
'                .Fields("gpstyp") = cGPSType
'                .Fields("cntnum") = MoveToField(Column.ContainerID, "C")
'                strContNo1 = MoveToField(Column.ContainerID, "C")
'                strIsForWeighing = MoveToField(Column.Weighing, "C")
'                .Fields("enttyp") = MoveToField(Column.EntryType, "C")
'                '
'                .Fields("entnum") = 0
'                .Fields("voyageno") = MoveToField(Column.VoyageNo, "C")
'                .Fields("location") = MoveToField(Column.Location, "C")
'                .Fields("sbmapn") = MoveToField(Column.SBMAPN, "C")
'                .Fields("custompn") = MoveToField(Column.CustomPN, "C")
'                .Fields("tincnsgne") = MoveToField(Column.TINConsignee, "C")
'                .Fields("tinbroker") = MoveToField(Column.TINBroker, "C")
'
'                .Fields("cntsze") = MoveToField(Column.ContainerSize, "I")
'                .Fields("fulemp") = MoveToField(Column.FullEmpty, "C")
'                .Fields("forexm") = MoveToField(Column.ForExam, "C")
'                .Fields("cntovl") = MoveToField(Column.OVLength, "N")
'                '
'                .Fields("cntovw") = MoveToField(Column.OVWidth, "N")
'                .Fields("cntovh") = MoveToField(Column.OVHeight, "N")
'                .Fields("ovzums") = MoveToField(Column.OversizeUMS, "C")
'                .Fields("ovzamt") = MoveToField(Column.OversizeAMT, "N")
'                strOOGAmount = MoveToField(Column.OversizeAMT, "N")
'                .Fields("trncde") = Space(1)
'                .Fields("whfcde") = ConvertToChar(MoveToField(Column.WharfageExempt, "N"))
'                .Fields("whfrate") = curWharfageRate
'                '
'                .Fields("whfonly") = ConvertToChar(chkWharfageOnly.Value)
'                .Fields("conscde") = MoveToField(Column.ConsolCargoCode, "C")
'                .Fields("dclwgt") = MoveToField(Column.DeclaredWeight, "C")
'                .Fields("bilnum") = MoveToField(Column.BillofLading, "C")
'                .Fields("regnum") = MoveToField(Column.RegistryNo, "C")
'                strRegNo = MoveToField(Column.RegistryNo, "C")
'                If IsDate(msfCharges.TextMatrix(intRow, Column.CRODate)) Then
'                    .Fields("crodte") = MoveToField(Column.CRODate, "D")
'                End If
'                '
'                .Fields("vslcde") = MoveToField(Column.VesselCode, "C")
'                .Fields("silnum") = Left(MoveToField(Column.SealNumber, "C"), 8)
'                .Fields("ordsup") = MoveToField(Column.OrderSupplier, "C")
'                .Fields("boatnt") = MoveToField(Column.BoatNote, "C")
'                .Fields("shplin") = MoveToField(Column.ShippingLine, "C")
'                '
'                .Fields("prtorg") = MoveToField(Column.PortofOrigin, "C")
'                .Fields("cnsgne") = MoveToField(Column.Consignee, "C")
'                .Fields("broker") = MoveToField(Column.Broker, "C")
'                .Fields("brknum") = txtBrokerNO
'                .Fields("pdigno") = MoveToField(Column.PDIGNo, "C")
'                '
'                .Fields("commod") = MoveToField(Column.Commodity, "C")
'                .Fields("dgrcls") = MoveToField(Column.DangerClass, "C")
'                .Fields("dgramt") = MoveToField(Column.DangerAMT, "N")
'                strDGAmount = MoveToField(Column.DangerAMT, "N")
'                .Fields("pctdsc") = MoveToField(Column.Discount, "N")
'                .Fields("revton") = MoveToField(Column.RevenueTon, "N")
'                .Fields("stoday") = MoveToField(Column.BillableDays, "I")
'                '
'                .Fields("freday") = MoveToField(Column.FreeStorageDays, "I")
'                .Fields("stosta") = MoveToField(Column.StorageStatus, "C")
'                .Fields("stoamt") = MoveToField(Column.StorageBasic, "N")
'                 nStoAmt = MoveToField(Column.StorageBasic, "N")
'                .Fields("arramt") = MoveToField(Column.ArrastreBasic, "N")
'                .Fields("whfamt") = 0
'                .Fields("wghamt") = 0 'MoveToField(Column.WeighingBasic, "N")
'                .Fields("rframt") = MoveToField(Column.ReeferBasic, "N")
'                 nRfrAmt = MoveToField(Column.ReeferBasic, "N")
'                '
'                .Fields("stovat") = MoveToField(Column.StorageVAT, "N")
'                .Fields("arrvat") = MoveToField(Column.ArrastreVAT, "N")
'                .Fields("wghvat") = 0 'MoveToField(Column.WeighingVAT, "N")
'                .Fields("rfrvat") = MoveToField(Column.ReeferVAT, "N")
'                '
'                .Fields("stotax") = MoveToField(Column.StorageWTAX, "N")
'                .Fields("arrtax") = MoveToField(Column.ArrastreWTAX, "N")
'                .Fields("wghtax") = 0 'MoveToField(Column.WeighingWTAX, "N")
'                .Fields("rfrtax") = MoveToField(Column.ReeferWTAX, "N")
'                '
'                .Fields("vatcde") = MoveToField(Column.VATCode, "C")
''
'                .Fields("gtycde") = MoveToField(Column.GuaranteeCode, "C")
'                .Fields("cusgrd") = ConvertToChar(msfCharges.TextMatrix(msfCharges.Row, Column.CustomGuard))
'                If IsDate(msfCharges.TextMatrix(intRow, Column.PlugOUTDate)) Then
'                    .Fields("plugin") = MoveToField(Column.PlugINDate, "D")
'                End If
'                If IsDate(msfCharges.TextMatrix(intRow, Column.PlugOUTDate)) Then
'                    .Fields("plugou") = MoveToField(Column.PlugOUTDate, "D")
'                    strPlugOut = MoveToField(Column.PlugOUTDate, "D")
'                End If
'                If IsDate(msfCharges.TextMatrix(intRow, Column.LastDischargeDate)) Then
'                    .Fields("lstdch") = MoveToField(Column.LastDischargeDate, "D")
'                End If
'                '
'                If IsDate(msfCharges.TextMatrix(intRow, Column.MountDate)) Then
'                    .Fields("mntdte") = MoveToField(Column.MountDate, "D")
'                End If
'                '
'                If IsDate(msfCharges.TextMatrix(intRow, Column.StartStorageDate)) Then
'                    .Fields("stobeg") = MoveToField(Column.StartStorageDate, "D")
'                End If
'                '
'                If IsDate(msfCharges.TextMatrix(intRow, Column.FreeStorageUntil)) Then
'                    .Fields("freeuntil") = MoveToField(Column.FreeStorageUntil, "D")
'                End If
'                '
'                If IsDate(msfCharges.TextMatrix(intRow, Column.EndStorageDate)) Then
'                    .Fields("stoend") = MoveToField(Column.EndStorageDate, "D")
'                End If
'
'                .Fields("remark") = MoveToField(Column.Remarks, "C")
'                .Fields("ppanum") = 0
'                '
'                .Fields("status") = cStatus
'                .Fields("userid") = UCase(zCurrentUser())
'                .Fields("sysdte") = dtmSystemDateTime
'                .Fields("updcde") = cUpdateCode
'                .Update
'                On Error GoTo ErrWriteIfForExam
'                    Call WriteIfForExam(intRow, Column.ForExam, lngGPSNum)
'                On Error GoTo 0
'
'                If intRow <> (msfCharges.Rows - 1) Then
'                    lngGPSNum = lngGPSNum + 1
'                End If
'                 'Call SavePaymentToSparcs(MoveToField(Column.ContainerID, "C"), "STORAGE", "", "4992")
'
'                'Save to Sparcs
'                strVisit = Sparcs_VisitID(txtRegistry.Text, "IMPRT")
'                strGKey = ""
'
'                If (nStoAmt > 0) Then
'                    'Save Storage
'                    'get gKey for Storage
'                    strGKey = GetGKey(Trim(strContNo1), "QUEUED", "STORAGE", "IMPRT", strVisit)
'                    'sharon Call SavePaymentToSparcs(strContNo1, "STORAGE", "", strGKey1)
'                    Call SavePaymentToSparcs(strContNo1, "STORAGE", "", strGKey)
'                    Call UpdateChargableUnitStorageReeferStatus(strContNo1, "STORAGE", strGKey)
'                    'End Save Storage
'
'                End If
'                nStoAmt = 0
'                strGKey = ""
'
'                If nRfrAmt > 0 Then
'                    'Save Reefer
'                    'get gKey for Reefer
'
'                    'strVisit = Sparcs_VisitID(txtRegistry.Text, "IMPRT")
'                    strGKey = GetGKey(Trim(strContNo1), "QUEUED", "REEFER", "IMPRT", strVisit)
'                    If strGKey <> "" Then
'                        Call SavePaymentToSparcs(strContNo1, "REEFER", strPlugOut, strGKey)
'                        Call UpdateChargableUnitStorageReeferStatus(strContNo1, "REEFER", strGKey)
'                    End If
'                    'End Save Reefer
'                End If
'                nRfrAmt = 0
'                strGKey = ""
'
'                'Save Goods Consignee and Goods BL Number
'                Call UpdateConsigneeAndBLNumber(strContNo1, txtConsignee.Text, txtBL.Text)
'
'                'Add weighing hold if for weighing
'                If strIsForWeighing = "1" Then
'                    Call AddWeighingHold(strContNo1)
'                End If
'
'                'Release Billing Hold/Permission
'                Call ReleaseHold(strContNo1)
'
'                'Release OOG Hold/Permission
'                If strOOGAmount <> "" And IsNumeric(strOOGAmount) Then
'                    If CDec(strOOGAmount) > 0 Then
'                        Call ReleaseOOGHold(strContNo1)
'                    End If
'                End If
'
'                'Release DG Amount Hold/Permission
'                If strDGAmount <> "" And IsNumeric(strDGAmount) Then
'                    If CDec(strDGAmount) > 0 Then
'                        Call ReleaseDGHold(strContNo1)
'                    End If
'                End If
'                'strRegNo
''                Call Update_Manifest(Trim(txtBL.Text), Trim(MoveToField(Column.ContainerID, "C")), Trim(lngGPSNum))
'                Call Update_Manifest(Trim(txtBL.Text), Trim(MoveToField(Column.ContainerID, "C")), Trim(lngGPSNum), strRegNo)
'            Next intRow
'            Call gzApplyCYMGP(UCase(zCurrentUser()), lngGPSNum)
'            .Close
'        End With
'
'    Exit Sub
'ErrSaveDetails:
'    intResponse = MsgBox("Error writing in detail...", vbExclamation + vbDefaultButton2 + vbAbortRetryIgnore, "Error!")
'    If intResponse = vbAbort Then
'        Unload Me
'    ElseIf (intResponse = vbRetry) Or (intResponse = vbIgnore) Then
'        Resume
'    End If
'ErrWriteIfForExam:
'    intResponse = MsgBox("Error writing in Exam file...", vbExclamation + vbDefaultButton2 + vbAbortRetryIgnore, "Error!")
'    If intResponse = vbAbort Then
'        Unload Me
'    ElseIf (intResponse = vbRetry) Or (intResponse = vbIgnore) Then
'        Resume
'    End If
'ErrWriteToACOCtn:
'    intResponse = MsgBox("Error writing in ACOCtn file...", vbExclamation + vbDefaultButton2 + vbAbortRetryIgnore, "Error!")
'    If intResponse = vbAbort Then
'        Unload Me
'    ElseIf (intResponse = vbRetry) Or (intResponse = vbIgnore) Then
'        Resume
'    End If
'End Sub

'PRNH
Private Sub SaveDetails()
    Dim strContNo1 As String
    Dim strIsForWeighing As String
    Dim strOOGAmount As String
    Dim strDGAmount As String
    Dim strGKey, strVisit As String
    Dim nStoAmt, nRfrAmt As Integer
    Dim strPlugOut As String
    Dim strRegNo As String
    Dim rsCYMGPS As New ADODB.Command, updateQuery As String, updateQuery2 As String

        strOOGAmount = ""
        strDGAmount = ""
        On Error GoTo ErrSaveDetails
        
        rsCYMGPS.ActiveConnection = gcnnBilling
        
        lngGPSNum = CLng(mskGatePassNo)
        lngStartGatepass = lngGPSNum
        
        
            For intRow = 1 To (msfCharges.Rows - 1)
            updateQuery = "": updateQuery2 = ""
            updateQuery = "INSERT INTO CYMGps (refnum,seqnum,gpsnum,gpstyp,cntnum,enttyp,entnum,voyageno,location,sbmapn,custompn," & _
                    "tincnsgne,tinbroker,cntsze,fulemp,forexm,cntovl,cntovw,cntovh,ovzums,ovzamt,trncde,whfcde,whfrate,whfonly," & _
                    "conscde,dclwgt,bilnum,regnum,crodte,vslcde,silnum,ordsup,boatnt,shplin,prtorg,cnsgne,broker,brknum,pdigno," & _
                    "commod,dgrcls,dgramt,pctdsc,revton,stoday,freday,stosta,stoamt,arramt,whfamt,wghamt,rframt,stovat,arrvat,wghvat,rfrvat," & _
                    "stotax,arrtax,wghtax,rfrtax,vatcde,gtycde,cusgrd,plugin,plugou,lstdch,mntdte,stobeg,freeuntil,stoend,remark,ppanum," & _
                    "status,userid,sysdte,updcde,CompanyCode) "
            
                updateQuery2 = "VALUES("
                msfCharges.Row = intRow
                updateQuery2 = updateQuery2 & lngReferenceNo & ","  'refnum
                updateQuery2 = updateQuery2 & intRow & ","  'seqnum
                updateQuery2 = updateQuery2 & lngGPSNum & ","  'gpsnum
                updateQuery2 = updateQuery2 & "'" & cGPSType & "'," 'gpstyp
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.ContainerID, "C") & "'," ' cntnum
                strContNo1 = MoveToField(Column.ContainerID, "C")
                strIsForWeighing = MoveToField(Column.Weighing, "C")
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.EntryType, "C") & "'," 'enttyp
                updateQuery2 = updateQuery2 & 0 & ","  'entnum
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.VoyageNo, "C") & "'," 'voyageno
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.Location, "C") & "'," 'location
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.SBMAPN, "C") & "'," 'sbmapn
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.CustomPN, "C") & "'," 'custompn
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.TINConsignee, "C") & "'," 'tincnsgne
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.TINBroker, "C") & "'," 'tibnroker
                updateQuery2 = updateQuery2 & MoveToField(Column.ContainerSize, "I") & ","  'cntsze
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.FullEmpty, "C") & "'," 'fulemp
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.ForExam, "C") & "'," 'forexm
                updateQuery2 = updateQuery2 & MoveToField(Column.OVLength, "N") & ","  'cntovl
                updateQuery2 = updateQuery2 & MoveToField(Column.OVWidth, "N") & ","  'cntovw
                updateQuery2 = updateQuery2 & MoveToField(Column.OVHeight, "N") & ","  'cntovh
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.OversizeUMS, "C") & "',"   'ovzums
                updateQuery2 = updateQuery2 & MoveToField(Column.OversizeAMT, "N") & ","  'ovzamt
                strOOGAmount = MoveToField(Column.OversizeAMT, "N")
                updateQuery2 = updateQuery2 & "'" & Space(1) & "'," 'trncde
                updateQuery2 = updateQuery2 & "'" & ConvertToChar(MoveToField(Column.WharfageExempt, "N")) & "'," 'whfcde
                updateQuery2 = updateQuery2 & curWharfageRate & ","  'whfrate
                updateQuery2 = updateQuery2 & "'" & ConvertToChar(chkWharfageOnly.Value) & "'," 'whfonly
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.ConsolCargoCode, "C") & "'," 'conscde
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.DeclaredWeight, "C") & "'," 'dclwgt
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.BillofLading, "C") & "'," 'bilnum
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.RegistryNo, "C") & "'," 'regnum
                strRegNo = MoveToField(Column.RegistryNo, "C")
                If IsDate(msfCharges.TextMatrix(intRow, Column.CRODate)) Then
                    updateQuery2 = updateQuery2 & "'" & MoveToField(Column.CRODate, "D") & "'," 'crodte
                Else
                    updateQuery2 = updateQuery2 & "'" & "1899-12-30" & "'," 'null crodte
                End If
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.VesselCode, "C") & "'," 'vslcde
                updateQuery2 = updateQuery2 & "'" & Left(MoveToField(Column.SealNumber, "C"), 8) & "'," 'silnum
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.OrderSupplier, "C") & "'," 'ordsup
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.BoatNote, "C") & "'," 'boatnt
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.ShippingLine, "C") & "'," 'shplin
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.PortofOrigin, "C") & "'," 'prtorg
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.Consignee, "C") & "'," 'cnsgne
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.Broker, "C") & "'," 'broker
                updateQuery2 = updateQuery2 & "'" & txtBrokerNO & "'," 'brknum
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.PDIGNo, "C") & "'," 'pdigno
                updateQuery2 = updateQuery2 & "'" & Replace(MoveToField(Column.Commodity, "C"), "'", " ") & "'," 'commod
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.DangerClass, "C") & "'," 'dgrcls
                updateQuery2 = updateQuery2 & MoveToField(Column.DangerAMT, "N") & ","  'dgramt
                strDGAmount = MoveToField(Column.DangerAMT, "N")
                updateQuery2 = updateQuery2 & MoveToField(Column.Discount, "N") & "," 'pctdsc
                updateQuery2 = updateQuery2 & MoveToField(Column.RevenueTon, "N") & ","  'revton
                updateQuery2 = updateQuery2 & MoveToField(Column.BillableDays, "I") & "," 'stoday
                updateQuery2 = updateQuery2 & MoveToField(Column.FreeStorageDays, "I") & "," 'freday
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.StorageStatus, "C") & "'," 'stosta
                updateQuery2 = updateQuery2 & MoveToField(Column.StorageBasic, "N") & ","  'stoamt
                 nStoAmt = MoveToField(Column.StorageBasic, "N")
                updateQuery2 = updateQuery2 & MoveToField(Column.ArrastreBasic, "N") & "," 'arramt
                updateQuery2 = updateQuery2 & 0 & "," 'whfamt
                updateQuery2 = updateQuery2 & 0 & "," 'wghamt 'MoveToField(Column.WeighingBasic, "N")
                updateQuery2 = updateQuery2 & MoveToField(Column.ReeferBasic, "N") & "," 'rframt
                nRfrAmt = MoveToField(Column.ReeferBasic, "N")
                updateQuery2 = updateQuery2 & MoveToField(Column.StorageVAT, "N") & "," 'stovat
                updateQuery2 = updateQuery2 & MoveToField(Column.ArrastreVAT, "N") & ","  'arrvat
                updateQuery2 = updateQuery2 & 0 & ","  'wghvat 'MoveToField(Column.WeighingVAT, "N")
                updateQuery2 = updateQuery2 & MoveToField(Column.ReeferVAT, "N") & ","  'rfrvat
                updateQuery2 = updateQuery2 & MoveToField(Column.StorageWTAX, "N") & ","  'stotax
                updateQuery2 = updateQuery2 & MoveToField(Column.ArrastreWTAX, "N") & "," 'arrtax"
                updateQuery2 = updateQuery2 & 0 & ","  'wghtax 'MoveToField(Column.WeighingWTAX, "N")
                updateQuery2 = updateQuery2 & MoveToField(Column.ReeferWTAX, "N") & ","  'rfrtax
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.VATCode, "C") & "'," 'vatcde
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.GuaranteeCode, "C") & "'," 'gtycde
                updateQuery2 = updateQuery2 & "'" & ConvertToChar(msfCharges.TextMatrix(msfCharges.Row, Column.CustomGuard)) & "'," 'cusgrd
                If IsDate(msfCharges.TextMatrix(intRow, Column.PlugOUTDate)) Then
                    updateQuery2 = updateQuery2 & "'" & Format(MoveToField(Column.PlugINDate, "D"), "yyyy-mm-dd hh:mm:ss") & "'," 'plugin
                Else
                    updateQuery2 = updateQuery2 & "'" & "1899-12-30" & "'," 'null plugin
                End If
                If IsDate(msfCharges.TextMatrix(intRow, Column.PlugOUTDate)) Then
                    updateQuery2 = updateQuery2 & "'" & Format(MoveToField(Column.PlugOUTDate, "D"), "yyyy-mm-dd hh:mm:ss") & "'," 'plugou
                    strPlugOut = MoveToField(Column.PlugOUTDate, "D")
                Else
                    updateQuery2 = updateQuery2 & "'" & "1899-12-30" & "'," 'null plugou
                End If
                If IsDate(msfCharges.TextMatrix(intRow, Column.LastDischargeDate)) Then
                    updateQuery2 = updateQuery2 & "'" & Format(MoveToField(Column.LastDischargeDate, "D"), "yyyy-mm-dd hh:mm:ss") & "'," 'lstdch
                Else
                    updateQuery2 = updateQuery2 & "'" & "1899-12-30" & "'," 'null lstdch
                End If
                If IsDate(msfCharges.TextMatrix(intRow, Column.MountDate)) Then
                    updateQuery2 = updateQuery2 & "'" & Format(MoveToField(Column.MountDate, "D"), "yyyy-mm-dd hh:mm:ss") & "'," 'mntdte
                Else
                    updateQuery2 = updateQuery2 & "'" & "1899-12-30" & "'," 'null mntdte
                End If
                If IsDate(msfCharges.TextMatrix(intRow, Column.StartStorageDate)) Then
                    updateQuery2 = updateQuery2 & "'" & Format(MoveToField(Column.StartStorageDate, "D"), "yyyy-mm-dd hh:mm:ss") & "'," 'stobeg
                Else
                    updateQuery2 = updateQuery2 & "'" & "1899-12-30" & "'," 'null stobeg
                End If
                If IsDate(msfCharges.TextMatrix(intRow, Column.FreeStorageUntil)) Then
                    updateQuery2 = updateQuery2 & "'" & Format(MoveToField(Column.FreeStorageUntil, "D"), "yyyy-mm-dd hh:mm:ss") & "'," 'freeuntil
                Else
                    updateQuery2 = updateQuery2 & "'" & "1899-12-30" & "'," 'null freeuntil
                End If
                If IsDate(msfCharges.TextMatrix(intRow, Column.EndStorageDate)) Then
                    updateQuery2 = updateQuery2 & "'" & Format(MoveToField(Column.EndStorageDate, "D"), "yyyy-mm-dd hh:mm:ss") & "'," 'stoend
                Else
                    updateQuery2 = updateQuery2 & "'" & "1899-12-30" & "'," 'null stoend
                End If
                updateQuery2 = updateQuery2 & "'" & MoveToField(Column.Remarks, "C") & "'," 'remark
                updateQuery2 = updateQuery2 & 0 & "," 'ppanum
                updateQuery2 = updateQuery2 & "'" & cStatus & "'," 'status
                updateQuery2 = updateQuery2 & "'" & UCase(zCurrentUser()) & "'," 'userid
                updateQuery2 = updateQuery2 & "'" & dtmSystemDateTime & "'," 'sysdte
                updateQuery2 = updateQuery2 & "'" & cUpdateCode & "'," 'updcde
                updateQuery2 = updateQuery2 & "'" & msfCharges.TextMatrix(intRow, Column.CompanyCode) & "')" 'CompanyCode - PRNH
                
                updateQuery = updateQuery & updateQuery2
                
                rsCYMGPS.CommandTimeout = 3000
                rsCYMGPS.CommandText = updateQuery
                rsCYMGPS.Execute , , adExecuteNoRecords
                
                On Error GoTo ErrWriteIfForExam
                    Call WriteIfForExam(intRow, Column.ForExam, lngGPSNum)
                On Error GoTo 0

                If intRow <> (msfCharges.Rows - 1) Then
                    lngGPSNum = lngGPSNum + 1
                End If
                 'Call SavePaymentToSparcs(MoveToField(Column.ContainerID, "C"), "STORAGE", "", "4992")
               
                'Save to Sparcs
                strVisit = Sparcs_VisitID(txtRegistry.Text, "IMPRT")
                strGKey = ""
                
                If (nStoAmt > 0) Then
                    'Save Storage
                    'get gKey for Storage
                    strGKey = GetGKey(Trim(strContNo1), "QUEUED", "STORAGE", "IMPRT", strVisit)
                    'sharon Call SavePaymentToSparcs(strContNo1, "STORAGE", "", strGKey1)
                    Call SavePaymentToSparcs(strContNo1, "STORAGE", "", strGKey)
                    Call UpdateChargableUnitStorageReeferStatus(strContNo1, "STORAGE", strGKey)
                    'End Save Storage
                    
                End If
                nStoAmt = 0
                strGKey = ""
                
                If nRfrAmt > 0 Then
                    'Save Reefer
                    'get gKey for Reefer
                    
                    'strVisit = Sparcs_VisitID(txtRegistry.Text, "IMPRT")
                    strGKey = GetGKey(Trim(strContNo1), "QUEUED", "REEFER", "IMPRT", strVisit)
                    If strGKey <> "" Then
                        Call SavePaymentToSparcs(strContNo1, "REEFER", strPlugOut, strGKey)
                        Call UpdateChargableUnitStorageReeferStatus(strContNo1, "REEFER", strGKey)
                    End If
                    'End Save Reefer
                End If
                nRfrAmt = 0
                strGKey = ""
                
                'Save Goods Consignee and Goods BL Number
                Call UpdateConsigneeAndBLNumber(strContNo1, txtConsignee.Text, txtBL.Text)
                
                'Add weighing hold if for weighing
                If strIsForWeighing = "1" Then
                    Call AddWeighingHold(strContNo1)
                End If
                
                'Release Billing Hold/Permission
                Call ReleaseHold(strContNo1)
                
                'Release OOG Hold/Permission
                If strOOGAmount <> "" And IsNumeric(strOOGAmount) Then
                    If CDec(strOOGAmount) > 0 Then
                        Call ReleaseOOGHold(strContNo1)
                    End If
                End If
                            
                'Release DG Amount Hold/Permission
                If strDGAmount <> "" And IsNumeric(strDGAmount) Then
                    If CDec(strDGAmount) > 0 Then
                        Call ReleaseDGHold(strContNo1)
                    End If
                End If
                'strRegNo
'                Call Update_Manifest(Trim(txtBL.Text), Trim(MoveToField(Column.ContainerID, "C")), Trim(lngGPSNum))
                Call Update_Manifest(Trim(txtBL.Text), Trim(MoveToField(Column.ContainerID, "C")), Trim(lngGPSNum), strRegNo)
                Call gzApplyCYMGP(UCase(zCurrentUser()), lngGPSNum, msfCharges.TextMatrix(intRow, Column.CompanyCode)) ' PRNH
            Next intRow
            
            'Call gzApplyCYMGP(UCase(zCurrentUser()), lngGPSNum)
        
        
    Exit Sub
ErrSaveDetails:
    intResponse = MsgBox("Error writing in detail...", vbExclamation + vbDefaultButton2 + vbAbortRetryIgnore, "Error!")
    If intResponse = vbAbort Then
        Unload Me
    ElseIf (intResponse = vbRetry) Or (intResponse = vbIgnore) Then
        Resume
    End If
ErrWriteIfForExam:
    intResponse = MsgBox("Error writing in Exam file...", vbExclamation + vbDefaultButton2 + vbAbortRetryIgnore, "Error!")
    If intResponse = vbAbort Then
        Unload Me
    ElseIf (intResponse = vbRetry) Or (intResponse = vbIgnore) Then
        Resume
    End If
ErrWriteToACOCtn:
    intResponse = MsgBox("Error writing in ACOCtn file...", vbExclamation + vbDefaultButton2 + vbAbortRetryIgnore, "Error!")
    If intResponse = vbAbort Then
        Unload Me
    ElseIf (intResponse = vbRetry) Or (intResponse = vbIgnore) Then
        Resume
    End If
End Sub

Private Sub Update_Manifest(ByVal strBillNo As String, ByVal strConNo As String, ByVal strGpsNum As String, strregnum As String)
    If Up_Manifest(strBillNo, strConNo, strGpsNum, strregnum) = False Then
        MsgBox "Error updating Manifest!", vbExclamation, "Error"
    End If
End Sub

Private Sub PrintGatePass()
    Call GetTotalPaymentAmounts
    Call GetTotalChargePerDetail
End Sub

Private Sub GetTotalPaymentAmounts()
    On Error GoTo ErrCatcher
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    Set rstCYMPay = New ADODB.Recordset
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    rstCYMPay.LockType = adLockOptimistic
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    rstCYMPay.CursorType = adOpenStatic
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    rstCYMPay.Open "Select * from CYMPAY where Refnum= " & lngReferenceNo, gcnnBilling, , , adCmdText
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    With Payment
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .ADR = rstCYMPay.Fields("adramt")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckAmt1 = rstCYMPay.Fields("chkamt1")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckAmt2 = rstCYMPay.Fields("chkamt2")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckAmt3 = rstCYMPay.Fields("chkamt3")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckAmt4 = rstCYMPay.Fields("chkamt4")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckAmt5 = rstCYMPay.Fields("chkamt5")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckNo1 = rstCYMPay.Fields("chkno1")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckNo2 = rstCYMPay.Fields("chkno2")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckNo3 = rstCYMPay.Fields("chkno3")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckNo4 = rstCYMPay.Fields("chkno4")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckNo5 = rstCYMPay.Fields("chkno5")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckBnk1 = rstCYMPay.Fields("chkbnk1")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckBnk2 = rstCYMPay.Fields("chkbnk2")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckBnk3 = rstCYMPay.Fields("chkbnk3")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckBnk4 = rstCYMPay.Fields("chkbnk4")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .CheckBnk5 = rstCYMPay.Fields("chkbnk5")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .Cash = rstCYMPay.Fields("cshamt")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .Change = rstCYMPay.Fields("chgamt")
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .Customer = rstCYMPay.Fields("cusnam")
        .TotalPayment = .ADR + .CheckAmt1 + .CheckAmt2 + .CheckAmt3 + .CheckAmt4 + .CheckAmt5 _
                                + .Cash - .Change
                                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        .RemainingPayment = .TotalPayment
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    End With
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    rstCYMPay.Close
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
ErrCatcher:
    If err.Number <> 0 Then
        MsgBox "Error: " & err.Number & vbCrLf & " Description: " & err.Description
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Error: " & err.Number & vbCrLf
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Description: " & err.Description & vbCrLf
        Call WriteLogError
    End If
End Sub
Private Sub WriteLogError()
    Dim fso As New FileSystemObject
    Dim txtStream As TextStream
    Dim str
    Dim strErr As String
    str = fso.BuildPath("c:\BillingLog", Day(Now) & Month(Now) & Year(Now) & ".txt")
    
    If fso.FileExists(str) Then
        Set txtStream = fso.OpenTextFile(str)
        With txtStream
                Do Until .AtEndOfStream
                        strErr = strErr & .ReadLine & vbCrLf
                    Loop
            End With

            Set txtStream = fso.OpenTextFile(str, 2)
            txtStream.Write strErr & txtLog.Text
    Else
        fso.CreateFolder ("c:\BillingLog")
        Set txtStream = fso.CreateTextFile(str, True)
            txtStream.Write strErr & txtLog.Text
    End If
    txtLog.Text = ""



End Sub
Private Sub GetTotalChargePerDetail()
On Error GoTo ErrCatcher
txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    Dim curTotalCharge As Currency
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    Set rstCYMGps = New ADODB.Recordset
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    rstCYMGps.LockType = adLockOptimistic
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    rstCYMGps.CursorType = adOpenStatic
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    rstCYMGps.Open "Select * from CYMGps where refnum= " & lngReferenceNo & " order by seqnum", gcnnBilling, , , adCmdText
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    rstCYMGps.MoveFirst
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    Do While Not rstCYMGps.EOF
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        With Detail
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Arrastre = rstCYMGps.Fields("arramt")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .ArrastreVAT = rstCYMGps.Fields("arrvat")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .ArrastreTAX = rstCYMGps.Fields("arrtax")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Storage = rstCYMGps.Fields("stoamt")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .StorageVAT = rstCYMGps.Fields("stovat")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .StorageTAX = rstCYMGps.Fields("stotax")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Weighing = rstCYMGps.Fields("wghamt")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .WeighingVAT = rstCYMGps.Fields("wghvat")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .WeighingTAX = rstCYMGps.Fields("wghtax")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Reefer = rstCYMGps.Fields("rframt")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .ReeferVAT = rstCYMGps.Fields("rfrvat")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .ReeferTAX = rstCYMGps.Fields("rfrtax")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Wharfage = rstCYMGps.Fields("whfamt")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .UnderGuarantee = Trim(rstCYMGps.Fields("gtycde"))
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            
            .ArrastreNet = .Arrastre + .ArrastreVAT - .ArrastreTAX
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .StorageNet = .Storage + .StorageVAT - .StorageTAX
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .WeighingNet = .Weighing + .WeighingVAT - .WeighingTAX
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .ReeferNet = .Reefer + .ReeferVAT - .ReeferTAX
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .TotalCharge = .ArrastreNet + .StorageNet + .WeighingNet + .ReeferNet + .Wharfage
            .TotalNet = .ArrastreNet + .StorageNet + .WeighingNet + .ReeferNet
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            
            .Gatepass = rstCYMGps.Fields("gpsnum")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Reference = rstCYMGps.Fields("refnum")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Sequence = rstCYMGps.Fields("seqnum")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .SysDate = rstCYMGps.Fields("sysdte")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Consignee = Left(rstCYMGps.Fields("cnsgne") & Space(30), 30)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Broker = Left(rstCYMGps.Fields("broker") & Space(30), 30)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Registry = Left(rstCYMGps.Fields("regnum") & Space(12), 12)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .EntryNo = rstCYMGps.Fields("entnum")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Location = Left(rstCYMGps.Fields("location") & Space(10), 10)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .VoyageNo = Left(rstCYMGps.Fields("voyageno") & Space(10), 10)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .SMBAPermitNo = Left(rstCYMGps.Fields("sbmapn") & Space(10), 10)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .CustomPermitNo = Left(rstCYMGps.Fields("custompn") & Space(10), 10)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .BillNum = Left(rstCYMGps.Fields("bilnum") & Space(22), 22)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .VesselCode = rstCYMGps.Fields("vslcde")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .PortofOrig = Left(rstCYMGps.Fields("prtorg") & Space(15), 15)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .DeclaredWeight = Left(rstCYMGps.Fields("dclwgt") & Space(15), 15)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .PDIGNo = Left(rstCYMGps.Fields("pdigno") & Space(15), 15)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .ContainerNo = rstCYMGps.Fields("cntnum")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .ContainerSize = rstCYMGps.Fields("cntsze")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .LastDischarge = rstCYMGps.Fields("lstdch")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .ShippingLine = rstCYMGps.Fields("shplin")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .OrderSupplier = rstCYMGps.Fields("ordsup")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .SealNumber = rstCYMGps.Fields("silnum")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .FullEmp = rstCYMGps.Fields("fulemp")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .CRODate = rstCYMGps.Fields("crodte")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .FreeUntil = rstCYMGps.Fields("freeuntil")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .StorageEnd = rstCYMGps.Fields("stoend")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .StorageDay = rstCYMGps.Fields("stoday")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .PlugIn = IIf(IsNull(rstCYMGps.Fields("plugin")), cNullDate, rstCYMGps.Fields("plugin"))
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .PlugOut = IIf(IsNull(rstCYMGps.Fields("plugou")), cNullDate, rstCYMGps.Fields("plugou"))
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .RevenueTon = rstCYMGps.Fields("revton")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Discount = rstCYMGps.Fields("pctdsc")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            
             If .Discount > 0 And .Discount <> 1 Then
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                .StorageAMT = ((.StorageNet / (100 - (.Discount * 100))) * 100)
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf

            ElseIf .Discount = 1 Then
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                .StorageAMT = 0
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf

            Else
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                .StorageAMT = .Storage + .StorageVAT - .StorageTAX
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            End If
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            
            .Oversize = rstCYMGps.Fields("ovzamt")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Commodity = Left(rstCYMGps.Fields("commod") & Space(30), 30)
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .UserID = rstCYMGps.Fields("userid")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .ForExam = rstCYMGps.Fields("forexm")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .Remark = rstCYMGps.Fields("remark")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .CustomsGuard = rstCYMGps.Fields("cusgrd")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .ConsCode = rstCYMGps.Fields("conscde")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .VATCode = rstCYMGps.Fields("vatcde")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .DangerClass = rstCYMGps.Fields("dgrcls")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .BoatNote = rstCYMGps.Fields("boatnt")
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            
            
            Select Case .UnderGuarantee
                Case "A"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .ArrastreNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "B"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .StorageNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "C"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .WeighingNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "D"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .ReeferNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "E"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .ArrastreNet - .StorageNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "F"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .ArrastreNet - .WeighingNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "G"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .ArrastreNet - .ReeferNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "H"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .StorageNet - .WeighingNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "I"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .StorageNet - .ReeferNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "J"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .WeighingNet - .ReeferNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "K"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .WeighingNet - .ArrastreNet - .StorageNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "L"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .ReeferNet - .ArrastreNet - .StorageNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "M"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .ReeferNet - .WeighingNet - .StorageNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case "N"
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge - .ReeferNet - .WeighingNet - .StorageNet - .ArrastreNet
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                Case Else
                txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
                    .DueICTSI = .TotalCharge
                    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            End Select
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            .DueICTSIWords = .DueICTSI - .Wharfage
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
            Call PrintGatePassDetail
            
           
            rstCYMGps.MoveNext
            txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
        End With
    Loop
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    Printer.EndDoc
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
    rstCYMGps.Close
    txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Start Sub" & vbCrLf
ErrCatcher:
    If err.Number <> 0 Then
        MsgBox "Error: " & err.Number & vbCrLf & " Description: " & err.Description
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Error: " & err.Number & vbCrLf
        txtLog.Text = txtLog.Text & "GetTotalPaymentAmounts: Description: " & err.Description & vbCrLf
        Call WriteLogError
    End If
End Sub

Private Sub PrintGatePassDetail()
    Dim strToText As String
    Dim strPayment As String
    Dim blnChk1Printed As Boolean
    Dim blnChk2Printed As Boolean
    Dim blnChk3Printed As Boolean
    Dim blnChk4Printed As Boolean
    Dim blnChk5Printed As Boolean
    
    With Detail
            On Error GoTo ErrPrinting
            Printer.FontName = "Arial"
            Printer.FontSize = 11
            Printer.PrintQuality = vbPRPQDraft
            Printer.Print
            Printer.Print
            'Printer.Print
            Printer.Print Space(80); .Reference; Space(1); .Sequence; Space(1); .Gatepass
            Printer.Print
            Printer.Print Space(125); Format(.SysDate, "yyyy/mm/dd"); Space(5); Format(.SysDate, "hh:mm:ss")
            'Printer.Print
            Printer.Print
            Printer.Print
            Printer.Print
            Printer.Print
            Printer.Print Space(8); Left(.Consignee, 30); Space(21); Left(.Registry, 10); Space(12); Left(.VoyageNo, 10); Space(20); Left(.CustomPermitNo, 10)
            Printer.Print
            'Printer.Print
            Printer.Print Space(8); Left(.Broker, 32); Space(30); Left(.BillNum, 20); Space(30); Left(.SMBAPermitNo, 10)
            Printer.Print
            'Printer.Print
            Printer.Print Space(8); Left(.VesselCode, 10); Space(23); Left(.PortofOrig, 3); Space(46); Format(.LastDischarge, "yyyy/mm/dd"); Space(20); .DeclaredWeight
            Printer.Print
            Printer.Print Space(8); Left(.ContainerNo, 12); Space(17); Left(.ContainerSize, 2); Space(7);
            If .FullEmp = "F" Then
                Printer.Print "FULL";
            Else
                Printer.Print "EMPTY";
            End If
            Printer.Print Space(10); Left(.Location, 10); Space(30); Left(.ShippingLine, 7)
            Printer.Print
            Printer.Print
            Printer.Print
            Printer.Print Space(38); Space(42); ' Format(.FreeUntil, "yyyy/mm/dd"); Space(32);
            
            If .PlugIn = cNullDate Then
                Printer.Print Space(10);
                Printer.Print Space(8);
                Printer.Print Space(5)
            Else
                Printer.Print Format(.PlugIn, "yyyy/mm/dd");
                Printer.Print Space(3);
                Printer.Print Format(.PlugIn, "hh:mm")
            End If
           
            'Printer.Print
            If .PlugOut <> cNullDate Then
                Printer.Print Space(69); .StorageDay; Space(44);
                Printer.Print DateDiff("h", .PlugIn, .PlugOut);
            Else
                Printer.Print Space(127);
            End If
            Printer.Print Space(7);
            Printer.Print Format(.CRODate, "yyyy/mm/dd")
            Printer.Print Space(38); Space(42); 'Format(.StorageEnd, "yyyy/mm/dd"); Space(32);
            If .PlugOut = cNullDate Then
                Printer.Print Space(10);
                Printer.Print Space(8);
                Printer.Print Space(5);
            Else
                Printer.Print Format(.PlugOut, "yyyy/mm/dd");
                Printer.Print Space(3);
                Printer.Print Format(.PlugOut, "hh:mm")
            End If
            Printer.Print
            Printer.Print
            Printer.Print
            Printer.Print
            If .RevenueTon > 0 Then
                RSet .strRevenueTon = CStr(Format(.RevenueTon, "###0.00"))
                Printer.Print Left(.strRevenueTon & Space(7), 7); Space(16);
            Else
                Printer.Print Space(7); Space(21);
            End If
                
            If .Oversize > 0 Then
                RSet .strArrastreLessOversize = CStr(Format(.ArrastreNet - .Oversize, "###,##0.00"))
                Printer.Print Left(.strArrastreLessOversize & Space(10), 10);
            Else
                RSet .strArrastreLessOversize = CStr(Format(.ArrastreNet, "###,##0.00"))
                Printer.Print Left(.strArrastreLessOversize & Space(10), 10);
            End If
            Printer.Print Space(21);
            
            RSet .strStorageAmt = CStr(Format(.StorageAMT, "###,##0.00"))
            Printer.Print Left(.strStorageAmt & Space(10), 10);
            Printer.Print Space(21);
            
            RSet .strReeferNet = CStr(Format(.ReeferNet, "###,##0.00"))
            Printer.Print Left(.strReeferNet & Space(10), 10);
            Printer.Print Space(21);
            
            RSet .strTotalCharge = CStr(Format(.TotalCharge, "####,##0.00"))
            Printer.Print Left(.strTotalCharge & Space(11), 11);
            Printer.Print
            Printer.Print
            Printer.Print Space(9); Space(8);
            If .Oversize > 0 Then
                RSet .strOversize = CStr(Format(.Oversize, "###,##0.00"))
                Printer.Print Left(.strOversize & Space(10), 10);
            Else
                Printer.Print Space(10);
            End If
            
            Printer.Print Space(8);
            If .Discount > 0 Then
                RSet .strDiscount = CStr(Format(.Discount, "##,##0.000"))
                Printer.Print Left(.strDiscount & Space(10), 10);
            Else
                Printer.Print Space(10)
            End If
            
            'for total
            'Printer.Print
            Printer.Print
            Printer.Print Space(29);
            Printer.Print Space(21);
            Select Case .VATCode
                Case Space(1), "4"
                    Printer.Print Space(20); "ZERO RATED VAT     ";
                Case "1"
                    Printer.Print Space(20); "VAT INCLUSIVE      ";
                Case "2", "3", "5"
                    Printer.Print Space(20); "VAT INCL. LESS WTAX";
            End Select
            
           'Printer.Print Space(42);
            
            RSet .strTotalCharge = CStr(Format(.TotalCharge, "####,##0.00"))
            Printer.Print Space(31); Left(.strTotalCharge & Space(11), 11)
            Printer.Print
            Printer.Print Space(5); Left(.Commodity, 20);
            Printer.Print Space(20);
           'Printer.Print Left(.UserID, 10);
            Printer.Print Space(10);
            Printer.Print Space(10);
            strToText = NumToText(.DueICTSIWords)
            Printer.Print Left(strToText, 45)
            Printer.Print Space(75); Mid(strToText, 40)
            
            'Printer.Print
            'Printer.Print
            Printer.Print
            Printer.Print Space(92); Format(.SysDate, "yyyymmdd"); Space(1); Format(.SysDate, "hhmm"); Space(1); _
                                   .Reference; Space(1); .Sequence; Space(1); .Gatepass
            'Printer.Print
            Printer.Print Space(5); Left(.UserID, 10); Space(14); Left(gbSupervisor, 15);
            Printer.Print Space(50);
            Select Case .UnderGuarantee
                Case Space(1)
                    Printer.Print "        "
                Case "A"
                    Printer.Print "U/G ARR "
                Case "B"
                    Printer.Print "U/G STRG"
                Case "C"
                    Printer.Print "U/G WGH "
                Case "D"
                    Printer.Print "U/G RFR "
                Case "N"
                    Printer.Print "ALL     "
                Case Else
                    Printer.Print "U/G     "
            End Select
            'Printer.Print Space(75)
            'Printer.Print Space(5)
            'Printer.Print
            If .DangerClass = Space(1) Then
                Printer.Print Space(4);
            Else
                Printer.Print "DC " & .DangerClass;
            End If
            
            strPayment = LiquidatePaymentTypes(2)
            Printer.Print Space(70);
            If strPayment <> "" Then
                Printer.Print Left(strPayment, 11);
                Printer.Print Space(1);
                Printer.Print "CK";
                blnChk1Printed = True
            Else
                Printer.Print Space(14);
                blnChk1Printed = False
            End If
            
            strPayment = LiquidatePaymentTypes(3)
            Printer.Print Space(20);
            If strPayment <> "" Then
                Printer.Print Left(strPayment, 11);
                Printer.Print Space(1);
                Printer.Print "CK";
                blnChk2Printed = True
            Else
                Printer.Print Space(14);
                blnChk2Printed = False
            End If
                
            Printer.Print Space(10);
            Printer.Print
            strPayment = LiquidatePaymentTypes(4)
            Printer.Print Space(70);
            If strPayment <> "" Then
                Printer.Print Left(strPayment, 11);
                Printer.Print Space(1);
                Printer.Print "CK";
                blnChk3Printed = True
            Else
                Printer.Print Space(14);
                blnChk3Printed = False
            End If
            'Printer.Print
            strPayment = LiquidatePaymentTypes(5)
            Printer.Print Space(10);
            If strPayment <> "" Then
                Printer.Print Left(strPayment, 11);
                Printer.Print Space(1);
                Printer.Print "CK";
                blnChk4Printed = True
            Else
                Printer.Print Space(14);
                blnChk4Printed = False
            End If
            Printer.Print
            strPayment = LiquidatePaymentTypes(6)
            Printer.Print Space(70);
            If strPayment <> "" Then
                Printer.Print Left(strPayment, 11);
                Printer.Print Space(1);
                Printer.Print "CK"
                blnChk5Printed = True
            Else
                Printer.Print Space(14)
                blnChk5Printed = False
            End If
            
            Printer.Print Space(92);
            If blnChk1Printed Then
                Printer.Print Left((Payment.CheckNo1 & Space(10)), 10);
                Printer.Print Space(1);
            End If
            If blnChk2Printed Then
                Printer.Print Left((Payment.CheckNo2 & Space(10)), 10);
                Printer.Print Space(1);
            End If
            If blnChk3Printed Then
                Printer.Print Left((Payment.CheckNo3 & Space(10)), 10);
                Printer.Print Space(1);
            End If
            If blnChk4Printed Then
                Printer.Print Left((Payment.CheckNo4 & Space(10)), 10);
                Printer.Print Space(1);
            End If
            If blnChk5Printed Then
                Printer.Print Left((Payment.CheckNo5 & Space(10)), 10);
                Printer.Print Space(1);
            End If
            Printer.Print Space(5)
            
            strPayment = LiquidatePaymentTypes(7)
            Printer.Print Space(70);
            If strPayment <> "" Then
                Printer.Print Left(strPayment, 11);
                Printer.Print Space(1);
                Printer.Print "CS";
            Else
                Printer.Print Space(14);
            End If
            Printer.Print Space(5);
            If blnChk1Printed Then
                Printer.Print Left((Payment.CheckBnk1 & Space(10)), 10);
                Printer.Print Space(1);
            End If
            If blnChk2Printed Then
                Printer.Print Left((Payment.CheckBnk2 & Space(10)), 10);
                Printer.Print Space(1);
            End If
            If blnChk3Printed Then
                Printer.Print Left((Payment.CheckBnk3 & Space(10)), 10);
                Printer.Print Space(1);
            End If
            If blnChk4Printed Then
                Printer.Print Left((Payment.CheckBnk4 & Space(10)), 10);
                Printer.Print Space(1);
            End If
            If blnChk5Printed Then
                Printer.Print Left((Payment.CheckBnk5 & Space(10)), 10);
                Printer.Print Space(1)
            Else
                Printer.Print Space(1)
            End If
            Printer.Print
            Printer.Print
            Printer.Print Space(110);
            Printer.Print .Remark
            If .CustomsGuard = "Y" Then
                Printer.Print Space(109); "/Underguard  "
            Else
                Printer.Print Space(109); Space(13)
            End If
            
            Printer.Print Space(4);
            Printer.Print
            Printer.Print
            Printer.Print Space(75); "CCR VALID UNTIL "; Space(10)
            'If .CRODate > .StorageEnd Then
            '    Printer.Print Format(.StorageEnd, "yyyy/mm/dd")
            'Else
            '    Printer.Print Format(.CRODate, "yyyy/mm/dd")
            'End If
            Printer.NewPage
        End With
    On Error GoTo 0
    Exit Sub

ErrPrinting:
    intResponse = MsgBox("Error printing...", vbExclamation + vbDefaultButton2 + vbAbortRetryIgnore, "Error!")
    If intResponse = vbAbort Then
        Unload Me
    ElseIf (intResponse = vbRetry) Or (intResponse = vbIgnore) Then
        Resume
    End If
End Sub

Private Function LiquidatePaymentTypes(pType As Integer) As String
    Dim curADRApplied As Currency
    Dim curCheck1Applied As Currency
    Dim curCheck2Applied As Currency
    Dim curCheck3Applied As Currency
    Dim curCheck4Applied As Currency
    Dim curCheck5Applied As Currency
    Dim curCashApplied As Currency
    
    LiquidatePaymentTypes = ""
    With Payment
        Select Case pType
            Case 1
                'ADR
                If Detail.DueICTSI > 0 Then
                    If .ADR > 0 Then
                        If .ADR >= Detail.DueICTSI Then
                            curADRApplied = Detail.DueICTSI
                            .ADR = .ADR - Detail.DueICTSI
                        ElseIf .ADR < Detail.DueICTSI Then
                            curADRApplied = .ADR
                            .ADR = 0
                        End If
                        Detail.DueICTSI = Detail.DueICTSI - curADRApplied
                        LiquidatePaymentTypes = CStr(Format(curADRApplied, "####,##0.00"))
                        LiquidatePaymentTypes = Left(LiquidatePaymentTypes & Space(11), 11)
                        Exit Function
                    End If
                End If
            Case 2
                'CHECK1
                If Detail.DueICTSI > 0 Then
                    If .CheckAmt1 > 0 Then
                        If .CheckAmt1 >= Detail.DueICTSI Then
                            curCheck1Applied = Detail.DueICTSI
                            .CheckAmt1 = .CheckAmt1 - Detail.DueICTSI
                        ElseIf .CheckAmt1 < Detail.DueICTSI Then
                            curCheck1Applied = .CheckAmt1
                            .CheckAmt1 = 0
                        End If
                        Detail.DueICTSI = Detail.DueICTSI - curCheck1Applied
                        LiquidatePaymentTypes = CStr(Format(curCheck1Applied, "####,##0.00"))
                        LiquidatePaymentTypes = Left(LiquidatePaymentTypes & Space(11), 11)
                        Exit Function
                    End If
                End If
            Case 3
                'CHECK2
                If Detail.DueICTSI > 0 Then
                    If .CheckAmt2 > 0 Then
                        If .CheckAmt2 >= Detail.DueICTSI Then
                            curCheck2Applied = Detail.DueICTSI
                            .CheckAmt2 = .CheckAmt2 - Detail.DueICTSI
                        ElseIf .CheckAmt2 < Detail.DueICTSI Then
                            curCheck2Applied = .CheckAmt2
                            .CheckAmt2 = 0
                        End If
                        Detail.DueICTSI = Detail.DueICTSI - curCheck2Applied
                        LiquidatePaymentTypes = CStr(Format(curCheck2Applied, "####,##0.00"))
                        LiquidatePaymentTypes = Left(LiquidatePaymentTypes & Space(11), 11)
                        Exit Function
                    End If
                End If
            Case 4
                'CHECK3
                If Detail.DueICTSI > 0 Then
                    If .CheckAmt3 > 0 Then
                        If .CheckAmt3 >= Detail.DueICTSI Then
                            curCheck3Applied = Detail.DueICTSI
                            .CheckAmt3 = .CheckAmt3 - Detail.DueICTSI
                        ElseIf .CheckAmt3 < Detail.DueICTSI Then
                            curCheck3Applied = .CheckAmt3
                            .CheckAmt3 = 0
                        End If
                        Detail.DueICTSI = Detail.DueICTSI - curCheck3Applied
                        LiquidatePaymentTypes = CStr(Format(curCheck3Applied, "####,##0.00"))
                        LiquidatePaymentTypes = Left(LiquidatePaymentTypes & Space(11), 11)
                        Exit Function
                    End If
                End If
            Case 5
                'CHECK4
                If Detail.DueICTSI > 0 Then
                    If .CheckAmt4 > 0 Then
                        If .CheckAmt4 >= Detail.DueICTSI Then
                            curCheck4Applied = Detail.DueICTSI
                            .CheckAmt4 = .CheckAmt4 - Detail.DueICTSI
                        ElseIf .CheckAmt4 < Detail.DueICTSI Then
                            curCheck4Applied = .CheckAmt4
                            .CheckAmt4 = 0
                        End If
                        Detail.DueICTSI = Detail.DueICTSI - curCheck4Applied
                        LiquidatePaymentTypes = CStr(Format(curCheck4Applied, "####,##0.00"))
                        LiquidatePaymentTypes = Left(LiquidatePaymentTypes & Space(11), 11)
                        Exit Function
                    End If
                End If
            Case 6
                'CHECK5
                If Detail.DueICTSI > 0 Then
                    If .CheckAmt5 > 0 Then
                        If .CheckAmt5 >= Detail.DueICTSI Then
                            curCheck5Applied = Detail.DueICTSI
                            .CheckAmt5 = .CheckAmt5 - Detail.DueICTSI
                        ElseIf .CheckAmt5 < Detail.DueICTSI Then
                            curCheck5Applied = .CheckAmt5
                            .CheckAmt5 = 0
                        End If
                        Detail.DueICTSI = Detail.DueICTSI - curCheck5Applied
                        LiquidatePaymentTypes = CStr(Format(curCheck5Applied, "####,##0.00"))
                        LiquidatePaymentTypes = Left(LiquidatePaymentTypes & Space(11), 11)
                        Exit Function
                    End If
                End If
            Case 7
                'CASH
                If .RemainingPayment > 0 Then
                    If .Cash > 0 Then
                        If .Cash >= Detail.DueICTSI Then
                            curCashApplied = Detail.DueICTSI
                            .Cash = .Cash - Detail.DueICTSI
                        ElseIf .Cash < Detail.DueICTSI Then
                            curCashApplied = .Cash
                            .Cash = 0
                        End If
                         Detail.DueICTSI = Detail.DueICTSI - curCashApplied
                         LiquidatePaymentTypes = CStr(Format(curCashApplied, "####,##0.00"))
                         LiquidatePaymentTypes = Left(LiquidatePaymentTypes & Space(11), 11)
                         Exit Function
                    End If
                End If
        End Select
    End With
End Function

Private Sub WriteIfForExam(pRow As Integer, pCol As Byte, pGatePassNo As Long)
    Dim rstBOCExam As ADODB.Recordset
    Dim blnExaminationRequired As Boolean
    blnExaminationRequired = Trim(msfCharges.TextMatrix(pRow, pCol)) = "Y"
    If blnExaminationRequired Then
        Set rstBOCExam = New ADODB.Recordset
        msfCharges.Row = pRow
        With rstBOCExam
            .LockType = adLockOptimistic
            .CursorType = adOpenDynamic
            .Open "BOCExam", gcnnBilling, , , adCmdTable
            .AddNew
            .Fields("cntnum") = MoveToField(Column.ContainerID, "C")
            .Fields("regnum") = MoveToField(Column.RegistryNo, "C")
            .Fields("bilnum") = MoveToField(Column.BillofLading, "C")
            .Fields("entnum") = MoveToField(Column.EntryNo, "N")
            .Fields("enttyp") = MoveToField(Column.EntryType, "C")
            .Fields("gpsnum") = pGatePassNo
            .Fields("gpsdte") = dtmSystemDateTime
            .Update
            .Close
        End With
    End If
End Sub

Private Function ConvertToChar(pValue As Integer) As String
    ConvertToChar = IIf(pValue = 1, "Y", "N")
End Function

Private Function MoveToField(pCol As Byte, pFieldType As String) As Variant
    msfCharges.Col = pCol
    Select Case pFieldType
        Case "N"
            MoveToField = CCur(msfCharges.Text)
        Case "C"
            If pCol = Column.ContainerID Then
                MoveToField = RTrim(msfCharges.Text)
            Else
                MoveToField = Trim(msfCharges.Text)
            End If
        Case "D"
            MoveToField = CDate(msfCharges.Text)
        Case "L"
            MoveToField = CLng(msfCharges.Text)
        Case "I"
            MoveToField = CInt(msfCharges.Text)
    End Select
End Function

Private Sub mskADRAmount_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Call mskADRAmount_LostFocus
        If cmdSave.Enabled Then cmdSave.SetFocus
    End If
End Sub

Private Sub mskAdvGPDate_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, mskCRODate, mskPlugIN)
End Sub

Private Sub mskBOCGatepassDate_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        Call FieldAdvance(KeyCode, cboStorageStat, mskNonWorkingDays)
    End If
End Sub

Private Sub mskChange_Change()
    If Val(mskChange.Text) >= 0 Then
        cmdSave.Enabled = True
    Else
        cmdSave.Enabled = False
    End If
End Sub

Private Sub mskCheckNo_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, mskCheckAmount(Index), txtBank(Index))
End Sub

Private Sub mskCheckNo_LostFocus(Index As Integer)
    If Not IsNumeric(mskCheckNo(Index)) Then mskCheckNo(Index) = 0
End Sub

Private Sub mskCRODate_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, mskLastDischargeDate, mskAdvGPDate)
End Sub

Private Sub dtLastDischargeDate_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        Call FieldAdvance(KeyCode, txtContainer(3), mskTrainMountDate)
    End If
End Sub

Private Sub mskGatePassNo_LostFocus()
    Dim lngReturnedGP As Long
    lngReturnedGP = gzChkValidCYM(UCase(zCurrentUser()), Val(mskGatePassNo), txtCompCode.Text)
        If lngReturnedGP = 0 Or lngReturnedGP = -1 Or lngReturnedGP = -2 Or lngReturnedGP = -3 Then
            intResponse = MsgBox("Invalid Gatepass Number. Please retry...", vbOKOnly + vbExclamation, "")
            If intResponse = vbOKOnly Then
                With mskGatePassNo
                    .SelStart = 0
                    .SelLength = .MaxLength
                    .SetFocus
                End With
            End If
        End If
End Sub

Private Sub mskLastDischargeDate_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtContainer(2), mskCRODate)
End Sub

Private Sub mskPlugIN_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        Call FieldAdvance(KeyCode, mskTrainMountDate, mskPlugOUT)
    End If
End Sub

Private Sub mskPlugOUT_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, mskPlugIN, cboDangClass)
End Sub

Private Sub mskPlugOUT_LostFocus()
    mskPlugOUT = Left(mskPlugOUT, 17) & "00"
End Sub

Private Sub mskStripDate_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, cboStorageStat, mskOVLength)
End Sub

Private Sub mskTrainMountDate_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, mskLastDischargeDate, mskCRODate)
End Sub

Private Sub Form_Activate()
    sstMain.Tab = 0
    blnBLTagged = False
    intIDXContainer = 0
    intProcessedContainers = 0
    mskRunning = 0
    msfCharges.Rows = 1
    With txtSBMAPermit
        .SelStart = 0
        .SelLength = .MaxLength
        .SetFocus
    End With
    blnADDRows = False
    blnInChargesColumn = False
    blnFirstTime = True
    Call InitializeHeaderVariables
    Call InitializeComputationVariables
    Call InitializeGridAndOther
    Call InitializeOtherInfo
    Call InitializePayment
End Sub

Private Sub InitializeHeaderVariables()
    txtSBMAPermit = ""
    txtCustomPermit = ""
    txtBL = ""
    txtRegistry = ""
    chkForExam.Value = 0
    'PRNH
    'mskGatePassNo = gzGetNextCYMGP(UCase(zCurrentUser()))
    txtCustomer = ""
    txtBrokerNO = ""
    cboVAT.Text = cboVAT.List(0)
    cboUnderGuarantee.Text = cboUnderGuarantee.List(0)
    chkWharfageOnly.Value = 0
    chkWharfageExempt.Value = 0
End Sub

Private Sub InitializeComputationVariables()
    txtContainer(1) = ""
    txtContainer(2) = ""
    txtContainer(3) = ""
    mskLastDischargeDate = cDateFormat
    mskTrainMountDate.Text = cDateTimeFormat
    mskPlugIN.Text = cDateTimeFormat
    mskPlugOUT.Text = cDateTimeFormat
    mskCRODate.Text = Format(gzGetSysDate, "yyyy-mm-dd")
    mskAdvGPDate.Text = Format(gzGetSysDate, "yyyy-mm-dd")
    
    cboDangClass.Text = cboDangClass.List(0)
    chkWeighing.Value = 0
    cboStorageStat.Text = cboStorageStat.List(0)
    mskOVLength = 0
    mskOVWidth = 0
    mskOVHeight = 0
    txtUMS = "I"
    mskRevenueTon = 0
    
    mskNonWorkingDays = 0
    mskBOCGatepassDate = cDateFormat
    mskDaysFree = 0
    mskDiscount = 0
    mskStripDate = cDateFormat
    txtRelayContainer = "I"
End Sub

Private Sub InitializeSomeComputationVariables()
    cmbConNo.Text = ""
   'txtContainer(1) = ""
   'txtContainer(2) = ""
   'txtContainer(3) = ""
   'mskLastDischargeDate = cDateFormat
    mskTrainMountDate.Text = cDateTimeFormat
    mskPlugIN.Text = cDateTimeFormat
    mskPlugOUT.Text = cDateTimeFormat
   
    mskOVLength = 0
    mskOVWidth = 0
    mskOVHeight = 0
    txtUMS = "I"
    mskRevenueTon = 0
   
End Sub

Private Sub InitializeGridAndOther()
    
    optStorage.Value = False
    optArrastre.Value = False
    optReefer.Value = False
    optWeighing.Value = False
    
    dtStartStorage = cNullDate
    dtStartStorage.MinDate = cNullDate
    dtStorageFree = cNullDate
    dtStorageFree.MinDate = cNullDate
    dtEndStorage = cNullDate
    dtEndStorage.MinDate = cNullDate
    mskDaysInYard = 0
    mskPayableDays = 0
    mskTotalAMT = 0
    mskTotalVAT = 0
    mskTotalWTAX = 0
    mskContainerTotal = 0
    mskPayOnly = 0

End Sub

Private Sub InitializeOtherInfo()
    txtConsignee = ""
    txtBroker = ""
    txtBrokerTIN = ""
    txtConsigneeTIN = ""
    txtCommodity = ""
    txtPDIGNo = ""
    txtBoatNote = ""
    txtDeclaredWeight = ""
    txtVesselCode = ""
    txtRemarks = ""
    chkCustomsGuard.Value = 0
    txtShippingLine = ""
    txtOrderSupplier = ""
    txtBillofLading1 = ""
    txtSealNo = ""
    txtLocation = ""
    txtVoyageNo = ""
    txtPortofOrigin = ""
    If chkWharfageExempt.Value = 1 Then
        txtConsolidationType = "1"
    Else
        txtConsolidationType = ""
    End If
    
    'PRNH
    txtCompCode.Text = ""
End Sub

Private Sub Form_Load()
On Error GoTo err
    Call LoadColumnNumbers
    Call DisableNextTabs
    Call PopulateVAT
    Call PopulateUG
    Call PopulateDangerClass
    Call PopulateStorageCode
    
    Call PutContainerHeader
    Call GetSparcsN4Host
    
    'PRNH
    cmdSave.Enabled = False
    
    Exit Sub
    
err:
    MsgBox "Error in Form_Load"
End Sub

Public Function UpdateChargableUnitStorageReeferStatus(ByVal strcContNo As String, ByVal strcCharge As String, ByVal strcGKey As String)
    Dim rstN4Status As ADODB.Recordset
    Dim strN4StatusQuery As String
    
    Set rstN4Status = New ADODB.Recordset
    
    If strcCharge = "STORAGE" Then
        strN4StatusQuery = "UPDATE argo_chargeable_unit_events " & _
                           "SET status = 'INVOICED' " & _
                           "WHERE  (equipment_id = '" & strcContNo & "') AND " & _
                           "event_type = 'STORAGE' AND status = 'QUEUED' AND gkey=" & strcGKey
    ElseIf strcCharge = "REEFER" Then
        strN4StatusQuery = "UPDATE argo_chargeable_unit_events " & _
                           "SET status = 'INVOICED' " & _
                           "WHERE  (equipment_id = '" & strcContNo & "') AND " & _
                           "event_type = 'REEFER' AND status = 'QUEUED' AND gkey=" & strcGKey
    End If
    rstN4Status.Open strN4StatusQuery, gcnnNavis, adOpenForwardOnly, adLockReadOnly
    
    Set rstN4Status = Nothing
End Function

Private Sub LoadColumnNumbers()
    Dim intColumnCTR As Integer
    intColumnCTR = 0
    With Column
        .FixedCol = intColumnCTR
        .Gatepass = Increment(intColumnCTR)
        .Sequence = Increment(intColumnCTR)
        .ContainerID = Increment(intColumnCTR)
        .RevenueTon = Increment(intColumnCTR)
        
        .StorageTotal = Increment(intColumnCTR)
        .StorageBasic = Increment(intColumnCTR)
        .StorageWTAX = Increment(intColumnCTR)
        .StorageVAT = Increment(intColumnCTR)

        .ArrastreTotal = Increment(intColumnCTR)
        .ArrastreBasic = Increment(intColumnCTR)
        .ArrastreWTAX = Increment(intColumnCTR)
        .ArrastreVAT = Increment(intColumnCTR)

        .WeighingTotal = Increment(intColumnCTR)
        .WeighingBasic = Increment(intColumnCTR)
        .WeighingWTAX = Increment(intColumnCTR)
        .WeighingVAT = Increment(intColumnCTR)

        .ReeferTotal = Increment(intColumnCTR)
        .ReeferBasic = Increment(intColumnCTR)
        .ReeferWTAX = Increment(intColumnCTR)
        .ReeferVAT = Increment(intColumnCTR)

        .TotalAMT = Increment(intColumnCTR)
        .PayOnly = Increment(intColumnCTR)

        .Reference = Increment(intColumnCTR)
        .GPassType = Increment(intColumnCTR)
        .EntryType = Increment(intColumnCTR)
        .EntryNo = Increment(intColumnCTR)
        .CustomPN = Increment(intColumnCTR)
        .SBMAPN = Increment(intColumnCTR)
        .Location = Increment(intColumnCTR)
        .VoyageNo = Increment(intColumnCTR)

        .ContainerSize = Increment(intColumnCTR)
        .FullEmpty = Increment(intColumnCTR)
        .OVLength = Increment(intColumnCTR)
        .OVWidth = Increment(intColumnCTR)
        .OVHeight = Increment(intColumnCTR)
        .OversizeUMS = Increment(intColumnCTR)
        .OversizeAMT = Increment(intColumnCTR)

        .TranshipmentCode = Increment(intColumnCTR)
        .ConsolCargoCode = Increment(intColumnCTR)
        .DeclaredWeight = Increment(intColumnCTR)
        .BillofLading = Increment(intColumnCTR)
        .RegistryNo = Increment(intColumnCTR)

        .CRODate = Increment(intColumnCTR)
        .LastDischargeDate = Increment(intColumnCTR)
        .ExtensionDate = Increment(intColumnCTR)
        .VesselCode = Increment(intColumnCTR)
        .SealNumber = Increment(intColumnCTR)

        .OrderSupplier = Increment(intColumnCTR)
        .BoatNote = Increment(intColumnCTR)
        .ShippingLine = Increment(intColumnCTR)
        .PortofOrigin = Increment(intColumnCTR)
        .Consignee = Increment(intColumnCTR)

        .Broker = Increment(intColumnCTR)
        .BrokerNo = Increment(intColumnCTR)
        .PDIGNo = Increment(intColumnCTR)
        .Commodity = Increment(intColumnCTR)
        .DangerClass = Increment(intColumnCTR)
        .DangerAMT = Increment(intColumnCTR)
        .Weighing = Increment(intColumnCTR)

        .StorageDiscount = Increment(intColumnCTR)
        .BillableDays = Increment(intColumnCTR)
        .FreeStorageDays = Increment(intColumnCTR)
        .StorageStatus = Increment(intColumnCTR)
        .StrippingDate = Increment(intColumnCTR)
        .Discount = Increment(intColumnCTR)
        .NoDaysFree = Increment(intColumnCTR)
        .BOCGatePassDate = Increment(intColumnCTR)
        .NonWorkingDaysinBetween = Increment(intColumnCTR)
        .ImportOrExport = Increment(intColumnCTR)
        .VATCode = Increment(intColumnCTR)
        .WharfageExempt = Increment(intColumnCTR)

        .GuaranteeCode = Increment(intColumnCTR)
        .CustomGuard = Increment(intColumnCTR)
        .PlugINDate = Increment(intColumnCTR)
        .PlugOUTDate = Increment(intColumnCTR)
        .VisitID = Increment(intColumnCTR)
        .MountDate = Increment(intColumnCTR)

        .StartStorageDate = Increment(intColumnCTR)
        .FreeStorageUntil = Increment(intColumnCTR)
        .EndStorageDate = Increment(intColumnCTR)
        .RemarksCode = Increment(intColumnCTR)
        .Remarks = Increment(intColumnCTR)
        .StatusCode = Increment(intColumnCTR)
        .RecordTag = Increment(intColumnCTR)

        .UserID = Increment(intColumnCTR)
        .GatePassDate = Increment(intColumnCTR)
        .UpdateCode = Increment(intColumnCTR)
        
        .TotalAMOUNT = Increment(intColumnCTR)
        .TotalVAT = Increment(intColumnCTR)
        .TotalWTAX = Increment(intColumnCTR)
        .ContainerTotal = Increment(intColumnCTR)
        .DaysInYard = Increment(intColumnCTR)
        .PayableDays = Increment(intColumnCTR)
    
        .tmpStorageBasic = Increment(intColumnCTR)
        .tmpStorageWTAX = Increment(intColumnCTR)
        .tmpStorageVAT6 = Increment(intColumnCTR)
        .tmpStorageVAT10 = Increment(intColumnCTR)
    
        .tmpWeighingBasic = Increment(intColumnCTR)
        .tmpWeighingWTAX = Increment(intColumnCTR)
        .tmpWeighingVAT6 = Increment(intColumnCTR)
        .tmpWeighingVAT10 = Increment(intColumnCTR)
    
        .tmpArrastreBasic = Increment(intColumnCTR)
        .tmpArrastreWTAX = Increment(intColumnCTR)
        .tmpArrastreVAT6 = Increment(intColumnCTR)
        .tmpArrastreVAT10 = Increment(intColumnCTR)
    
        .tmpReeferBasic = Increment(intColumnCTR)
        .tmpReeferWTAX = Increment(intColumnCTR)
        .tmpReeferVAT6 = Increment(intColumnCTR)
        .tmpReeferVAT10 = Increment(intColumnCTR)
    
        .ForExam = Increment(intColumnCTR)
        .RegistryOrig = Increment(intColumnCTR)
        
        'PRNH
        .CompanyCode = Increment(intColumnCTR)
        
    End With
    '
    With columnBL
        .EntryType = 0
        .BillofLading = 1
        .Registry = 2
        .Broker = 3
        .Close = 4
    End With
    '
    With columnContainer
        .ContainerNo = 0
        .Size = 1
        .GatepassNo = 2
        .Split = 3
        .Exam = 4
        .Error = 5
        .NotPaid = 6
        .NoEntry = 7
        .NIL = 8
        .Hold = 9
        .Maersk = 10
        .FE = 11
        .OrderSupplier = 12
        .ShipLine = 13
        .Reefer = 14
        .Bill = 15
    End With
End Sub

Private Function Increment(ByRef pCTR As Integer) As Integer
    Increment = pCTR + 1
    pCTR = Increment
End Function

Private Sub PopulateVAT()
    'cboVAT.AddItem " " & Chr(124) & " VAT exempted."
    'cboVAT.AddItem "1" & Chr(124) & " 10% VAT."
    'cboVAT.AddItem "2" & Chr(124) & " 10% VAT less 1% creditable expanded WTAX."
    'cboVAT.AddItem "3" & Chr(124) & " 6% VAT."
    'cboVAT.AddItem "4" & Chr(124) & " 0 VAT, 1% WTAX."
    'cboVAT.AddItem "5" & Chr(124) & " 6% VAT less 1% creditable expanded WTAX."
    
    cboVAT.AddItem " " & Chr(124) & " Zero VAT"
    cboVAT.AddItem "1" & Chr(124) & " Zero VAT less 1% w/tax"
    
    'PRNH
    cboVAT.AddItem "2" & Chr(124) & " Zero VAT less 2% w/tax"
    
    'cboVAT.AddItem "2" & Chr(124) & " 10% VAT"
    'cboVAT.AddItem "3" & Chr(124) & " 10% less 1% w/tax"
    'cboVAT.AddItem "4" & Chr(124) & " 6% VAT"
    'cboVAT.AddItem "5" & Chr(124) & " 6% VAT less 1% w/tax"
End Sub

Private Sub PopulateUG()
    cboUnderGuarantee.AddItem " " & Chr(124) & " Not Applicable"
    cboUnderGuarantee.AddItem "A" & Chr(124) & " Arrastre"
    cboUnderGuarantee.AddItem "B" & Chr(124) & " Storage"
    cboUnderGuarantee.AddItem "C" & Chr(124) & " Weighing"
    cboUnderGuarantee.AddItem "D" & Chr(124) & " Reefer"
    cboUnderGuarantee.AddItem "E" & Chr(124) & " Arrastre, Storage"
    cboUnderGuarantee.AddItem "F" & Chr(124) & " Arrastre, Weighing"
    cboUnderGuarantee.AddItem "G" & Chr(124) & " Arrastre, Reefer"
    cboUnderGuarantee.AddItem "H" & Chr(124) & " Storage, Weighing"
    cboUnderGuarantee.AddItem "I" & Chr(124) & " Storage, Reefer"
    cboUnderGuarantee.AddItem "J" & Chr(124) & " Weighing, Reefer"
    cboUnderGuarantee.AddItem "K" & Chr(124) & " Arrastre, Storage, Weighing"
    cboUnderGuarantee.AddItem "L" & Chr(124) & " Arrastre, Storage, Reefer"
    cboUnderGuarantee.AddItem "M" & Chr(124) & " Storage, Weighing, Reefer"
    cboUnderGuarantee.AddItem "N" & Chr(124) & " All"
End Sub

Private Sub PopulateDangerClass()
    cboDangClass.AddItem " " & Chr(124) & " Not Applicable"
    cboDangClass.AddItem "1" & Chr(124) & " Explosives DC1"
    cboDangClass.AddItem "2" & Chr(124) & " Gases DC2"
    cboDangClass.AddItem "3" & Chr(124) & " Inflammable Liquid DC2"
    cboDangClass.AddItem "4" & Chr(124) & " Inflammable Solids DC2 "
    cboDangClass.AddItem "5" & Chr(124) & " Oxidizing Agents/Organic Peroxides DC3"
    cboDangClass.AddItem "6" & Chr(124) & " Poisonous(toxic) and Infectious Substances DC1"
    cboDangClass.AddItem "7" & Chr(124) & " Radioactive Substances DC2"
    cboDangClass.AddItem "8" & Chr(124) & " Corrosives DC1"
    cboDangClass.AddItem "9" & Chr(124) & " Miscellaneous Dangerous Substances DC3"
End Sub

Private Sub PopulateStorageCode()
    cboStorageStat.AddItem "1" & Chr(124) & " 10 days free for discharge or loaded Containers."
'   cboStorageStat.AddItem "2" & Chr(124) & " 5 days free after date of complete stripping."
    cboStorageStat.AddItem "3" & Chr(124) & " Discounted or totally waived charges w/ approved request."
'   cboStorageStat.AddItem "4" & Chr(124) & " Free storage period extended."
'   cboStorageStat.AddItem "5" & Chr(124) & " Auction Cargo, 5 working days free from date of issuance of BOC Gatepass."
    cboStorageStat.AddItem "6" & Chr(124) & " Relay Containers."
    cboStorageStat.AddItem "7" & Chr(124) & " Foreign Transhipment."
    cboStorageStat.AddItem "8" & Chr(124) & " No Storage."
End Sub

Private Sub DisableNextTabs()
'    sstMain.TabEnabled(cTabHeader) = False
'    sstMain.TabEnabled(cTabContainer) = False
'    sstMain.TabEnabled(cTabCharges) = False
'    sstMain.TabEnabled(cTabOtherInfo) = False
'    sstMain.TabEnabled(cTabPayment) = False
End Sub

Private Sub PutContainerHeader()
    
    Dim str As String
    For intCol = Column.FixedCol To Column.tmpReeferVAT10
        msfCharges.Row = 0
        msfCharges.Col = intCol
        Select Case intCol
            Case Column.FixedCol
                msfCharges.Text = "#"
                msfCharges.ColWidth(intCol) = cCFixedWidth
            Case Column.Gatepass
                msfCharges.Text = "Gatepass #"
                msfCharges.ColWidth(intCol) = cCGatePassWidth
            Case Column.Sequence
                msfCharges.Text = "Seq."
                msfCharges.ColWidth(intCol) = cCSequenceWidth
            Case Column.ContainerID
                msfCharges.Text = "Container #"
                msfCharges.ColWidth(intCol) = cCContainerWidth
            Case Column.RevenueTon
                msfCharges.Text = "RT"
                msfCharges.ColWidth(intCol) = cCRevenueTonWidth
            Case Column.StorageTotal
                msfCharges.Text = "Storage"
                msfCharges.ColWidth(intCol) = cCAMTWidthRegular
            Case Column.StorageBasic
                msfCharges.Text = "STO Basic"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.StorageWTAX
                msfCharges.Text = "STO Wtax"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.StorageVAT
                msfCharges.Text = "STO Vat"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.ArrastreTotal
                msfCharges.Text = "Arrastre"
                msfCharges.ColWidth(intCol) = cCAMTWidthRegular
            Case Column.ArrastreBasic
                msfCharges.Text = "ARR Basic"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.ArrastreWTAX
                msfCharges.Text = "ARR Wtax"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.ArrastreVAT
                msfCharges.Text = "ARR Vat"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.WeighingTotal
                msfCharges.Text = "Weighing"
                msfCharges.ColWidth(intCol) = cCAMTWidthRegular
            Case Column.WeighingBasic
                msfCharges.Text = "WGH Basic"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.WeighingWTAX
                msfCharges.Text = "WGH Wtax"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.WeighingVAT
                msfCharges.Text = "WGH Vat"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.ReeferTotal
                msfCharges.Text = "Reefer"
                msfCharges.ColWidth(intCol) = cCAMTWidthRegular
            Case Column.ReeferBasic
                msfCharges.Text = "RFR Basic"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.ReeferWTAX
                msfCharges.Text = "RFR Wtax"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.ReeferVAT
                msfCharges.Text = "RFR Vat"
                msfCharges.ColWidth(intCol) = cCAMTWidthReduced
            Case Column.TotalAMT
                msfCharges.Text = "TOTAL"
                msfCharges.ColWidth(intCol) = cCAMTWidthRegular
            Case Column.PayOnly
                msfCharges.Text = "Pay only"
                msfCharges.ColWidth(intCol) = cPayOnly
            Case Else
                 msfCharges.ColWidth(intCol) = cCWidthNormal
        End Select
    Next intCol
End Sub

Private Sub msfCharges_KeyDown(KeyCode As Integer, Shift As Integer)
    Dim AltDown As Boolean
    Select Case KeyCode
        Case vbKeyReturn
            intResponse = MsgBox("View/Edit this particular Entry?", vbYesNo + vbInformation, "Viewing/Editting")
            If intResponse = vbYes Then
                Call UseAssignedHeader
                Call PopulateUsingChargesGridData
                Call ChangeChargesdata
                sstMain.Tab = cTabContainer
                cmbConNo.SetFocus
            End If
        Case vbKeyDelete
            intResponse = MsgBox("Are you sure you want to remove this Entry?", vbYesNo + vbExclamation, "Deletion")
            If intResponse = vbYes Then
                If msfCharges.Rows = 2 Then 'only one non-fixed row left
                    Call SpaceROWS
                    blnADDRows = False
                    mskRunning = 0
                Else
                    msfCharges.RemoveItem (msfCharges.Row)
                    msfCharges.Refresh
                    Call ChangeChargesdata
                    Call RunningTotal
                End If
                msfCharges.SetFocus
                msfCharges.Col = 1
                SendKeys "{RIGHT}{LEFT}"
            End If
        Case vbKeyF11, vbKeyF12, vbKeyF3, vbKeyF8, vbKeyF9, vbKeyF2
            Call FieldAdvance(KeyCode, sstMain, sstMain)
        Case vbKeyUp, vbKeyDown
            Call ChangeChargesdata
        Case vbKeyN
            AltDown = (Shift And vbAltMask) > 0
            If AltDown Then
                optNoExpand.SetFocus
            End If
    End Select
End Sub

Private Sub ChangeChargesdata()
    With msfCharges
        dtStartStorage = .TextMatrix(.Row, Column.StartStorageDate)
        dtStorageFree = .TextMatrix(.Row, Column.FreeStorageUntil)
        dtEndStorage = .TextMatrix(.Row, Column.EndStorageDate)
        mskDaysInYard = .TextMatrix(.Row, Column.DaysInYard)
        mskPayableDays = .TextMatrix(.Row, Column.PayableDays)
        mskTotalAMT = .TextMatrix(.Row, Column.TotalAMT)
        mskTotalVAT = .TextMatrix(.Row, Column.TotalVAT)
        mskTotalWTAX = .TextMatrix(.Row, Column.TotalWTAX)
        mskContainerTotal = .TextMatrix(.Row, Column.ContainerTotal)
        mskPayOnly = .TextMatrix(.Row, Column.PayOnly)
    End With
End Sub

Private Sub UseAssignedHeader()
    With msfCharges
        If IsNumeric(.TextMatrix(.Row, Column.VATCode)) Then
            cboVAT.ListIndex = CInt(.TextMatrix(.Row, Column.VATCode))
        Else
            cboVAT.ListIndex = 0
        End If
        
        If Asc(Left(.TextMatrix(.Row, Column.GuaranteeCode), 1)) > 64 Then
            cboUnderGuarantee.ListIndex = getUnderguaranteeIndex(Trim(.TextMatrix(.Row, Column.GuaranteeCode)))
        Else
            cboUnderGuarantee.ListIndex = 0
        End If
        
        chkWharfageExempt.Value = CInt(.TextMatrix(.Row, Column.WharfageExempt))
    End With
End Sub

Private Function getUnderguaranteeIndex(pUGCode As String) As Integer
    getUnderguaranteeIndex = Asc(pUGCode) - 64
End Function

Private Sub PopulateUsingChargesGridData()
    With msfCharges
        cmbConNo.Text = .TextMatrix(.Row, Column.ContainerID)
        txtContainer(1) = .TextMatrix(.Row, Column.ContainerSize)
        txtContainer(2) = .TextMatrix(.Row, Column.FullEmpty)
        mskOVLength = .TextMatrix(.Row, Column.OVLength)
        mskOVWidth = .TextMatrix(.Row, Column.OVWidth)
        
        mskOVHeight = .TextMatrix(.Row, Column.OVHeight)
        txtUMS = .TextMatrix(.Row, Column.OversizeUMS)
        txtDeclaredWeight = .TextMatrix(.Row, Column.DeclaredWeight)
        txtBillofLading1 = .TextMatrix(.Row, Column.BillofLading)
        txtContainer(3) = .TextMatrix(.Row, Column.RegistryNo)
        
        mskCRODate = .TextMatrix(.Row, Column.CRODate)
        mskLastDischargeDate = .TextMatrix(.Row, Column.LastDischargeDate)
        mskAdvGPDate = .TextMatrix(.Row, Column.ExtensionDate)
        txtVesselCode = .TextMatrix(.Row, Column.VesselCode)
        txtSealNo = .TextMatrix(.Row, Column.SealNumber)
        txtLocation = .TextMatrix(.Row, Column.Location)
        txtVoyageNo = .TextMatrix(.Row, Column.VoyageNo)
        txtConsigneeTIN = .TextMatrix(.Row, Column.TINConsignee)
        txtBrokerTIN = .TextMatrix(.Row, Column.TINBroker)
        txtSBMAPermit = .TextMatrix(.Row, Column.SBMAPN)
        txtCustomPermit = .TextMatrix(.Row, Column.CustomPN)
        txtOrderSupplier = .TextMatrix(.Row, Column.OrderSupplier)
        txtBoatNote = .TextMatrix(.Row, Column.BoatNote)
        txtShippingLine = .TextMatrix(.Row, Column.ShippingLine)
        txtPortofOrigin = .TextMatrix(.Row, Column.PortofOrigin)
        txtConsignee = .TextMatrix(.Row, Column.Consignee)
        
        txtBroker = .TextMatrix(.Row, Column.Broker)
        txtPDIGNo = .TextMatrix(.Row, Column.PDIGNo)
        txtCommodity = .TextMatrix(.Row, Column.Commodity)
        If IsNumeric(.TextMatrix(.Row, Column.DangerClass)) Then
            cboDangClass.ListIndex = CInt(.TextMatrix(.Row, Column.DangerClass))
        Else
            cboDangClass.ListIndex = 0
        End If
        txtConsolidationType = .TextMatrix(.Row, Column.ConsolCargoCode)
        
        mskStripDate = .TextMatrix(.Row, Column.StrippingDate)
        mskDiscount = .TextMatrix(.Row, Column.Discount)
        mskDaysFree = .TextMatrix(.Row, Column.NoDaysFree)
        mskBOCGatepassDate = .TextMatrix(.Row, Column.BOCGatePassDate)
        mskNonWorkingDays = .TextMatrix(.Row, Column.NonWorkingDaysinBetween)
        txtRelayContainer = .TextMatrix(.Row, Column.ImportOrExport)
        
        chkWeighing.Value = .TextMatrix(.Row, Column.Weighing)
        mskDiscount = .TextMatrix(.Row, Column.StorageDiscount)
        mskPayableDays = .TextMatrix(.Row, Column.BillableDays)
        cboStorageStat.ListIndex = CInt(.TextMatrix(.Row, Column.StorageStatus)) - 1
        chkCustomsGuard.Value = .TextMatrix(.Row, Column.CustomGuard)
        mskPlugIN = .TextMatrix(.Row, Column.PlugINDate)
        mskPlugOUT = .TextMatrix(.Row, Column.PlugOUTDate)
        mskTrainMountDate = .TextMatrix(.Row, Column.MountDate)
        dtStartStorage = .TextMatrix(.Row, Column.StartStorageDate)
        dtStorageFree = .TextMatrix(.Row, Column.FreeStorageUntil)
        dtEndStorage = .TextMatrix(.Row, Column.EndStorageDate)
        mskDaysInYard = .TextMatrix(.Row, Column.DaysInYard)
        mskPayableDays = .TextMatrix(.Row, Column.PayableDays)
        
        txtRemarks = .TextMatrix(.Row, Column.Remarks)
        mskTotalAMT = .TextMatrix(.Row, Column.TotalAMT)
        mskTotalVAT = .TextMatrix(.Row, Column.TotalVAT)
        mskTotalWTAX = .TextMatrix(.Row, Column.TotalWTAX)
        mskContainerTotal = .TextMatrix(.Row, Column.ContainerTotal)
        mskPayOnly = .TextMatrix(.Row, Column.PayOnly)
    End With
End Sub

Private Sub SpaceROWS()
    For intCol = Column.FixedCol To Column.PayOnly
        msfCharges.Col = intCol
        msfCharges.Text = ""
    Next intCol
End Sub

Private Sub txtBank_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Select Case Index
        Case 0, 1, 2, 3
            Call FieldAdvance(KeyCode, mskCheckNo(Index), mskCheckAmount(Index + 1))
        Case 4
            Call FieldAdvance(KeyCode, mskCheckNo(Index), mskCashAmount)
    End Select
End Sub

Private Sub txtBank_LostFocus(Index As Integer)
    txtBank(Index) = "" & txtBank(Index)
End Sub

Private Sub txtBL_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtCustomPermit, txtRegistry)
    If KeyCode = vbKeyReturn Then
        txtBillofLading1 = txtBL
        If txtBL = "" Then
            txtBL.SetFocus
        Else
            Call Retrieve_ManifestData(txtBL.Text)
        End If
    End If
End Sub

Private Sub Retrieve_ManifestData(ByVal strBillNo As String)
    Dim rstManifest As ADODB.Recordset
    Dim strManifestQuery As String
    
    Set rstManifest = New ADODB.Recordset
    
    strManifestQuery = ""
    strManifestQuery = "SELECT CargoMHead.regnum, CargoMHead.voynum," & _
                       "CargoMHead.consignee, CargoMHead.broker," & _
                       "CargoMDet.silnum,CargoMHead.carcde,CargoMHead.vslname," & _
                       "CargoMHead.ctnNameDesc FROM CargoMHead INNER JOIN " & _
                       "CargoMDet ON CargoMHead.bilnum = CargoMDet.bilnum " & _
                       "WHERE CargoMHead.bilnum='" & Trim(strBillNo) & "'"

    rstManifest.Open strManifestQuery, gcnnBilling, adOpenForwardOnly, adLockReadOnly
    
    If rstManifest.BOF Then
        MsgBox "WARNING:B.L. " & Trim(strBillNo) & " not found!", vbCritical, "Cargo Manifest"
        'MsgBox "Please inform your SUPERVISOR!", vbInformation, "Cargo Manifest"
        Exit Sub
    End If
    
    With rstManifest
        .MoveFirst
        txtRegistry.Text = Trim(.Fields("regnum"))
        txtContainer(3).Text = Trim(.Fields("regnum"))
        txtConsignee.Text = Trim(.Fields("consignee"))
        If Not IsNull(Trim(.Fields("broker"))) Then
            txtBroker.Text = Trim(.Fields("broker"))
        Else
            txtBroker.Text = ""
        End If
        txtSealNo.Text = Trim(.Fields("silnum"))
        txtVoyageNo.Text = IIf(IsNull(Trim(.Fields("voynum"))), "", Trim(.Fields("voynum")))
        txtCommodity.Text = Trim(.Fields("ctnNameDesc"))
        txtVesselCode.Text = IIf(IsNull(Trim(.Fields("vslname"))), "", Trim(.Fields("vslname")))
        txtShippingLine.Text = Trim(.Fields("carcde"))
    End With
    Set rstManifest = Nothing
    Call PopulateContainerNo(Trim(strBillNo))
    
    'PRNH
    Call RetrieveLDD
    compCode = GetCompanyCode(txtRegistry.Text)
    txtCompCode.Text = compCode
    mskGatePassNo = gzGetNextCYMGP(UCase(zCurrentUser()), txtCompCode.Text)
End Sub

Private Sub PopulateContainerNo(ByVal strBillNo As String)
    Dim rstConNo As ADODB.Recordset
    
    Set rstConNo = New ADODB.Recordset
    
    cntIndex = 0: cntCount = 0
    
    rstConNo.Open "SELECT ctnnum FROM CargoMDet WHERE bilnum ='" & strBillNo & "'", gcnnBilling, adOpenForwardOnly, adLockReadOnly
    
    cmbConNo.Clear
    If Not rstConNo.BOF Then
        rstConNo.MoveFirst
        Do
            cmbConNo.AddItem (rstConNo.Fields("ctnnum"))
            rstConNo.MoveNext
        Loop Until rstConNo.EOF
    End If
    'PRNH ----------------------------------
    cmbConNo.Text = cmbConNo.List(cntIndex)
    cntCount = cmbConNo.ListCount
    '---------------------------------------
    Set rstConNo = Nothing
End Sub

'Private Sub txtBL_LostFocus()
'    If txtBL <> "" Then
'        Call Retrieve_ManifestData(txtBL.Text)
'    Else
'        MsgBox "B.L. is required!", vbExclamation, "Cargo Manifest"
'        txtBL.SetFocus
'    End If
'End Sub

Private Sub txtBrokerno_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        If txtBrokerNO = "" Then
            txtBrokerNO.SetFocus
        End If
    End If
    Call FieldAdvance(KeyCode, mskGatePassNo, cboVAT)
    'Call FieldAdvance(KeyCode, mskGatePassNo, cboUnderGuarantee)
End Sub

Private Sub mskCashAmount_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, sstMain, mskCheckAmount(0))
End Sub

Private Sub mskCashAmount_LostFocus()
    mskCashAmount = Format(mskCashAmount, "###,###,##0.00")
    Call SumPaymentTypes
End Sub

Private Sub mskCheckAmount_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
'    Select Case Index
'        Case 0
           If Val(mskCheckAmount(Index).Text) > 0 Then
              Call FieldAdvance(KeyCode, mskCashAmount, mskCheckNo(Index))
           Else
             If Left(cboUnderGuarantee.Text, 1) <> " " Then
              Call FieldAdvance(KeyCode, mskCashAmount, txtCustomerCode)
             Else
              Call FieldAdvance(KeyCode, mskCashAmount, cmdSave)
             End If
           End If
 '       Case 1, 2, 3, 4
 '          Call FieldAdvance(KeyCode, mskCheckAmount(Index - 1), mskCheckNo(Index))
 '   End Select
End Sub

Private Sub mskCheckAmount_LostFocus(Index As Integer)
    If Not IsNumeric(mskCheckAmount(Index)) Then mskCheckAmount(Index) = 0
    mskCheckAmount(Index) = Format(mskCheckAmount(Index), "###,###,##0.00")
    Call SumPaymentTypes
End Sub


'PRNH - Orig
'Private Sub mskADRAmount_LostFocus()
'    If Not IsNumeric(mskADRAmount) Then
'            mskADRAmount = 0
'    Else
'        If CCur(mskADRAmount) > CCur(mskADRBalance) Then
'            mskADRAmount = 0
'        End If
'    End If
'    Call SumPaymentTypes
'    If CCur(mskADRAmount) = 0 Then
'        txtCustomerCode = ""
'        txtCustomerName = ""
'        mskADRBalance = 0
'        mskADRAmount.Enabled = False
'    End If
'    mskADRAmount = Format(mskADRAmount, "###,###,##0.00")
'End Sub

'PRNH - Removed ADR Validations
Private Sub mskADRAmount_LostFocus()
    If Not IsNumeric(mskADRAmount) Then
            mskADRAmount = 0
'    Else
'        If CCur(mskADRAmount) > CCur(mskADRBalance) Then
'            mskADRAmount = 0
'        End If
    End If
    Call SumPaymentTypes
'    If CCur(mskADRAmount) = 0 Then
'        txtCustomerCode = ""
'        txtCustomerName = ""
'        mskADRBalance = 0
'        mskADRAmount.Enabled = False
'    End If
    mskADRAmount = Format(mskADRAmount, "###,###,##0.00")
End Sub

Private Sub SumPaymentTypes()
    Dim intCheckCtr As Integer
    Dim curTotalCheckAMT As Currency
    If Not IsNumeric(mskCashAmount) Then mskCashAmount = 0
    For intCheckCtr = 0 To 4
        If Not IsNumeric(mskCheckAmount(intCheckCtr)) Then mskCheckAmount(intCheckCtr) = 0
        curTotalCheckAMT = curTotalCheckAMT + CCur(mskCheckAmount(intCheckCtr))
    Next intCheckCtr
    If Not IsNumeric(mskADRAmount) Then mskADRAmount = 0
    If Not IsNumeric(mskAmountToPay) Then mskAmountToPay = 0

    mskChange = CCur(mskADRAmount) + curTotalCheckAMT + CCur(mskCashAmount) - CCur(mskAmountToPay)
End Sub

Private Sub mskDaysFree_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, cboStorageStat, mskOVLength)
End Sub

Private Sub mskDiscount_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, cboStorageStat, mskOVLength)
End Sub

Private Sub mskGatePassNo_KeyDown(KeyCode As Integer, Shift As Integer)
    Dim lngReturnedGP As Long
    If KeyCode = vbKeyReturn Then
        lngReturnedGP = gzChkValidCYM(UCase(zCurrentUser()), Val(mskGatePassNo), txtCompCode.Text)
        If lngReturnedGP = 0 Or lngReturnedGP = -1 Or lngReturnedGP = -2 Or lngReturnedGP = -3 Then
            intResponse = MsgBox("Invalid Gatepass Number. Please retry...", vbOKOnly + vbExclamation, "")
            If intResponse = vbOKOnly Then
                With mskGatePassNo
                    .SelStart = 0
                    .SelLength = .MaxLength
                    .SetFocus
                End With
            End If
        Else
            Call FieldAdvance(KeyCode, sstMain, txtBrokerNO)
        End If
    Else
        Call FieldAdvance(KeyCode, sstMain, txtBrokerNO)
    End If
End Sub

Private Sub mskNonWorkingDays_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, mskBOCGatepassDate, mskOVLength)
End Sub

Private Sub mskOVHeight_Change()
    If Not IsNumeric(mskOVHeight) Then mskOVHeight = 0
    Call CheckDimensions
End Sub

Private Sub mskOVHeight_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, mskOVWidth, txtUMS)
End Sub

Private Sub mskOVLength_Change()
    If Not IsNumeric(mskOVLength) Then mskOVLength = 0
    Call CheckDimensions
End Sub

Private Sub mskOVLength_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, cboStorageStat, mskOVWidth)
End Sub

Private Sub mskOVWidth_Change()
    If Not IsNumeric(mskOVWidth) Then mskOVWidth = 0
    Call CheckDimensions
End Sub

Private Sub mskOVWidth_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, mskOVLength, mskOVHeight)
End Sub

Private Sub optArrastre_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyF11 Or KeyCode = vbKeyF12 Then
        Call FieldAdvance(KeyCode, sstMain, sstMain)
    End If
End Sub

Private Sub optNoExpand_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyF11 Or KeyCode = vbKeyF12 Then
        Call FieldAdvance(KeyCode, sstMain, sstMain)
    Else
        If cmdAnother.Enabled = True Then
            Call FieldAdvance(KeyCode, optNoExpand, cmdAnother)
        Else
            Call FieldAdvance(KeyCode, optNoExpand, cmdViewGrid)
        End If
    End If
End Sub

Private Sub optReefer_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyF11 Or KeyCode = vbKeyF12 Then
        Call FieldAdvance(KeyCode, sstMain, sstMain)
    End If
End Sub

Private Sub optStorage_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyF11 Or KeyCode = vbKeyF12 Then
        Call FieldAdvance(KeyCode, sstMain, sstMain)
    End If
End Sub

Private Sub optWeighing_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyF11 Or KeyCode = vbKeyF12 Then
        Call FieldAdvance(KeyCode, sstMain, sstMain)
    End If
End Sub

Private Sub sstMain_Click(PreviousTab As Integer)
    Select Case sstMain.Tab
        Case cTabBL
            With txtSBMAPermit
                .SelStart = 0
                .SelLength = .MaxLength
                .SetFocus
            End With
        Case cTabHeader
            With mskGatePassNo
                .SelStart = 0
                .SelLength = .MaxLength
                .SetFocus
            End With
        Case cTabOtherInfo
            With txtConsignee
                .SelStart = 0
                .SelLength = .MaxLength
                .SetFocus
            End With
        Case cTabContainer
            With cmbConNo
                .SelStart = 0
                .SetFocus
            End With
            If cmbConNo.Text <> "" Then Call cmbConNo_KeyDown(13, 0)
        Case cTabCharges
            If cmdAnother.Enabled = True Then
                cmdAnother.SetFocus
            Else
                optNoExpand.SetFocus
            End If
        Case cTabPayment
            With mskCashAmount
                .SelStart = 0
                .SelLength = .MaxLength
                .SetFocus
            End With
    End Select
End Sub

Private Sub sstMain_GotFocus()
    If sstMain.Tab = cTabCharges Then
        msfCharges.SetFocus
        msfCharges.Row = msfCharges.Rows - 1
        msfCharges.Col = 1
        SendKeys "{RIGHT}{LEFT}"
    End If
End Sub

Private Sub sstMain_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyDown Then
        Select Case sstMain.Tab
            Case cTabHeader
                With mskGatePassNo
                    .SelStart = 0
                    .SelLength = .MaxLength
                    .SetFocus
                End With
            Case cTabOtherInfo
                With txtConsignee
                    .SelStart = 0
                    .SelLength = .MaxLength
                    .SetFocus
                End With
            Case cTabContainer
                With cmbConNo
                    .SelStart = 0
                    .SetFocus
                End With
            Case cTabCharges
                optNoExpand.SetFocus
            Case cTabPayment
                With mskCashAmount
                    .SelStart = 0
                    .SelLength = .MaxLength
                    .SetFocus
                End With
        End Select
    ElseIf (KeyCode = vbKeyF11) Or (KeyCode = vbKeyF12) _
        Or (KeyCode = vbKeyF8) Or (KeyCode = vbKeyF9) Or (KeyCode = vbKeyF4) Then
        Call FieldAdvance(KeyCode, sstMain, sstMain)
    End If
End Sub

Private Sub txtBoatNote_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtPDIGNo, txtDeclaredWeight)
End Sub

Private Sub txtBroker_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtConsignee, txtBrokerTIN)
End Sub

Private Sub txtBrokerTIN_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtBroker, txtCommodity)
End Sub

Private Sub txtCommodity_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtBroker, txtBoatNote)
End Sub

Private Sub txtConsignee_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, sstMain, txtConsigneeTIN)
End Sub

Private Sub txtConsigneeTIN_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtConsignee, txtBroker)
End Sub

Private Sub txtConsolidationType_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        If txtConsolidationType = "3" And txtRemarks = "" Then
            lblManifest(61).Caption = "CM Number:"
            Call FieldAdvance(KeyCode, txtRemarks, txtRemarks)
        Else
            If txtConsolidationType = "3" Then
                lblManifest(61).Caption = "CM Number:"
            Else
                lblManifest(61).Caption = "Remarks:"
            End If
            Call FieldAdvance(KeyCode, chkCustomsGuard, cmdNextOtherInfo)
        End If
    Else
        Call FieldAdvance(KeyCode, chkCustomsGuard, cmdNextOtherInfo)
    End If
End Sub

Private Sub txtContainer_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Select Case Index
        Case 1
            If KeyCode = vbKeyReturn Then
                If txtContainer(1) = "20" Or txtContainer(1) = "40" Or txtContainer(1) = "45" Then
                   Call FieldAdvance(KeyCode, txtContainer(Index - 1), txtContainer(Index + 1))
                Else
                    MsgBox "Please Enter size 20,40 or 45 only!!!"
                    txtContainer(1).SetFocus
                End If
            End If
            'Call FieldAdvance(KeyCode, txtContainer(Index - 1), txtContainer(Index + 1))
        Case 2
            If KeyCode = vbKeyReturn Then
                If txtContainer(2) = "F" Or txtContainer(2) = "E" Then
                    'ignore
                    Call FieldAdvance(KeyCode, txtContainer(Index - 1), mskLastDischargeDate)
                Else
                    txtContainer(2).SetFocus
                End If
            Else
                Call FieldAdvance(KeyCode, txtContainer(Index - 1), mskLastDischargeDate)
            End If
    End Select
End Sub

Private Sub Evaluate_ContainerNo()
    Dim intResult As Integer
    
    Dim strGKey, strVisit As String
    Dim sbmaResult As Integer
    Dim bocResult As Integer
    
    intResult = 0
    strGKey = ""
    intResult = Chk_Manifest(Trim(txtBL.Text), Trim(cmbConNo.Text))
    sbmaResult = Chk_SBMAHold(Trim(txtBL.Text), Trim(cmbConNo.Text))
    bocResult = Chk_BOCHold(Trim(txtBL.Text), Trim(cmbConNo.Text))
    
    If intResult = -1 Then
        MsgBox "Record not found!", vbExclamation, "Cargo Manifest"
        txtContainer(1).Text = ""
        cmbConNo.SetFocus
        Exit Sub
    ElseIf intResult = 0 Then
        MsgBox "Container is already billed!", vbExclamation, "Cargo Manifest"
        cmbConNo.SetFocus
        Exit Sub
    End If
    
    'for sbma hold and boc hold
    If sbmaResult = -1 And bocResult = -1 Then
        MsgBox "Kindly check manually for supporting documents", vbInformation, "SBITC-SBMA Interface"
        cmbConNo.SetFocus
        lblHolds.Caption = "Check Manually SBMA and BOC Releases"
    ElseIf sbmaResult = -1 And bocResult = 0 Then
        MsgBox "Kindly check manually for supporting documents for SBMA", vbInformation, "SBITC-SBMA Interface"
        cmbConNo.SetFocus
        lblHolds.Caption = "BOC Release / SBMA Check Manually"
    ElseIf sbmaResult = -1 And bocResult = 1 Then
        MsgBox "Currently on Hold by BOC", vbInformation, "SBITC-SBMA Interface"
        cmbConNo.SetFocus
        lblHolds.Caption = "Hold by BOC / SBMA Check Manually"
        Exit Sub
    ElseIf sbmaResult = 0 And bocResult = 0 Then
        lblHolds.Caption = "BOC Release / SBMA Release"
    ElseIf sbmaResult = 0 And bocResult = 1 Then
        MsgBox "Currently on Hold by BOC", vbInformation, "SBITC-SBMA Interface"
        cmbConNo.SetFocus
        lblHolds.Caption = "SBMA Release / Hold by BOC"
        Exit Sub
    ElseIf sbmaResult = 0 And bocResult = -1 Then
        MsgBox "Kindly check manually for supporting documents for SBMA", vbInformation, "SBITC-SBMA Interface"
        cmbConNo.SetFocus
        lblHolds.Caption = "SBMA Release / BOC Check Manually"
    ElseIf sbmaResult = 1 And bocResult = 0 Then
        MsgBox "Currently on Hold by SBMA", vbInformation, "SBITC-SBMA Interface"
        cmbConNo.SetFocus
        lblHolds.Caption = "BOC Release / Hold by SBMA"
        Exit Sub
    ElseIf sbmaResult = 1 And bocResult = 1 Then
        MsgBox "Currently on Hold by SBMA and BOC", vbInformation, "SBITC-SBMA Interface"
        cmbConNo.SetFocus
        lblHolds.Caption = "Hold by BOC / Hold by SBMA"
        Exit Sub
    ElseIf sbmaResult = 1 And bocResult = -1 Then
        MsgBox "Currently on Hold by SBMA ", vbInformation, "SBITC-SBMA Interface"
        cmbConNo.SetFocus
        lblHolds.Caption = "Hold by SBMA / BOC Check Manually"
        Exit Sub
    End If
    
    
    Call Get_ContainerSize
    txtContainer(2).Text = "F"
    
    'PRNH
'    ConnectToNavis
'    'GET Last Discharge
'    'GetGKey("APHU6623529", "QUEUED", "STORAGE")
'
'    strVisit = Sparcs_VisitID(txtRegistry.Text, "IMPRT")
'
'    strGKey = GetGKey(Trim(cmbConNo.Text), "QUEUED", "STORAGE", "IMPRT", strVisit)
'    'SHARON  strGKey = GetGKey(Trim(cmbConNo.Text), "INVOICED", "STORAGE", "IMPRT", strVisit)
'    If strGKey <> "" Then
'        'Call Sparcs_LastDisch("APHU6623529", "STORAGE", "", strGKey)
'
'        'Old - PRNH--------------------------------------------------------
'        'Call Sparcs_LastDisch(Trim(cmbConNo.Text), "STORAGE", "", strGKey)
'        'mskLastDischargeDate.Text = Format(dStorage, "yyyy-mm-dd")
'
'        'Get LDD via direct query
'        dStorage = getLDD(txtRegistry.Text)
'        mskLastDischargeDate.Text = Format(dStorage, "yyyy-mm-dd")
'        '------------------------------------------------------------------
'
'        If mskLastDischargeDate.Text = "1899-12-30" Then
'            MsgBox "Container has no last discharge date in N4.", vbOKOnly, "CY Import Billing - Manifest Containers"
'        End If
'    Else
'        MsgBox "Container has no last discharge date in N4.", vbOKOnly, "CY Import Billing - Manifest Containers"
'    End If
'
'
'    strDate = Format(DateAdd("d", 7, CDate(dStorage)), "yyyy-mm-dd") 'CRODate = Last Discharge + 7 days by default
'    mskCRODate.Text = strDate
    
'    'GET Reefer
'    strGKey = ""
'    'strGKey = GetGKey("YMLU5305095", "QUEUED", "REEFER")
'    strGKey = GetGKey(Trim(cmbConNo.Text), "QUEUED", "REEFER", "IMPRT", strVisit)
'    If strGKey <> "" Then
        'Call Sparcs_LastDisch(Trim(cmbConNo.Text), "REEFER", "", strGKey)
        Sparcs_Reefer (Trim(cmbConNo.Text))
       
        If dReefer <> "1899-12-30 00:00:00" Then
            Me.mskPlugIN.Text = Format(dReefer, "yyyy-mm-dd hh:mm:ss")
        Else
            mskPlugIN.Text = cDateTimeFormat
            'Me.mskPlugIN.= ""
'        Else
'                        MsgBox "Container has not been plugged-in.", vbOKOnly, "CY Import Billing - Manifest Containers"
        End If
'    End If
    
    'Call Sparcs_LastDisch("YMLU5305095", "REEFER", "", strGKey)

    'Get DGCode
    Call Sparcs_DGCode(Trim(cmbConNo.Text), "IMPRT")
    
    'GetOG
    Call Sparcs_OOG(Trim(cmbConNo.Text), "IMPRT")
    'added by Navis Project Team 10/28/2009
    If txtContainer(1).Text <> "" Then
        If CInt(Me.mskOVHeight.Text) > 0 Or CInt(Me.mskOVLength.Text) > 0 Or CInt(Me.mskOVWidth.Text) > 0 Then
            If txtContainer(1).Text = "40" Then
                If CInt(Me.mskOVLength.Text) > 0 Then
                    Me.mskOVLength.Text = CInt(Me.mskOVLength.Text) / 2.54
                End If
                Me.mskOVLength.Text = Round((CDbl(Me.mskOVLength.Text) + 480), 2)
            ElseIf txtContainer(1).Text = "20" Then
                If CInt(Me.mskOVLength.Text) > 0 Then
                    Me.mskOVLength.Text = CInt(Me.mskOVLength.Text) / 2.54
                End If
                Me.mskOVLength.Text = Round((CDbl(Me.mskOVLength.Text) + 240), 2)
            End If
            If CInt(Me.mskOVHeight.Text) > 0 Then
                Me.mskOVHeight.Text = CInt(Me.mskOVHeight.Text) / 2.54
            End If
            Me.mskOVHeight.Text = Round((CDbl(Me.mskOVHeight.Text) + 102), 2)
            
            If CInt(Me.mskOVWidth.Text) > 0 Then
                Me.mskOVWidth.Text = CInt(Me.mskOVWidth.Text) / 2.54
            End If
            Me.mskOVWidth.Text = Round((CDbl(Me.mskOVWidth.Text) + 96), 2)
        End If
    End If
    Me.txtContainer(2).SetFocus
End Sub

'PRNH - Retrieve LDD

Private Sub RetrieveLDD()

    Dim strGKey As String, strVisit As String, strDate As String
    ConnectToNavis
    'GET Last Discharge
    'GetGKey("APHU6623529", "QUEUED", "STORAGE")

    'strVisit = Sparcs_VisitID(txtRegistry.Text, "IMPRT")

    'strGKey = GetGKey(Trim(cmbConNo.Text), "QUEUED", "STORAGE", "IMPRT", strVisit)
    
    'SHARON  strGKey = GetGKey(Trim(cmbConNo.Text), "INVOICED", "STORAGE", "IMPRT", strVisit)
    'If strGKey <> "" Then
        'Call Sparcs_LastDisch("APHU6623529", "STORAGE", "", strGKey)

        'Old - PRNH--------------------------------------------------------
        'Call Sparcs_LastDisch(Trim(cmbConNo.Text), "STORAGE", "", strGKey)
        'mskLastDischargeDate.Text = Format(dStorage, "yyyy-mm-dd")

        'Get LDD via direct query
        dStorage = getLDD(txtRegistry.Text)
        mskLastDischargeDate.Text = Format(dStorage, "yyyy-mm-dd")
        '------------------------------------------------------------------

        If mskLastDischargeDate.Text = "1899-12-30" Then
            MsgBox "Container has no last discharge date in N4.", vbOKOnly, "CY Import Billing - Manifest Containers"
        End If
    'Else
    '    MsgBox "Registry Number has no last discharge date in N4.", vbOKOnly, "CY Import Billing - Manifest Containers"
    'End If

    
    strDate = Format(DateAdd("d", 7, CDate(dStorage)), "yyyy-mm-dd") 'CRODate = Last Discharge + 7 days by default
    mskCRODate.Text = strDate
End Sub

Private Sub txtCustomer_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, mskGatePassNo, txtBrokerNO)
End Sub

Private Sub txtCustomerCode_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        mskADRBalance = lzGetADRBal(txtCustomerCode)
        txtCustomerName = Left(lzGetCustomerName(txtCustomerCode), 40)
        mskADRAmount = mskADRBalance
        If CCur(mskADRAmount) > CCur(mskAmountToPay) Then
             'let teller key in the adr amount
             mskADRAmount = 0
        Else
             'let teller key in the adr amount
             mskADRAmount = 0
        End If
        Call SumPaymentTypes
        If txtCustomerName <> "" Then
            mskADRAmount.Enabled = True
            Call FieldAdvance(KeyCode, txtCustomerCode, cmdSave)   'mskADRAmount)
        End If
    Else
        Call FieldAdvance(KeyCode, mskCheckAmount(4), cmdSave)
    End If
End Sub

Private Sub txtCustomPermit_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtSBMAPermit, txtTransactionType)
End Sub

Private Sub txtDeclaredWeight_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        If txtDeclaredWeight = "" Then
            txtDeclaredWeight.SetFocus
        End If
    End If
    Call FieldAdvance(KeyCode, txtBoatNote, txtVesselCode)
End Sub

Private Sub txtEntryType_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtOrderSupplier, txtSealNo)
End Sub

Private Sub txtLocation_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtPortofOrigin, txtVoyageNo)
End Sub

Private Sub txtOrderSupplier_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtShippingLine, txtEntryType)
End Sub

Private Sub txtPDIGNo_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtCommodity, txtBoatNote)
End Sub

Private Sub txtPortofOrigin_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtSealNo, txtLocation)
End Sub

Private Sub txtRegistry_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        txtContainer(3) = txtRegistry
        If txtRegistry = "" Then
            txtRegistry.SetFocus
        End If
    End If
    Call FieldAdvance(KeyCode, txtBL, txtSBMAPermit)
End Sub

Private Sub txtRelayContainer_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, cboStorageStat, mskOVLength)
End Sub

Private Sub txtRemarks_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtVesselCode, txtShippingLine)
End Sub

Private Sub txtSBMAPermit_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, sstMain, txtCustomPermit)
    If KeyCode = vbKeyReturn Then
        If txtSBMAPermit = "" Then
            txtSBMAPermit.SetFocus
        End If
    End If
End Sub

Private Sub txtSealNo_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtEntryType, txtPortofOrigin)
End Sub

Private Sub txtShippingLine_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtRemarks, txtOrderSupplier)
End Sub

Private Sub txtTransactionType_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtCustomPermit, txtBL)
    If KeyCode = vbKeyReturn Then
        If txtTransactionType = "F" Or txtTransactionType = "D" Then
            'ignore
        Else
            txtTransactionType.SetFocus
        End If
    End If
End Sub

Private Sub txtUMS_Change()
    If txtUMS <> Space(1) Then
        txtUMS = UCase(txtUMS)
        Call CheckDimensions
    End If
End Sub

Private Sub CheckDimensions()
    If IsNumeric(mskOVLength) And IsNumeric(mskOVHeight) And IsNumeric(mskOVWidth) Then
        mskRevenueTon = ComputeRevenueTon(mskOVLength, mskOVWidth, mskOVHeight, txtUMS, txtContainer(1))
    Else
        mskRevenueTon = 0
    End If
End Sub

Private Sub optArrastre_Click()
    Call ResizeColumns
End Sub

Private Sub optNoExpand_Click()
    Call ResizeColumns
End Sub

Private Sub optReefer_Click()
    Call ResizeColumns
End Sub

Private Sub optStorage_Click()
    Call ResizeColumns
End Sub

Private Sub ResizeColumns()
If optStorage.Value = True Then
    msfCharges.ColWidth(Column.StorageTotal) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.StorageBasic) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.StorageWTAX) = cCAMTWidthRegular
    'msfCharges.ColWidth(Column.StorageVAT) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.StorageVAT) = 0
Else
    msfCharges.ColWidth(Column.StorageTotal) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.StorageBasic) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.StorageWTAX) = cCAMTWidthReduced
    'msfCharges.ColWidth(Column.StorageVAT) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.StorageVAT) = 0
End If

If optArrastre.Value = True Then
    msfCharges.ColWidth(Column.ArrastreTotal) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.ArrastreBasic) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.ArrastreWTAX) = cCAMTWidthRegular
    'msfCharges.ColWidth(Column.ArrastreVAT) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.ArrastreVAT) = 0
Else
    msfCharges.ColWidth(Column.ArrastreTotal) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.ArrastreBasic) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.ArrastreWTAX) = cCAMTWidthReduced
    'msfCharges.ColWidth(Column.ArrastreVAT) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.ArrastreVAT) = 0
End If

'If optWeighing.Value = True Then
'    msfCharges.ColWidth(Column.WeighingTotal) = cCAMTWidthReduced
'    msfCharges.ColWidth(Column.WeighingBasic) = cCAMTWidthRegular
'    msfCharges.ColWidth(Column.WeighingWTAX) = cCAMTWidthRegular
'    msfCharges.ColWidth(Column.WeighingVAT) = cCAMTWidthRegular
'Else
'    msfCharges.ColWidth(Column.WeighingTotal) = cCAMTWidthRegular
'    msfCharges.ColWidth(Column.WeighingBasic) = cCAMTWidthReduced
'    msfCharges.ColWidth(Column.WeighingWTAX) = cCAMTWidthReduced
'    msfCharges.ColWidth(Column.WeighingVAT) = cCAMTWidthReduced
'End If

If optReefer.Value = True Then
    msfCharges.ColWidth(Column.ReeferTotal) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.ReeferBasic) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.ReeferWTAX) = cCAMTWidthRegular
    'msfCharges.ColWidth(Column.ReeferVAT) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.ReeferVAT) = 0
Else
    msfCharges.ColWidth(Column.ReeferTotal) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.ReeferBasic) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.ReeferWTAX) = cCAMTWidthReduced
    'msfCharges.ColWidth(Column.ReeferVAT) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.ReeferVAT) = 0
End If

If optNoExpand.Value = True Then
    msfCharges.ColWidth(Column.StorageTotal) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.StorageBasic) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.StorageWTAX) = cCAMTWidthReduced
    'msfCharges.ColWidth(Column.StorageVAT) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.StorageVAT) = 0
    
    msfCharges.ColWidth(Column.ArrastreTotal) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.ArrastreBasic) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.ArrastreWTAX) = cCAMTWidthReduced
    'msfCharges.ColWidth(Column.ArrastreVAT) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.ArrastreVAT) = 0
    
' Hiding Weighing column
'    msfCharges.ColWidth(Column.WeighingTotal) = cCAMTWidthRegular
'    msfCharges.ColWidth(Column.WeighingBasic) = cCAMTWidthReduced
'    msfCharges.ColWidth(Column.WeighingWTAX) = cCAMTWidthReduced
'    msfCharges.ColWidth(Column.WeighingVAT) = cCAMTWidthReduced
    
    msfCharges.ColWidth(Column.ReeferTotal) = cCAMTWidthRegular
    msfCharges.ColWidth(Column.ReeferBasic) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.ReeferWTAX) = cCAMTWidthReduced
    'msfCharges.ColWidth(Column.ReeferVAT) = cCAMTWidthReduced
    msfCharges.ColWidth(Column.ReeferVAT) = 0
End If
End Sub

Private Sub optWeighing_Click()
    Call ResizeColumns
End Sub

Private Sub cmdCompute_Click()
    blnOKToCompute = ValidateRequiredFields
    If blnOKToCompute Then
         intCheckIfAlreadyExist = CheckIfTranExist(Trim(cmbConNo.Text))
         If intCheckIfAlreadyExist > 0 Then
             intResponse = MsgBox("Transaction already exist in Grid. Continue Update?", vbYesNo + vbExclamation, "")
             If intResponse = vbNo Then
                Exit Sub
             Else
                blnFirstTime = False
             End If
         End If
         
         Call InitializeVariables
        
         If blnFirstTime = False Then
             Call CheckIfHeadersChanged
         Else
             blnFirstTime = False
         End If
         Call ComputeArrastre
         Call ComputeReefer
         If Left(cboStorageStat.Text, 1) <> "8" Then
            Call ComputeStorage
         End If
         Call ComputeWeighing
         
         Call StoreBasicChargesToTemp
         
        'Call ComputeWharfage
         Call ComputeVAT
         Call GetTotal
         Call CheckUnderGuarantee
         Call PopulateChargesGrid
         
         If msfCharges.Rows = 2 Then
             Call StoreHeaderFields 'initially.
         End If
         Call RunningTotal
         sstMain.Tab = cTabCharges
         sstMain.TabEnabled(cTabCharges) = True
         blnInChargesColumn = True
         
         Call InitializeSomeComputationVariables
         With msfCharges
            msfCharges.SetFocus
            msfCharges.Col = 1
            SendKeys "{RIGHT}{LEFT}"
         End With
    End If
End Sub

Private Function ValidateRequiredFields() As Boolean
     ValidateRequiredFields = True
    'for consolidation type
    If chkWharfageExempt.Value = 1 Then
        If txtConsolidationType <> "1" And txtConsolidationType <> "2" Then
            intResponse = MsgBox("Invalid Consolidation type ", vbOKOnly + vbExclamation, "")
            ValidateRequiredFields = False
        End If
    End If
    
    'for reefer
    If IsDate(mskPlugIN) Then
        If IsDate(mskPlugOUT) Then
            If mskPlugIN <> cNullDate And (mskPlugOUT <= mskPlugIN Or mskPlugOUT < Format(gzGetSysDate, "yyyy-mm-dd hh:mm:ss")) Then
                intResponse = MsgBox("Invalid PlugOut date ", vbOKOnly + vbExclamation, "")
                ValidateRequiredFields = False
            End If
        Else
            intResponse = MsgBox("A PlugOut date should be keyed in ", vbOKOnly + vbExclamation, "")
            ValidateRequiredFields = False
        End If
    Else
        mskPlugOUT = cDateTimeFormat
    End If

    'for storage
    Select Case Left(cboStorageStat, 1)
        Case "2"
            If IsDate(mskStripDate) Then
                If mskStripDate = cNullDate Then
                    intResponse = MsgBox("A Stripping date should be keyed in ", vbOKOnly + vbExclamation, "")
                    ValidateRequiredFields = False
                End If
            Else
                intResponse = MsgBox("A Stripping date should be keyed in ", vbOKOnly + vbExclamation, "")
                ValidateRequiredFields = False
            End If
        Case "3"
            If IsNull(mskDiscount) Then
                intResponse = MsgBox("Discount should not be null ", vbOKOnly + vbExclamation, "")
                ValidateRequiredFields = False
            End If
        Case "4"
            If IsNull(mskDaysFree) Then
                intResponse = MsgBox("Key in the number of days free", vbOKOnly + vbExclamation, "")
                ValidateRequiredFields = False
            End If
        Case "5"
            If IsDate(mskBOCGatepassDate) Then
                If mskBOCGatepassDate = cNullDate Then
                    intResponse = MsgBox("BOC Gatepass date should be keyed in", vbOKOnly + vbExclamation, "")
                    ValidateRequiredFields = False
                End If
            Else
                intResponse = MsgBox("BOC Gatepass date should be keyed in", vbOKOnly + vbExclamation, "")
                ValidateRequiredFields = False
            End If

            If IsNull(mskNonWorkingDays) Then
                intResponse = MsgBox("Key in Non-working days in between", vbOKOnly + vbExclamation, "")
                ValidateRequiredFields = False
            End If
        Case "6"
            If Trim(txtRelayContainer) <> "I" And Trim(txtRelayContainer) <> "E" Then
                intResponse = MsgBox("Specify if its for Import or Export", vbOKOnly + vbExclamation, "")
                ValidateRequiredFields = False
            End If
    End Select
    '
    '
    If IsDate(mskCRODate) Then
        If mskCRODate = cNullDate Or mskCRODate < Format(gzGetSysDate, "yyyy-mm-dd") Then
            intResponse = MsgBox("Invalid CRO Date ", vbOKOnly + vbExclamation, "")
            Me.mskCRODate.SetFocus
            Me.mskCRODate.SelStart = 0
            Me.mskCRODate.SelLength = Len(mskCRODate.Text)
            ValidateRequiredFields = False
        End If
    Else
        intResponse = MsgBox("CRO Date should be keyed in", vbOKOnly + vbExclamation, "")
        Me.mskCRODate.SetFocus
        Me.mskCRODate.SelStart = 0
        Me.mskCRODate.SelLength = Len(mskCRODate.Text)
        ValidateRequiredFields = False
    End If
    '
    '
    If IsDate(mskAdvGPDate) Then
        If mskAdvGPDate = cNullDate Or mskAdvGPDate < Format(gzGetSysDate, "yyyy-mm-dd") Then
            intResponse = MsgBox("Invalid Advance Gatepass Date ", vbOKOnly + vbExclamation, "")
            ValidateRequiredFields = False
        End If
    Else
        intResponse = MsgBox("Advance Gatepass date should be keyed in", vbOKOnly + vbExclamation, "")
        ValidateRequiredFields = False
    End If
    
    If Not IsDate(mskLastDischargeDate) Then
        intResponse = MsgBox("Invalid Last Discharge Date.", vbOKOnly + vbExclamation, "")
        ValidateRequiredFields = False
    End If
    
    
    If Trim(txtBrokerNO) = "" Then
        intResponse = MsgBox("Broker Number required.", vbOKOnly + vbExclamation, "")
        ValidateRequiredFields = False
        sstMain.Tab = cTabHeader
    Else
        If ValidateRequiredFields = False Then
            sstMain.Tab = cTabContainer
            mskCRODate.SetFocus
        End If
    End If
End Function

Private Function CheckIfTranExist(pContainerID As String) As Integer
    Dim blnContainerFound As Boolean
    For intRow = 1 To (msfCharges.Rows - 1)
        msfCharges.Row = intRow
        msfCharges.Col = Column.ContainerID
        blnContainerFound = Trim(msfCharges.Text) = Trim(pContainerID)
        
        If blnContainerFound Then
            CheckIfTranExist = intRow
            Exit For
        Else
            CheckIfTranExist = 0
        End If
    Next intRow
End Function

Private Sub CheckIfHeadersChanged()
    blnCustomerChanged = Trim(txtCustomer) <> Trim(Header.Customer)
    blnBrokerNoChanged = Trim(txtBrokerNO) <> Trim(Header.BrokerNo)
    
    blnVATCodeChanged = Left(cboVAT.Text, 1) <> Left(msfCharges.TextMatrix(msfCharges.Row, Column.VATCode), 1)
    blnUGCodeChanged = Left(cboUnderGuarantee.Text, 1) <> Left(msfCharges.TextMatrix(msfCharges.Row, Column.GuaranteeCode), 1)
    
    blnHeaderChanged = blnCustomerChanged Or blnBrokerNoChanged Or blnVATCodeChanged Or _
                       blnUGCodeChanged

    If blnHeaderChanged Then
        intResponse = MsgBox("Previous details will be affected. Are you sure you want to continue?", vbYesNo + vbExclamation, "")
        If intResponse = vbYes Then
            Call ChangeGridInfo(Trim(msfCharges.TextMatrix(msfCharges.Row, Column.EntryNo)))
            Call StoreHeaderFields
        Else
            txtCustomer = Header.Customer
            If Header.BrokerNo = 0 Then
                txtBrokerNO = Space(7)
            Else
                txtBrokerNO = Header.BrokerNo
            End If
            cboVAT.Text = cboVAT.List(Val(msfCharges.TextMatrix(msfCharges.Row, Column.VATCode)))
            Select Case Left(msfCharges.TextMatrix(msfCharges.Row, Column.GuaranteeCode), 1)
                Case " "
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(0)
                Case "A"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(1)
                Case "B"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(2)
                Case "C"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(3)
                Case "D"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(4)
                Case "E"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(5)
                Case "F"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(6)
                Case "G"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(7)
                Case "H"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(8)
                Case "I"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(9)
                Case "J"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(10)
                Case "K"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(11)
                Case "L"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(12)
                Case "M"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(13)
                Case "N"
                    cboUnderGuarantee.Text = cboUnderGuarantee.List(14)
            End Select
            chkWharfageOnly.Value = Header.WharfageOnly
            chkWharfageExempt.Value = Val(msfCharges.TextMatrix(msfCharges.Row, Column.WharfageExempt))
        End If
    End If
End Sub

Private Sub ChangeGridInfo(pEntryNo As String)
    For intRow = 1 To (msfCharges.Rows - 1)
        msfCharges.Row = intRow
        If Trim(msfCharges.TextMatrix(msfCharges.Row, Column.EntryNo)) = Trim(pEntryNo) Then
            If blnVATCodeChanged Then
                Call RecomputeVATandWTAX
            End If
        End If
    Next intRow

    If blnVATCodeChanged Then
        For intRow = 1 To (msfCharges.Rows - 1)
            msfCharges.Row = intRow
            If Trim(msfCharges.TextMatrix(msfCharges.Row, Column.EntryNo)) = Trim(pEntryNo) Then
                Call RecomputeBasicTotals(Column.ArrastreBasic, Column.ArrastreWTAX, Column.ArrastreVAT, Column.ArrastreTotal)
                Call RecomputeBasicTotals(Column.StorageBasic, Column.StorageWTAX, Column.StorageVAT, Column.StorageTotal)
                Call RecomputeBasicTotals(Column.WeighingBasic, Column.WeighingWTAX, Column.WeighingVAT, Column.WeighingTotal)
                Call RecomputeBasicTotals(Column.ReeferBasic, Column.ReeferWTAX, Column.ReeferVAT, Column.ReeferTotal)
            End If
        Next intRow

        For intRow = 1 To (msfCharges.Rows - 1)
            msfCharges.Row = intRow
            If Trim(msfCharges.TextMatrix(msfCharges.Row, Column.EntryNo)) = Trim(pEntryNo) Then
                Call RecomputeTotalAMT(Column.ArrastreTotal, Column.StorageTotal, Column.ReeferTotal, Column.WeighingTotal, Column.TotalAMT)
                'for payonly
                Call RecomputeTotalAMT(Column.ArrastreTotal, Column.StorageTotal, Column.ReeferTotal, Column.WeighingTotal, Column.PayOnly)
            End If
        Next intRow
    End If

    If blnUGCodeChanged Then
        For intRow = 1 To (msfCharges.Rows - 1)
            msfCharges.Row = intRow
            If Trim(msfCharges.TextMatrix(msfCharges.Row, Column.EntryNo)) = Trim(pEntryNo) Then
                Call RecomputeUGTotal(Column.ArrastreTotal, Column.StorageTotal, Column.ReeferTotal, Column.WeighingTotal, Column.PayOnly)
            End If
        Next intRow
    End If

    If blnVATCodeChanged Or blnUGCodeChanged Then
        Call RunningTotal
    End If
    
    'change header in grid
    For intRow = 1 To (msfCharges.Rows - 1)
        msfCharges.Row = intRow
        If Trim(msfCharges.TextMatrix(msfCharges.Row, Column.EntryNo)) = Trim(pEntryNo) Then
            msfCharges.TextMatrix(msfCharges.Row, Column.GuaranteeCode) = Left(cboUnderGuarantee, 1)
            msfCharges.TextMatrix(msfCharges.Row, Column.VATCode) = Left(cboVAT, 1)
            msfCharges.TextMatrix(msfCharges.Row, Column.WharfageExempt) = chkWharfageExempt.Value
        End If
    Next intRow
End Sub

Private Sub RecomputeVATandWTAX()
    Select Case Left(cboVAT.Text, 1)
        Case " "
            Call MoveToCol(Column.ArrastreVAT, 0, 1)
            Call MoveToCol(Column.StorageVAT, 0, 1)
            Call MoveToCol(Column.WeighingVAT, 0, 1)
            Call MoveToCol(Column.ReeferVAT, 0, 1)
            
            Call MoveToCol(Column.ArrastreWTAX, 0, 1)
            Call MoveToCol(Column.StorageWTAX, 0, 1)
            Call MoveToCol(Column.ReeferWTAX, 0, 1)
            Call MoveToCol(Column.WeighingWTAX, 0, 1)
        Case "1"
            Call MoveToCol(Column.ArrastreVAT, 0, 1)
            Call MoveToCol(Column.StorageVAT, 0, 1)
            Call MoveToCol(Column.WeighingVAT, 0, 1)
            Call MoveToCol(Column.ReeferVAT, 0, 1)
            
            Call MoveToCol(Column.tmpArrastreWTAX, Column.ArrastreWTAX, 0)
            Call MoveToCol(Column.tmpStorageWTAX, Column.StorageWTAX, 0)
            Call MoveToCol(Column.tmpWeighingWTAX, Column.WeighingWTAX, 0)
            Call MoveToCol(Column.tmpReeferWTAX, Column.ReeferWTAX, 0)
        
        'PRNH
         Case "2"
            Call MoveToCol(Column.ArrastreVAT, 0, 1)
            Call MoveToCol(Column.StorageVAT, 0, 1)
            Call MoveToCol(Column.WeighingVAT, 0, 1)
            Call MoveToCol(Column.ReeferVAT, 0, 1)
            
            Call MoveToCol(Column.tmpArrastreWTAX, Column.ArrastreWTAX, 0)
            Call MoveToCol(Column.tmpStorageWTAX, Column.StorageWTAX, 0)
            Call MoveToCol(Column.tmpWeighingWTAX, Column.WeighingWTAX, 0)
            Call MoveToCol(Column.tmpReeferWTAX, Column.ReeferWTAX, 0)
        
        'Case "2"
        '    Call MoveToCol(Column.tmpArrastreVAT10, Column.ArrastreVAT, 0)
        '    Call MoveToCol(Column.tmpStorageVAT10, Column.StorageVAT, 0)
        '    Call MoveToCol(Column.tmpWeighingVAT10, Column.WeighingVAT, 0)
        '    Call MoveToCol(Column.tmpReeferVAT10, Column.ReeferVAT, 0)
        '
        '    Call MoveToCol(Column.ArrastreWTAX, 0, 1)
        '    Call MoveToCol(Column.StorageWTAX, 0, 1)
        '    Call MoveToCol(Column.ReeferWTAX, 0, 1)
        '    Call MoveToCol(Column.WeighingWTAX, 0, 1)
        Case "3"
            Call MoveToCol(Column.tmpArrastreVAT10, Column.ArrastreVAT, 0)
            Call MoveToCol(Column.tmpStorageVAT10, Column.StorageVAT, 0)
            Call MoveToCol(Column.tmpWeighingVAT10, Column.WeighingVAT, 0)
            Call MoveToCol(Column.tmpReeferVAT10, Column.ReeferVAT, 0)
            
            Call MoveToCol(Column.tmpArrastreWTAX, Column.ArrastreWTAX, 0)
            Call MoveToCol(Column.tmpStorageWTAX, Column.StorageWTAX, 0)
            Call MoveToCol(Column.tmpWeighingWTAX, Column.WeighingWTAX, 0)
            Call MoveToCol(Column.tmpReeferWTAX, Column.ReeferWTAX, 0)
        Case "4"
            Call MoveToCol(Column.tmpArrastreVAT6, Column.ArrastreVAT, 0)
            Call MoveToCol(Column.tmpStorageVAT6, Column.StorageVAT, 0)
            Call MoveToCol(Column.tmpWeighingVAT6, Column.WeighingVAT, 0)
            Call MoveToCol(Column.tmpReeferVAT6, Column.ReeferVAT, 0)
        
            Call MoveToCol(Column.ArrastreWTAX, 0, 1)
            Call MoveToCol(Column.StorageWTAX, 0, 1)
            Call MoveToCol(Column.ReeferWTAX, 0, 1)
            Call MoveToCol(Column.WeighingWTAX, 0, 1)
        Case "5"
            Call MoveToCol(Column.tmpArrastreVAT6, Column.ArrastreVAT, 0)
            Call MoveToCol(Column.tmpStorageVAT6, Column.StorageVAT, 0)
            Call MoveToCol(Column.tmpWeighingVAT6, Column.WeighingVAT, 0)
            Call MoveToCol(Column.tmpReeferVAT6, Column.ReeferVAT, 0)
        
            Call MoveToCol(Column.tmpArrastreWTAX, Column.ArrastreWTAX, 0)
            Call MoveToCol(Column.tmpStorageWTAX, Column.StorageWTAX, 0)
            Call MoveToCol(Column.tmpWeighingWTAX, Column.WeighingWTAX, 0)
            Call MoveToCol(Column.tmpReeferWTAX, Column.ReeferWTAX, 0)
    End Select
End Sub
Private Sub MoveToCol(pSourceCol As Byte, pTargetCol As Byte, pExempt As Byte)
    Dim curTempAMT As Currency
    If pExempt = 1 Then
        msfCharges.TextMatrix(msfCharges.Row, pSourceCol) = 0
    Else
        msfCharges.TextMatrix(msfCharges.Row, pTargetCol) = CCur(msfCharges.TextMatrix(msfCharges.Row, pSourceCol))
    End If
End Sub

Private Sub RecomputeBasicTotals(pColBasic As Byte, pColWTAX As Byte, pColVAT As Byte, pTargetCol As Byte)
    Dim curAuxBasic As Currency
    Dim curAuxVat As Currency
    Dim curAuxWTAX As Currency
    Dim curAuxTotal As Currency
    
    msfCharges.Col = pColBasic
    curAuxBasic = CCur(msfCharges.Text)
    
    msfCharges.Col = pColWTAX
    curAuxWTAX = CCur(msfCharges.Text)
    
    msfCharges.Col = pColVAT
    curAuxVat = CCur(msfCharges.Text)
    
    curAuxTotal = curAuxBasic + curAuxVat - curAuxWTAX
    
    msfCharges.Col = pTargetCol
    msfCharges.Text = curAuxTotal
End Sub

Private Sub RecomputeTotalAMT(pColArrastre As Byte, pColStorage As Byte, pColReefer As Byte, pColWeighing As Byte, pTargetCol As Byte)
    Dim curAuxArrastre As Currency
    Dim curAuxStorage As Currency
    Dim curAuxReefer As Currency
    Dim curAuxWeighing As Currency
    Dim curAuxTotalAMT As Currency
    
    msfCharges.Col = pColArrastre
    curAuxArrastre = CCur(msfCharges.Text)
    
    msfCharges.Col = pColStorage
    curAuxStorage = CCur(msfCharges.Text)
    
    msfCharges.Col = pColReefer
    curAuxReefer = CCur(msfCharges.Text)
    
    msfCharges.Col = pColWeighing
    curAuxWeighing = CCur(msfCharges.Text)
    
    curAuxTotalAMT = curAuxArrastre + curAuxStorage + curAuxReefer + curAuxWeighing
    msfCharges.Col = pTargetCol
    
    msfCharges.Text = curAuxTotalAMT
End Sub

Private Sub RecomputeUGTotal(pColArrastre As Byte, pColStorage As Byte, pColReefer As Byte, pColWeighing As Byte, pTargetCol As Byte)
    Dim curAuxArrastre As Currency
    Dim curAuxStorage As Currency
    Dim curAuxReefer As Currency
    Dim curAuxWeighing As Currency
    Dim curAuxPayOnly As Currency
    
    msfCharges.Col = pColArrastre
    curAuxArrastre = CCur(msfCharges.Text)
    
    msfCharges.Col = pColStorage
    curAuxStorage = CCur(msfCharges.Text)
    
    msfCharges.Col = pColReefer
    curAuxReefer = CCur(msfCharges.Text)
    
    msfCharges.Col = pColWeighing
    curAuxWeighing = CCur(msfCharges.Text)
  
    
    Select Case Left(cboUnderGuarantee.Text, 1)
        Case " "
            curAuxPayOnly = curAuxArrastre + curAuxStorage + curAuxReefer + curAuxWeighing
        Case "A"
            curAuxPayOnly = curAuxStorage + curAuxReefer + curAuxWeighing
        Case "B"
            curAuxPayOnly = curAuxArrastre + curAuxReefer + curAuxWeighing
        Case "C"
            curAuxPayOnly = curAuxArrastre + curAuxStorage + curAuxReefer
        Case "D"
            curAuxPayOnly = curAuxArrastre + curAuxStorage + curAuxWeighing
        Case "E"
            curAuxPayOnly = curAuxReefer + curAuxWeighing
        Case "F"
            curAuxPayOnly = curAuxStorage + curAuxReefer
        Case "G"
            curAuxPayOnly = curAuxStorage + curAuxWeighing
        Case "H"
            curAuxPayOnly = curAuxArrastre + curAuxReefer
        Case "I"
            curAuxPayOnly = curAuxArrastre + curAuxWeighing
        Case "J"
            curAuxPayOnly = curAuxArrastre + curAuxStorage
        Case "L"
            curAuxPayOnly = curAuxWeighing
        Case "M"
            curAuxPayOnly = curAuxArrastre
        Case "N"
            curAuxPayOnly = 0
    End Select
    msfCharges.Col = pTargetCol
    msfCharges.Text = curAuxPayOnly
End Sub

Private Function SearchInRates(pRateCode As String, pContSize As String) As Currency
    SearchInRates = gzSearchCYRate(pRateCode, pContSize)
End Function

Private Function ComputeArrastreOversize(pArrastreBasic As Currency, pRevenueTon As Currency) As Currency
    Dim curRevenueTonMultiplier As Currency
    curRevenueTonMultiplier = SearchInRates("CBIMPH", "")
    If pRevenueTon > 0 Then
        ComputeArrastreOversize = pArrastreBasic + Round((pRevenueTon * curRevenueTonMultiplier), 2)
        curOverSizeAMT = Round((pRevenueTon * curRevenueTonMultiplier), 2)
    Else
        ComputeArrastreOversize = pArrastreBasic
        curOverSizeAMT = 0
    End If
End Function

Private Function ComputeDangerClass(pArrastreBasic As Currency, pDangCode As String) As Currency
    Select Case Trim(pDangCode)
        Case "1", "6", "8"
            curDangerAMT = Round((pArrastreBasic * cDangerClassRate1), 2)
        Case "2", "3", "4", "7"
            curDangerAMT = Round((pArrastreBasic * cDangerClassRate2), 2)
        Case "5", "9"
            curDangerAMT = Round((pArrastreBasic * cDangerClassRate3), 2)
        Case Else
            curDangerAMT = 0
    End Select

    Select Case Trim(pDangCode)
        Case "1", "6", "8"
            ComputeDangerClass = pArrastreBasic + Round((pArrastreBasic * cDangerClassRate1), 2)
        Case "2", "3", "4", "7"
            ComputeDangerClass = pArrastreBasic + Round((pArrastreBasic * cDangerClassRate2), 2)
        Case "5", "9"
            ComputeDangerClass = pArrastreBasic + Round((pArrastreBasic * cDangerClassRate3), 2)
        Case Else
            ComputeDangerClass = pArrastreBasic
    End Select
End Function

Private Function Compute10PercentVAT(pBasicCharge As Currency) As Currency
    Compute10PercentVAT = Round((pBasicCharge * 0.1), 2)
End Function

Private Function Compute1PercentWTAX(pBasicCharge As Currency) As Currency
    Compute1PercentWTAX = Round((pBasicCharge * 0.01), 2)
End Function

Private Function Compute2PercentWTAX(pBasicCharge As Currency) As Currency
    Compute2PercentWTAX = Round((pBasicCharge * 0.02), 2)
End Function

Private Function Compute6PercentVAT(pBasicCharge As Currency) As Currency
    Compute6PercentVAT = Round((pBasicCharge * 0.06), 2)
End Function

Private Sub InitializeVariables()
    
    curArrastreTotal = 0
    curArrastreBasic = 0
    curArrastreWtax = 0
    curArrastreVat = 0
    
    curStorageTotal = 0
    curStorageBasic = 0
    curStorageWTAX = 0
    curStorageVAT = 0

    curWeighingTotal = 0
    curWeighingBasic = 0
    curWeighingWTAX = 0
    curWeighingVAT = 0

    curReeferTotal = 0
    curReeferBasic = 0
    curReeferWTAX = 0
    curReeferVAT = 0

    curWharfage = 0
    curTotalAMT = 0
    curRevenueTonnage = 0
End Sub

Private Sub ComputeArrastre()
    If txtTransactionType = "F" Then
        Select Case txtContainer(1)
            Case "20"
                curArrastreBasic = SearchInRates("CBIMP1", Trim(txtContainer(1)))
            Case "40"
                curArrastreBasic = SearchInRates("CBIMP2", Trim(txtContainer(1)))
            Case "45"
                curArrastreBasic = SearchInRates("CBIMP3", Trim(txtContainer(1)))
        End Select
       'curArrastreBasic = SearchInRates("CBIMP1", Trim(txtContainer(1)))
    Else
        Select Case txtContainer(1)
            Case "20"
                curArrastreBasic = SearchInRates("CBDOM1", Trim(txtContainer(1)))
            Case "40"
                curArrastreBasic = SearchInRates("CBDOM2", Trim(txtContainer(1)))
            Case "45"
                curArrastreBasic = SearchInRates("CBDOM3", Trim(txtContainer(1)))
        End Select
       'curArrastreBasic = SearchInRates("CBDOM1", Trim(txtContainer(1)))
    End If
    
    If IsNumeric(mskRevenueTon) Then
        curRevenueTonnage = mskRevenueTon
        curArrastreBasic = ComputeArrastreOversize(curArrastreBasic, curRevenueTonnage)
    Else
        curRevenueTonnage = 0
        curOverSizeAMT = 0
        mskRevenueTon = curRevenueTonnage
    End If
    
    If Left(cboDangClass, 1) <> Space(1) Then
        curArrastreBasic = ComputeDangerClass(curArrastreBasic, Left(cboDangClass, 1))
    Else
        curDangerAMT = 0
    End If
End Sub

Private Function ComputeRevenueTon(pLength As Currency, pWidth As Currency, pHeight As Currency, pUMS As String, pContSize As String) As Currency
    Dim curRTonResult As Currency
    If Trim(pUMS) = "C" Then
       pLength = Round((pLength / 2.54), 2)
       pWidth = Round((pWidth / 2.54), 2)
       pHeight = Round((pHeight / 2.54), 2)
    End If
    curRTonResult = Round((pLength * pWidth * pHeight / 1728 / 40), 2)
    Select Case Trim(pContSize)
        Case "20"
            If curRTonResult < cRTon20 Then
                ComputeRevenueTon = Round(curRTonResult, 2)
            Else
                ComputeRevenueTon = Round((curRTonResult - cRTon20), 2)
            End If
        Case "40"
            If curRTonResult < cRTon40 Then
                ComputeRevenueTon = Round(curRTonResult, 2)
            Else
                ComputeRevenueTon = Round((curRTonResult - cRTon40), 2)
            End If
        Case "45"
            If curRTonResult < cRTon45 Then
                ComputeRevenueTon = Round(curRTonResult, 2)
            Else
                ComputeRevenueTon = Round((curRTonResult - cRTon45), 2)
            End If
        Case Else
            ComputeRevenueTon = 0
    End Select
End Function

Private Sub ComputeStorage()
    Dim dtmDate1 As Date
    Dim dtmDate2 As Date
    Dim dtmDate3 As Date
    Dim intSubdays As Integer
    Dim dtmFreeUntil As Date
    Dim curOHAmt As Currency
    Dim curOHRate As Currency
    
    curPHPAmount = SearchInRates("STO$RT", "")
    If Left(cboStorageStat.Text, 1) = "6" And Left(txtRelayContainer, 1) = "E" Then
       'curStorageBasic = SearchInRates("EXST", Trim(txtContainer(1)))
        Select Case txtContainer(1)
            Case "20"
                curStorageBasic = SearchInRates("STOEX1", Trim(txtContainer(1)))
            Case "40"
                curStorageBasic = SearchInRates("STOEX2", Trim(txtContainer(1)))
            Case "45"
                curStorageBasic = SearchInRates("STOEX3", Trim(txtContainer(1)))
        End Select
    ElseIf Left(cboStorageStat.Text, 1) = "7" Then
        Select Case txtContainer(1)
            Case "20"
                curStorageBasic = SearchInRates("STOFT1", Trim(txtContainer(1)))
            Case "40"
                curStorageBasic = SearchInRates("STOFT2", Trim(txtContainer(1)))
            Case "45"
                curStorageBasic = SearchInRates("STOFT3", Trim(txtContainer(1)))
        End Select
    Else
        If txtTransactionType = "F" Then
           'curStorageBasic = SearchInRates("IMST", Trim(txtContainer(1)))
            Select Case txtContainer(1)
                Case "20"
                    curStorageBasic = SearchInRates("STOIM1", Trim(txtContainer(1)))
                Case "40"
                    curStorageBasic = SearchInRates("STOIM2", Trim(txtContainer(1)))
                Case "45"
                    curStorageBasic = SearchInRates("STOIM3", Trim(txtContainer(1)))
            End Select
        Else
            'curStorageBasic = SearchInRates("IMSTD", Trim(txtContainer(1)))
            Select Case txtContainer(1)
                Case "20"
                    curStorageBasic = SearchInRates("STODO1", Trim(txtContainer(1)))
                Case "40"
                    curStorageBasic = SearchInRates("STODO2", Trim(txtContainer(1)))
                Case "45"
                    curStorageBasic = SearchInRates("STODO3", Trim(txtContainer(1)))
            End Select
        End If
        If blnReefer Then
            Select Case txtContainer(1)
                Case "20"
                    curStorageBasic = SearchInRates("STOIM4", Trim(txtContainer(1)))
                Case "40"
                    curStorageBasic = SearchInRates("STOIM5", Trim(txtContainer(1)))
                Case "45"
                    curStorageBasic = SearchInRates("STOIM6", Trim(txtContainer(1)))
            End Select
        End If
    End If
    
    'start storage date
    Select Case Left(cboStorageStat, 1)
        Case "2"
            dtmDate1 = mskStripDate
            dtStartStorage = mskStripDate
        Case "5"
            dtmDate1 = mskBOCGatepassDate
            dtStartStorage = mskBOCGatepassDate
        Case Else
            dtmDate1 = mskLastDischargeDate
            dtStartStorage = mskLastDischargeDate
    End Select
    
   'free days
    Select Case Left(cboStorageStat, 1)
        Case "1", "2", "3"
            intSubdays = 9 '(10 - 1 INCLUSIVE OF LAST DISCHARGE DAY)
        Case "4"
            intSubdays = CInt(mskDaysFree)
        Case "5"
            intSubdays = 5 + mskNonWorkingDays
        Case "6"
            If Left(txtRelayContainer, 1) = "E" Then
                intSubdays = 5
            Else
                intSubdays = 6
            End If
        Case "7"
            intSubdays = 15
        Case Else
            intSubdays = 0
    End Select
    '
    'storage end date
    
    dtmFreeUntil = DateAdd("d", intSubdays, dtStartStorage)
    dtStorageFree = dtmFreeUntil
    
    dtmServerDateTime = gzGetSysDate
    dtmDate2 = dtmServerDateTime
    dtEndStorage = dtmServerDateTime
    
    
    If mskAdvGPDate > dtmServerDateTime Then
        dtmDate2 = mskAdvGPDate
        dtEndStorage = mskAdvGPDate
    End If
    
    If (mskTrainMountDate <> cDateTimeFormat) Then
        dtmDate2 = mskTrainMountDate
        dtEndStorage = mskTrainMountDate
    End If
    
    If dtmFreeUntil > dtEndStorage Then
        dtmDate2 = dtmFreeUntil
        dtEndStorage = dtmFreeUntil
    End If
    
    mskDaysInYard = DateDiff("d", dtmDate1, dtmDate2)
    If mskDaysInYard < 0 Then mskDaysInYard = 0
    mskPayableDays = DateDiff("d", dtmFreeUntil, dtEndStorage)
    If mskPayableDays <= 0 Then
        mskPayableDays = 0
    Else
        mskPayableDays = CCur(mskPayableDays) 'sharon + 10
    End If

    If CCur(mskRevenueTon) > 0 Then
        Select Case txtContainer(1)
            Case "20"
                curOHRate = SearchInRates("STOOH1", Trim(txtContainer(1)))
            Case "40"
                curOHRate = SearchInRates("STOOH2", Trim(txtContainer(1)))
            Case "45"
                curOHRate = SearchInRates("STOOH3", Trim(txtContainer(1)))
        End Select
        'sharon 05Nov2009 curOHAmt = curOHRate * curPHPAmount
        'sharon 05Nov2009 curStorageBasic = (curStorageBasic * mskPayableDays * curPHPAmount) + curOHAmt
        curStorageBasic = (curOHRate * mskPayableDays) ' assume that cyr_rteamt in cyrate table are converted in peso
    Else
        'curStorageBasic = (curStorageBasic * mskPayableDays * curPHPAmount) + (mskRevenueTon * 7.5 * mskPayableDays)
        curStorageBasic = (curStorageBasic * mskPayableDays)  'SHARON * curPHPAmount)
    End If
    If Left(cboStorageStat, 1) = "3" Then
        curStorageBasic = curStorageBasic - (curStorageBasic * mskDiscount)
    End If
    curStorageBasic = Round(curStorageBasic, 2)
End Sub

Private Sub ComputeWeighing()
    If chkWeighing.Value = 1 Then
        curWeighingBasic = SearchInRates("MCTRUS", "")
    End If
End Sub
   
Private Sub ComputeReefer()
    Dim curPlugMin As Currency
    Dim curPlugHrs As Currency
    Dim curReeferRate As Currency
    Dim curReeferRate24h As Currency
    Dim curTmpAdd As Currency
    Dim curHoursLeft As Currency
    Dim h, m As Currency
    Dim curReeferHours As Currency
    Dim totalreefhours, totalreefmins As Integer
    Dim reefdays, reefhrs As Integer
    
    

    If IsDate(mskPlugIN) Then
        If (mskPlugIN <> cNullDate) Or (mskPlugOUT <> cNullDate) Then
            'Removed by PRNH
            'curReeferRate24h = SearchInRates("MCRFC1", "")
            Select Case txtContainer(1)
                Case "20"
                    'PRNH
                    curReeferRate24h = SearchInRates("MCRFC6", "20")
                    curReeferRate = SearchInRates("MCRFC2", "20")
                Case "40"
                    'PRNH
                    curReeferRate24h = SearchInRates("MCRFC1", "")
                    curReeferRate = SearchInRates("MCRFC3", "40")
                Case "45"
                    curReeferRate = SearchInRates("MCRFC3", "45")
            End Select
            
'sharon begin
           totalreefmins = DateDiff("n", mskPlugIN, mskPlugOUT)
           totalreefhours = DateDiff("h", mskPlugIN, mskPlugOUT)
           If (totalreefmins Mod 60) > 0 Then
            totalreefhours = totalreefhours + 1
           End If
           Dim arrObj() As String
           arrObj = Split(CStr(totalreefhours / 24), ".")
           reefdays = CInt(arrObj(0))
           'reefdays = CInt(totalreefhours / 24)
           
           reefhrs = totalreefhours Mod 24
           If (reefhrs > 6) Then
            reefdays = reefdays + 1
            reefhrs = 0
           End If
           
'           If (totalreefhours Mod 60) > 0 Then
'             reefhrs = reefhrs + 1
'             mskPlugOUT = Format(DateAdd("h", totalreefhours + 1, mskPlugIN), "yyyy-mm-dd hh:mm:ss")
'            Else
'             mskPlugOUT = Format(DateAdd("h", totalreefhours, mskPlugIN), "yyyy-mm-dd hh:mm:ss")
'           End If
            mskPlugOUT = Format(DateAdd("n", totalreefmins, mskPlugIN), "yyyy-mm-dd hh:mm:ss")
           curReeferBasic = (curReeferRate24h * reefdays) + (curReeferRate * reefhrs)
           
'sharon end
            
'            h = DateDiff("n", mskPlugIN, mskPlugOUT)
'            h = h / 60
'            m = h - Fix(h)
'            curReeferHours = Fix(h / 6) * 6
'
'            If curReeferHours < 24 Then
'                curReeferBasic = curReeferRate24h
'                curReeferHours = 24
'                mskPlugOUT = Format(DateAdd("h", curReeferHours, mskPlugIN), "yyyy-mm-dd hh:mm:ss")
'            Else
'                h = DateDiff("n", mskPlugIN, mskPlugOUT)
'                h = h / 60
'                h = h - 24
'                m = h - Fix(h)
'                curReeferHours = Fix(h / 6) * 6
'
'                m = m + ((h / 6) - Fix(h / 6))
'                If m > 0 Then curReeferHours = curReeferHours + 6
'                If curReeferHours < 6 Then curReeferHours = 6
'                curReeferBasic = curReeferRate * (curReeferHours / 6) + curReeferRate24h
'                mskPlugOUT = Format(DateAdd("h", curReeferHours + 24, mskPlugIN), "yyyy-mm-dd hh:mm:ss")
'            End If
'
            
            
            
            blnReefer = True
        Else
            blnReefer = False
        End If
        'mskReeferHours = DateDiff("h", mskPlugIN, mskPlugOUT)
        mskReeferHours = (reefdays * 24) + reefhrs
         
    Else
        blnReefer = False
    End If
End Sub
   
Private Sub StoreBasicChargesToTemp()
    curTmpArrastreBasic = curArrastreBasic
    curTmpStorageBasic = curStorageBasic
    curTmpWeighingBasic = curWeighingBasic
    curTmpReeferBasic = curReeferBasic
End Sub

Private Sub ComputeWharfage()
   If chkWharfageExempt.Value = 1 Then
        strConsCode = txtConsolidationType
        curWharfage = 0
   Else
        curWharfage = SearchInRates("IMWF", txtContainer(1))
   End If
   '
   curTmpWharfage = SearchInRates("IMWF", txtContainer(1))
   curWharfageRate = curTmpWharfage
   If chkWharfageOnly.Value = 1 Then
        curArrastreBasic = 0
        curWeighingBasic = 0
        curStorageBasic = 0
        curReeferBasic = 0
   End If
End Sub

Private Sub ComputeVAT()
    Select Case Left(cboVAT, 1)
        Case " "
            curStorageVAT = 0
            curArrastreVat = 0
            curReeferVAT = 0
            curWeighingVAT = 0
            
            curStorageWTAX = 0
            curArrastreWtax = 0
            curReeferWTAX = 0
            curWeighingWTAX = 0
        'Case "2" 'Compute 10% VAT
        '    curStorageVAT = Compute10PercentVAT(curStorageBasic)
        '    curArrastreVat = Compute10PercentVAT(curArrastreBasic)
        '    curReeferVAT = Compute10PercentVAT(curReeferBasic)
        '    curWeighingVAT = Compute10PercentVAT(curWeighingBasic)
        Case "3" 'Compute 10% VAT, 1% WTAX
            curStorageVAT = Compute10PercentVAT(curStorageBasic)
            curArrastreVat = Compute10PercentVAT(curArrastreBasic)
            curReeferVAT = Compute10PercentVAT(curReeferBasic)
            curWeighingVAT = Compute10PercentVAT(curWeighingBasic)
            
            curStorageWTAX = Compute1PercentWTAX(curStorageBasic)
            curArrastreWtax = Compute1PercentWTAX(curArrastreBasic)
            curReeferWTAX = Compute1PercentWTAX(curReeferBasic)
            curWeighingWTAX = Compute1PercentWTAX(curWeighingBasic)
        Case "4" '6% VAT
            curStorageVAT = Compute6PercentVAT(curStorageBasic)
            curArrastreVat = Compute6PercentVAT(curArrastreBasic)
            curReeferVAT = Compute6PercentVAT(curReeferBasic)
            curWeighingVAT = Compute6PercentVAT(curWeighingBasic)
            
        Case "1" '0% VAT, 1% WTAX
            curStorageVAT = 0
            curArrastreVat = 0
            curReeferVAT = 0
            curWeighingVAT = 0
            
            curStorageWTAX = Compute1PercentWTAX(curStorageBasic)
            curArrastreWtax = Compute1PercentWTAX(curArrastreBasic)
            curReeferWTAX = Compute1PercentWTAX(curReeferBasic)
            curWeighingWTAX = Compute1PercentWTAX(curWeighingBasic)
            
        'PRNH - 0% VAT, 2% WTAX
        Case "2"
            curStorageVAT = 0
            curArrastreVat = 0
            curReeferVAT = 0
            curWeighingVAT = 0
            
            curStorageWTAX = Compute2PercentWTAX(curStorageBasic)
            curArrastreWtax = Compute2PercentWTAX(curArrastreBasic)
            curReeferWTAX = Compute2PercentWTAX(curReeferBasic)
            curWeighingWTAX = Compute2PercentWTAX(curWeighingBasic)
            
        Case "5" '6% VAT, less 1% WTAX
            curStorageVAT = Compute6PercentVAT(curStorageBasic)
            curArrastreVat = Compute6PercentVAT(curArrastreBasic)
            curReeferVAT = Compute6PercentVAT(curReeferBasic)
            curWeighingVAT = Compute6PercentVAT(curWeighingBasic)
        
            curStorageWTAX = Compute1PercentWTAX(curStorageBasic)
            curArrastreWtax = Compute1PercentWTAX(curArrastreBasic)
            curReeferWTAX = Compute1PercentWTAX(curReeferBasic)
            curWeighingWTAX = Compute1PercentWTAX(curWeighingBasic)
    End Select
    Call ComputeAllTypesOfVATandWTAX
End Sub
   
Private Sub ComputeAllTypesOfVATandWTAX()
    curArrastreVAT10 = Compute10PercentVAT(curTmpArrastreBasic)
    curArrastreVAT6 = Compute6PercentVAT(curTmpArrastreBasic)
    curTmpArrastreWTAX = Compute1PercentWTAX(curTmpArrastreBasic)
    
    curStorageVAT10 = Compute10PercentVAT(curTmpStorageBasic)
    curStorageVAT6 = Compute6PercentVAT(curTmpStorageBasic)
    curTmpStorageWTAX = Compute1PercentWTAX(curTmpStorageBasic)
    
    curWeighingVAT10 = Compute10PercentVAT(curTmpWeighingBasic)
    curWeighingVAT6 = Compute6PercentVAT(curTmpWeighingBasic)
    curTmpWeighingWTAX = Compute1PercentWTAX(curTmpWeighingBasic)
    
    curReeferVAT10 = Compute10PercentVAT(curTmpReeferBasic)
    curReeferVAT6 = Compute6PercentVAT(curTmpReeferBasic)
    curTmpReeferWTAX = Compute1PercentWTAX(curTmpReeferBasic)
End Sub

Private Sub GetTotal()
    curStorageTotal = curStorageBasic + curStorageVAT - curStorageWTAX
    curArrastreTotal = curArrastreBasic + curArrastreVat - curArrastreWtax
    curWeighingTotal = curWeighingBasic + curWeighingVAT - curWeighingWTAX
    curReeferTotal = curReeferBasic + curReeferVAT - curReeferWTAX
    curTotalAMT = curStorageTotal + curArrastreTotal + curWeighingTotal + curReeferTotal + curWharfage
    
    
    mskTotalAMT = curStorageBasic + curArrastreBasic + curReeferBasic + curWeighingBasic
    mskTotalVAT = curStorageVAT + curArrastreVat + curReeferVAT + curWeighingVAT
    mskTotalWTAX = curStorageWTAX + curArrastreWtax + curReeferWTAX + curWeighingWTAX
    mskContainerTotal = CCur(mskTotalAMT) + CCur(mskTotalVAT) - CCur(mskTotalWTAX) + curWharfage
End Sub

Private Sub CheckUnderGuarantee()
    Select Case Left(cboUnderGuarantee, 1)
        Case " "
            mskPayOnly = Round(mskContainerTotal, 2)
        Case "A"
            mskPayOnly = Round((mskContainerTotal - curArrastreTotal), 2)
        Case "B"
            mskPayOnly = Round((mskContainerTotal - curStorageTotal), 2)
        Case "C"
            mskPayOnly = Round((mskContainerTotal - curWeighingTotal), 2)
        Case "D"
            mskPayOnly = Round((mskContainerTotal - curReeferTotal), 2)
        Case "E"
            mskPayOnly = Round((mskContainerTotal - (curArrastreTotal + curStorageTotal)), 2)
        Case "F"
            mskPayOnly = Round((mskContainerTotal - (curArrastreTotal + curWeighingTotal)), 2)
        Case "G"
            mskPayOnly = Round((mskContainerTotal - (curArrastreTotal + curReeferTotal)), 2)
        Case "H"
            mskPayOnly = Round((mskContainerTotal - (curStorageTotal + curWeighingTotal)), 2)
        Case "I"
            mskPayOnly = Round((mskContainerTotal - (curStorageTotal + curReeferTotal)), 2)
        Case "J"
            mskPayOnly = Round((mskContainerTotal - (curWeighingTotal + curReeferTotal)), 2)
        Case "K"
            mskPayOnly = Round((mskContainerTotal - (curArrastreTotal + curStorageTotal + curWeighingTotal)), 2)
        Case "L"
            mskPayOnly = Round((mskContainerTotal - (curArrastreTotal + curStorageTotal + curReeferTotal)), 2)
        Case "M"
            mskPayOnly = Round((mskContainerTotal - (curStorageTotal + curWeighingTotal + curReeferTotal)), 2)
        Case "N"
            mskPayOnly = Round(curWharfage, 2)
    End Select
End Sub

Private Sub PopulateChargesGrid()
    Dim strEntry As String
    Dim blnRetainExamRegistry As Boolean
    blnPopulating = True
    blnRetainExamRegistry = False
    If intCheckIfAlreadyExist = 0 Then
        msfCharges.Rows = msfCharges.Rows + 1
        msfCharges.Row = msfCharges.Rows - 1
        intRow = msfCharges.Row
    Else
        msfCharges.Row = intCheckIfAlreadyExist
        blnRetainExamRegistry = True
    End If
    With msfCharges
        .TextMatrix(.Row, Column.FixedCol) = .Row
        .TextMatrix(.Row, Column.Gatepass) = "Gatepass #"
        .TextMatrix(.Row, Column.Sequence) = "Seq."
        .TextMatrix(.Row, Column.RevenueTon) = Format(mskRevenueTon, "###,###,##0.00")
        .TextMatrix(.Row, Column.StorageTotal) = Format(curStorageTotal, "###,###,##0.00")
        
        .TextMatrix(.Row, Column.StorageBasic) = Format(curStorageBasic, "###,###,##0.00")
        .TextMatrix(.Row, Column.StorageWTAX) = Format(curStorageWTAX, "###,###,##0.00")
        .TextMatrix(.Row, Column.StorageVAT) = Format(curStorageVAT, "###,###,##0.00")
        .TextMatrix(.Row, Column.ArrastreTotal) = Format(curArrastreTotal, "###,###,##0.00")
        .TextMatrix(.Row, Column.ArrastreBasic) = Format(curArrastreBasic, "###,###,##0.00")
        
        .TextMatrix(.Row, Column.ArrastreWTAX) = Format(curArrastreWtax, "###,###,##0.00")
        .TextMatrix(.Row, Column.ArrastreVAT) = Format(curArrastreVat, "###,###,##0.00")
        .TextMatrix(.Row, Column.WeighingTotal) = Format(curWeighingTotal, "###,###,##0.00")
        .TextMatrix(.Row, Column.WeighingBasic) = Format(curWeighingBasic, "###,###,##0.00")
        .TextMatrix(.Row, Column.WeighingWTAX) = Format(curWeighingWTAX, "###,###,##0.00")
        
        .TextMatrix(.Row, Column.WeighingVAT) = Format(curWeighingVAT, "###,###,##0.00")
        .TextMatrix(.Row, Column.ReeferTotal) = Format(curReeferTotal, "###,###,##0.00")
        .TextMatrix(.Row, Column.ReeferBasic) = Format(curReeferBasic, "###,###,##0.00")
        .TextMatrix(.Row, Column.ReeferWTAX) = Format(curReeferWTAX, "###,###,##0.00")
        .TextMatrix(.Row, Column.ReeferVAT) = Format(curReeferVAT, "###,###,##0.00")
        
        .TextMatrix(.Row, Column.TotalAMT) = Format(curTotalAMT, "###,###,##0.00")
        .TextMatrix(.Row, Column.PayOnly) = mskPayOnly
        .TextMatrix(.Row, Column.Reference) = 0
        .TextMatrix(.Row, Column.GPassType) = cGPSType
        
        .TextMatrix(.Row, Column.ContainerID) = RTrim(Trim(cmbConNo.Text))
        .TextMatrix(.Row, Column.EntryType) = "" & txtEntryType
        .TextMatrix(.Row, Column.EntryNo) = ""
        .TextMatrix(.Row, Column.SBMAPN) = txtSBMAPermit
        .TextMatrix(.Row, Column.CustomPN) = txtCustomPermit
        .TextMatrix(.Row, Column.Location) = txtLocation
        .TextMatrix(.Row, Column.VoyageNo) = txtVoyageNo
        .TextMatrix(.Row, Column.TINConsignee) = txtConsigneeTIN
        .TextMatrix(.Row, Column.TINBroker) = txtBrokerTIN
        .TextMatrix(.Row, Column.ContainerSize) = Trim(txtContainer(1))
        .TextMatrix(.Row, Column.FullEmpty) = Trim(txtContainer(2))
        
        .TextMatrix(.Row, Column.OVLength) = Trim(mskOVLength)
        .TextMatrix(.Row, Column.OVWidth) = Trim(mskOVWidth)
        .TextMatrix(.Row, Column.OVHeight) = Trim(mskOVHeight)
        .TextMatrix(.Row, Column.OversizeUMS) = Trim(txtUMS)
        .TextMatrix(.Row, Column.OversizeAMT) = curOverSizeAMT
        .TextMatrix(.Row, Column.TranshipmentCode) = Space(1)
        
        .TextMatrix(.Row, Column.ConsolCargoCode) = "" & Trim(txtConsolidationType)
        .TextMatrix(.Row, Column.DeclaredWeight) = "" & Trim(txtDeclaredWeight)
        .TextMatrix(.Row, Column.BillofLading) = "" & Trim(txtBillofLading1)
        .TextMatrix(.Row, Column.RegistryNo) = txtContainer(3)
        .TextMatrix(.Row, Column.CRODate) = mskCRODate
        
        .TextMatrix(.Row, Column.LastDischargeDate) = mskLastDischargeDate
        .TextMatrix(.Row, Column.ExtensionDate) = mskAdvGPDate
        .TextMatrix(.Row, Column.VesselCode) = "" & Trim(txtVesselCode)
        .TextMatrix(.Row, Column.SealNumber) = "" & Trim(txtSealNo)
        .TextMatrix(.Row, Column.OrderSupplier) = "" & txtOrderSupplier
        
        .TextMatrix(.Row, Column.BoatNote) = "" & txtBoatNote
        .TextMatrix(.Row, Column.ShippingLine) = "" & txtShippingLine
        .TextMatrix(.Row, Column.PortofOrigin) = "" & txtPortofOrigin
        .TextMatrix(.Row, Column.Consignee) = "" & txtConsignee
        .TextMatrix(.Row, Column.Broker) = "" & txtBroker
        
        .TextMatrix(.Row, Column.PDIGNo) = "" & txtPDIGNo
        .TextMatrix(.Row, Column.Commodity) = "" & txtCommodity
        .TextMatrix(.Row, Column.DangerClass) = Left(cboDangClass.Text, 1)
        .TextMatrix(.Row, Column.DangerAMT) = curDangerAMT
        .TextMatrix(.Row, Column.Weighing) = chkWeighing.Value
        .TextMatrix(.Row, Column.StorageStatus) = Left(cboStorageStat, 1)
        
        .TextMatrix(.Row, Column.StrippingDate) = mskStripDate
        .TextMatrix(.Row, Column.Discount) = mskDiscount
        .TextMatrix(.Row, Column.NoDaysFree) = mskDaysFree
        .TextMatrix(.Row, Column.BOCGatePassDate) = mskBOCGatepassDate
        .TextMatrix(.Row, Column.NonWorkingDaysinBetween) = mskNonWorkingDays
        .TextMatrix(.Row, Column.ImportOrExport) = "" & txtRelayContainer
        
        .TextMatrix(.Row, Column.StorageDiscount) = mskDiscount
        .TextMatrix(.Row, Column.BillableDays) = mskPayableDays
        .TextMatrix(.Row, Column.FreeStorageDays) = getFreeStorageDays(CDate(dtStartStorage), CDate(dtStorageFree))
        .TextMatrix(.Row, Column.WharfageExempt) = chkWharfageExempt.Value
        .TextMatrix(.Row, Column.VATCode) = Left(cboVAT, 1)
        .TextMatrix(.Row, Column.GuaranteeCode) = Left(cboUnderGuarantee, 1)
        
        .TextMatrix(.Row, Column.CustomGuard) = chkCustomsGuard.Value
        .TextMatrix(.Row, Column.PlugINDate) = mskPlugIN
        .TextMatrix(.Row, Column.PlugOUTDate) = mskPlugOUT
        .TextMatrix(.Row, Column.VisitID) = lngVisitID
        .TextMatrix(.Row, Column.MountDate) = mskTrainMountDate
        .TextMatrix(.Row, Column.StartStorageDate) = dtStartStorage
        
        .TextMatrix(.Row, Column.FreeStorageUntil) = dtStorageFree
        .TextMatrix(.Row, Column.EndStorageDate) = dtEndStorage
        .TextMatrix(.Row, Column.RemarksCode) = "Remarks Code"
        .TextMatrix(.Row, Column.Remarks) = "" & txtRemarks
        .TextMatrix(.Row, Column.StatusCode) = "Status Code"
        .TextMatrix(.Row, Column.RecordTag) = "Record Tag"
        
        .TextMatrix(.Row, Column.UserID) = "User ID"
        .TextMatrix(.Row, Column.GatePassDate) = "GatePass Date"
        .TextMatrix(.Row, Column.UpdateCode) = "Update Code"
        
        .TextMatrix(.Row, Column.TotalAMT) = Format(mskTotalAMT, "###,###,##0.00")
        .TextMatrix(.Row, Column.TotalVAT) = Format(mskTotalVAT, "###,###,##0.00")
        .TextMatrix(.Row, Column.TotalWTAX) = Format(mskTotalWTAX, "###,###,##0.00")
        
        .TextMatrix(.Row, Column.ContainerTotal) = Format(mskContainerTotal, "###,###,##0.00")
        .TextMatrix(.Row, Column.PayOnly) = Format(mskPayOnly, "###,###,##0.00")
        .TextMatrix(.Row, Column.DaysInYard) = mskDaysInYard
        .TextMatrix(.Row, Column.PayableDays) = mskPayableDays
        .TextMatrix(.Row, Column.tmpArrastreBasic) = curTmpArrastreBasic
        .TextMatrix(.Row, Column.tmpArrastreWTAX) = curTmpArrastreWTAX
        .TextMatrix(.Row, Column.tmpArrastreVAT10) = curArrastreVAT10
        
        .TextMatrix(.Row, Column.tmpArrastreVAT6) = curArrastreVAT6
        .TextMatrix(.Row, Column.tmpStorageBasic) = curTmpStorageBasic
        .TextMatrix(.Row, Column.tmpStorageWTAX) = curTmpStorageWTAX
        .TextMatrix(.Row, Column.tmpStorageVAT10) = curStorageVAT10
        .TextMatrix(.Row, Column.tmpStorageVAT6) = curStorageVAT6
        
        .TextMatrix(.Row, Column.tmpWeighingBasic) = curTmpWeighingBasic
        .TextMatrix(.Row, Column.tmpWeighingWTAX) = curTmpWeighingWTAX
        .TextMatrix(.Row, Column.tmpWeighingVAT10) = curWeighingVAT10
        .TextMatrix(.Row, Column.tmpWeighingVAT6) = curWeighingVAT6
        .TextMatrix(.Row, Column.tmpReeferBasic) = curTmpReeferBasic
        
        .TextMatrix(.Row, Column.tmpReeferWTAX) = curTmpReeferWTAX
        .TextMatrix(.Row, Column.tmpReeferVAT10) = curReeferVAT10
        .TextMatrix(.Row, Column.tmpReeferVAT6) = curReeferVAT6
        .TextMatrix(.Row, Column.CompanyCode) = compCode
        
        If Not blnRetainExamRegistry Then
            .TextMatrix(.Row, Column.ForExam) = getExam(Trim(cmbConNo.Text))
            .TextMatrix(.Row, Column.RegistryOrig) = getRegistryOrig(Trim(cmbConNo.Text))
        End If
    End With
    blnPopulating = False
End Sub
    
Private Function getRegistryOrig(pContainer As String) As String
    getRegistryOrig = Trim(txtContainer(3))
End Function

Private Function getExam(pContainer As String) As String
    getExam = IIf(chkForExam.Value = 1, "Y", Space(1))
End Function

Private Function getFreeStorageDays(pStart As Date, pEnd As Date) As Integer
    getFreeStorageDays = DateDiff("d", pStart, pEnd)
End Function

Private Sub RunningTotal()
    mskRunning = 0
    With msfCharges
        For intRow = 1 To (.Rows - 1)
            mskRunning = CCur(mskRunning) + CCur(.TextMatrix(intRow, Column.PayOnly))
        Next intRow
    End With
    mskRunning = Format(mskRunning, "###,###,##0.00")
    mskAmountToPay = Format(mskRunning, "###,###,##0.00")
    mskCashAmount = Format(mskRunning, "###,###,##0.00")
    lblAmountInWords = NumToText(CCur(mskAmountToPay))
    Call SumPaymentTypes
End Sub

Private Sub StoreHeaderFields()
    Header.Customer = Trim(txtCustomer)
    Header.BrokerNo = txtBrokerNO
    If cboVAT.Text = Space(1) Then
        Header.VATCode = "0"
    Else
        Header.VATCode = Left(cboVAT.Text, 1)
    End If
    Header.UnderGuaranteeCode = Left(cboUnderGuarantee.Text, 1)
    Header.WharfageOnly = chkWharfageOnly.Value
    Header.WharfageExempt = chkWharfageExempt.Value
  End Sub
 
Private Function NumToText(dblValue As Currency) As String
    Static ones(0 To 9) As String
    Static teens(0 To 9) As String
    Static tens(0 To 9) As String
    Static thousands(0 To 4) As String
    Dim i As Integer, nPosition As Integer
    Dim nDigit As Integer, bAllZeros As Integer
    Dim strResult As String, strTemp As String
    Dim tmpBuff As String
    Dim strSign As String
    Dim negativeSign As Boolean

    ones(0) = "zero"
    ones(1) = "one"
    ones(2) = "two"
    ones(3) = "three"
    ones(4) = "four"
    ones(5) = "five"
    ones(6) = "six"
    ones(7) = "seven"
    ones(8) = "eight"
    ones(9) = "nine"

    teens(0) = "ten"
    teens(1) = "eleven"
    teens(2) = "twelve"
    teens(3) = "thirteen"
    teens(4) = "fourteen"
    teens(5) = "fifteen"
    teens(6) = "sixteen"
    teens(7) = "seventeen"
    teens(8) = "eighteen"
    teens(9) = "nineteen"

    tens(0) = ""
    tens(1) = "ten"
    tens(2) = "twenty"
    tens(3) = "thirty"
    tens(4) = "forty"
    tens(5) = "fifty"
    tens(6) = "sixty"
    tens(7) = "seventy"
    tens(8) = "eighty"
    tens(9) = "ninety"

    thousands(0) = ""
    thousands(1) = "thousand"
    thousands(2) = "million"
    thousands(3) = "billion"
    thousands(4) = "trillion"

    'Trap errors
    On Error GoTo NumToTextError
    'Get fractional part
    If dblValue < 0 Then
        negativeSign = True
        dblValue = Abs(dblValue)
    Else
        negativeSign = False
    End If
    strResult = "and " & Format((dblValue - Int(dblValue)) * 100, "00") & "/100"
    If negativeSign Then
        strSign = "NEGATIVE "
    Else
        strSign = ""
    End If
    strTemp = CStr(Int(dblValue))
    'Iterate through string
    For i = Len(strTemp) To 1 Step -1
        'Get value of this digit
        nDigit = Val(Mid$(strTemp, i, 1))
        'Get column position
        nPosition = (Len(strTemp) - i) + 1
        'Action depends on 1's, 10's or 100's column
        Select Case (nPosition Mod 3)
            Case 1  '1's position
                bAllZeros = False
                If i = 1 Then
                    tmpBuff = ones(nDigit) & " "
                ElseIf Mid$(strTemp, i - 1, 1) = "1" Then
                    tmpBuff = teens(nDigit) & " "
                    i = i - 1   'Skip tens position
                ElseIf nDigit > 0 Then
                    tmpBuff = ones(nDigit) & " "
                Else
                    'If next 10s & 100s columns are also
                    'zero, then don't show 'thousands'
                    bAllZeros = True
                    If i > 1 Then
                        If Mid$(strTemp, i - 1, 1) <> "0" Then
                            bAllZeros = False
                        End If
                    End If
                    If i > 2 Then
                        If Mid$(strTemp, i - 2, 1) <> "0" Then
                            bAllZeros = False
                        End If
                    End If
                    tmpBuff = ""
                End If
                If bAllZeros = False And nPosition > 1 Then
                    tmpBuff = tmpBuff & thousands(nPosition / 3) & " "
                End If
                strResult = tmpBuff & strResult
            Case 2  'Tens position
                If nDigit > 0 Then
                    strResult = tens(nDigit) & " " & strResult
                End If
            Case 0  'Hundreds position
                If nDigit > 0 Then
                    strResult = ones(nDigit) & " hundred " & strResult
                End If
        End Select
    Next i
    'Convert first letter to upper case
    If Len(strResult) > 0 Then
        strResult = UCase$(Left$(strResult, 1)) & Mid$(strResult, 2)
    End If

EndNumToText:
    'Return result
    NumToText = Trim(strSign) & strResult
    Exit Function

NumToTextError:
    strResult = "#Error#"
    Resume EndNumToText
End Function
   
Private Sub FieldAdvance(pKeyCode As Integer, pPreviousControl As Control, pNextControl As Control)
    Select Case pKeyCode
        Case vbKeyDown
            If (TypeOf pNextControl Is TextBox) Or (TypeOf pNextControl Is MaskEdBox) Then
                pNextControl.SelStart = 0
                pNextControl.SelLength = pNextControl.MaxLength
            End If
            pNextControl.SetFocus
        Case vbKeyReturn
            If (TypeOf pNextControl Is TextBox) Or (TypeOf pNextControl Is MaskEdBox) Then
                pNextControl.SelStart = 0
                pNextControl.SelLength = pNextControl.MaxLength
            End If
            If pNextControl.Enabled Then pNextControl.SetFocus
        Case vbKeyUp
            If (TypeOf pPreviousControl Is TextBox) Or (TypeOf pPreviousControl Is MaskEdBox) Then
                pPreviousControl.SelStart = 0
                pPreviousControl.SelLength = pPreviousControl.MaxLength
            End If
            pPreviousControl.SetFocus
        Case vbKeyF11
            Select Case sstMain.Tab
                Case cTabBL
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabPayment) = True, cTabPayment, cTabBL)
                Case cTabHeader
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabHeader - 1) = True, cTabHeader - 1, cTabHeader)
                Case cTabContainer
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabContainer - 1) = True, cTabContainer - 1, cTabContainer)
                Case cTabCharges
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabCharges - 1) = True, cTabCharges - 1, cTabCharges)
                Case cTabOtherInfo
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabOtherInfo - 1) = True, cTabOtherInfo - 1, cTabOtherInfo)
                Case cTabPayment
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabPayment - 1) = True, cTabPayment - 1, cTabPayment)
            End Select
        Case vbKeyF12
            Select Case sstMain.Tab
                Case cTabBL
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabBL + 1) = True, cTabBL + 1, cTabBL)
                Case cTabHeader
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabHeader + 1) = True, cTabHeader + 1, cTabHeader)
                Case cTabContainer
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabContainer + 1) = True, cTabContainer + 1, cTabContainer)
                Case cTabCharges
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabCharges + 1) = True, cTabCharges + 1, cTabCharges)
                Case cTabOtherInfo
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabOtherInfo + 1) = True, cTabOtherInfo + 1, cTabOtherInfo)
                Case cTabPayment
                    sstMain.Tab = IIf(sstMain.TabEnabled(cTabPayment) = True, cTabBL, cTabPayment)
            End Select
        Case vbKeyF3
            intResponse = MsgBox("Do you really want to Exit?", vbYesNo + vbCritical, "Quit Program")
            If intResponse = vbYes Then
'                On Error Resume Next
'                    clsCTCS.Disconnect
'                On Error GoTo 0
                Unload Me
            End If
        Case vbKeyF2
            intResponse = MsgBox("Clear Entries?", vbYesNo + vbCritical, "Abort")
            If intResponse = vbYes Then
                Call InitializeHeaderVariables
                Call InitializeComputationVariables
                Call InitializeGridAndOther
                Call InitializeOtherInfo
                Call InitializePayment
                Call DisableNextTabs
                Call InitializeAndEnableManifestControls
                mskRunning = 0
                msfCharges.Rows = 1
                cmdAnother.Enabled = True
                blnFirstTime = True
                sstMain.Tab = cTabBL
                With txtSBMAPermit
                    .SelStart = 0
                    .SelLength = .MaxLength
                    .SetFocus
                End With
            End If
        Case vbKeyF8
            If sstMain.Tab = cTabCharges And cmdAnother.Enabled = True Then
                Call cmdAnother_Click
            ElseIf sstMain.Tab = cTabContainer Then
                Call cmdCompute_Click
            End If
        Case vbKeyF9
            If sstMain.Tab = cTabCharges Then
                Call cmdViewGrid_Click
            End If
        Case vbKeyF4
            If sstMain.Tab = cTabPayment Then
                Call cmdSave_Click
            End If
    End Select
End Sub
   
Private Sub txtUMS_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, mskOVHeight, cmdCompute)
End Sub

Private Sub txtVesselCode_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtDeclaredWeight, txtRemarks)
End Sub

Public Function gzSearchCYRate(ByVal pRateCode As String, ByVal pSize As String) As Currency
    Dim cmdSearchCYRate As ADODB.Command
    Dim prmSearchCYRate As ADODB.Parameter

    ' create command
    Set cmdSearchCYRate = New ADODB.Command
    Set prmSearchCYRate = New ADODB.Parameter
    With cmdSearchCYRate
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getcyrateamt"
        .CommandType = adCmdStoredProc
        
        .Parameters(0).Direction = adParamReturnValue
        .Parameters(1).Type = adChar
        .Parameters(1).Value = pRateCode
        .Parameters(1).Direction = adParamInput
        .Parameters(2).Type = adChar
        .Parameters(2).Value = pSize
        .Parameters(2).Direction = adParamInput
        .Parameters(3).Type = adCurrency
        .Parameters(3).Direction = adParamOutput
        .Execute

        If IsNull(.Parameters(3)) Then
            gzSearchCYRate = 0
        Else
            gzSearchCYRate = .Parameters(3)
        End If
    End With
End Function

Private Sub txtVoyageNo_KeyDown(KeyCode As Integer, Shift As Integer)
    Call FieldAdvance(KeyCode, txtLocation, chkCustomsGuard)
End Sub

Private Sub GetSparcsN4Host()
    
    On Error GoTo err
    Dim rstSparcsN4Host As ADODB.Recordset
    Dim strSparcsN4Host As String
    
    Set rstSparcsN4Host = New ADODB.Recordset
    
    strSparcsN4Host = ""
    strSparcsN4Host = "SELECT * " & _
                       "FROM SparcsN4Host " & _
                       "WHERE status='ACT'"

    rstSparcsN4Host.Open strSparcsN4Host, gcnnBilling, adOpenForwardOnly, adLockReadOnly
    
    If rstSparcsN4Host.BOF Then
        'MsgBox "WARNING:B.L. " & Trim(strBillNo) & " not found!", vbCritical, "Cargo Manifest"
        'MsgBox "Please inform your SUPERVISOR!", vbInformation, "Cargo Manifest"
        Exit Sub
    End If
    
    With rstSparcsN4Host
        .MoveFirst
        strN4Server = Trim(.Fields("hstnam"))
        strN4Authorization = Trim(.Fields("Authorization"))
        strN4UserName = Trim(.Fields("username"))
        strN4Password = Trim(.Fields("password"))
    End With
    Set rstSparcsN4Host = Nothing
    
    Exit Sub
    
err:
    MsgBox "error in retrieving N4 config"
End Sub

