Attribute VB_Name = "modCalled"
Option Explicit

'--------------------------------------------------------------------
' Type declarations
'--------------------------------------------------------------------
' Customer Information
Public Type tCusInfo
    cuscde As String * 6        '  code
    custyp As String * 3        '  type
    cusnam As String * 40       '  name
    careof As String * 40       '  care of / agent
    address As String * 40      '  address
    telfax As String * 30       '  telephone / fax number
End Type
' Vessel Visit Information
Public Type tVslInfo
    regNum As String * 12       '  registry number
    vstnum As Long              '  visit id
    vslcde As String * 7        '  vessel code
    voyage As String * 12       '  voyage number
    lstdch As Date              '  last discharge date
    podcde As String * 3        '  pod code
End Type

'--------------------------------------------------------------------
' Function      :   gzGetCustomerInfo()
' Parameters    :   pCode       -> customer code (string * 6)
' Returns       :   tCusInfo    -> customer information (see type declaration)
'--------------------------------------------------------------------
Public Function gzGetCustomerInfo(ByVal pCode As String) As tCusInfo
Dim dummy As String
Dim cmdGetCustomer As ADODB.Command
Dim prmGetCustomer As ADODB.Parameter
    
    ' create command
    Set cmdGetCustomer = New ADODB.Command
    With cmdGetCustomer
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getcustomerinfo"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmGetCustomer = .CreateParameter(, adChar, adParamInput, 6, pCode)
        .Parameters.Append prmGetCustomer
        Set prmGetCustomer = .CreateParameter("pTYPE", adVarChar, adParamOutput, 3, dummy)
        .Parameters.Append prmGetCustomer
        Set prmGetCustomer = .CreateParameter("pNAME", adVarChar, adParamOutput, 40, dummy)
        .Parameters.Append prmGetCustomer
        Set prmGetCustomer = .CreateParameter("pCAREOF", adVarChar, adParamOutput, 40, dummy)
        .Parameters.Append prmGetCustomer
        Set prmGetCustomer = .CreateParameter("pADDRESS", adVarChar, adParamOutput, 40, dummy)
        .Parameters.Append prmGetCustomer
        Set prmGetCustomer = .CreateParameter("pTELFAX", adVarChar, adParamOutput, 30, dummy)
        .Parameters.Append prmGetCustomer
        .Execute
    End With
    
    With gzGetCustomerInfo
        .cuscde = pCode
        .custyp = "" & cmdGetCustomer.Parameters("pTYPE")
        .cusnam = "" & cmdGetCustomer.Parameters("pNAME")
        .careof = "" & cmdGetCustomer.Parameters("pCAREOF")
        .address = "" & cmdGetCustomer.Parameters("pADDRESS")
        .telfax = "" & cmdGetCustomer.Parameters("pTELFAX")
    End With
    
End Function

'--------------------------------------------------------------------
' Function      :   gzGetVesselInfo()
' Parameters    :   pRegNum     -> registry number (string * 12)
' Returns       :   tVslInfo    -> vessel information (see type declaration)
'--------------------------------------------------------------------
Public Function gzGetVesselInfo(ByVal pRegNo As String) As tVslInfo
Dim cmdGetVessel As ADODB.Command
Dim prmGetVessel As ADODB.Parameter
    
    ' create command
    Set cmdGetVessel = New ADODB.Command
    With cmdGetVessel
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getvesselinfo"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmGetVessel = New ADODB.Parameter
        Set prmGetVessel = .CreateParameter(, adChar, adParamInput, 12, pRegNo)
        .Parameters.Append prmGetVessel
        Set prmGetVessel = .CreateParameter("pVISIT", adBigInt, adParamOutput)
        .Parameters.Append prmGetVessel
        Set prmGetVessel = .CreateParameter("pVSLCDE", adChar, adParamOutput, 7)
        .Parameters.Append prmGetVessel
        Set prmGetVessel = .CreateParameter("pVOYAGE", adChar, adParamOutput, 12)
        .Parameters.Append prmGetVessel
        Set prmGetVessel = .CreateParameter("pLSTDCH", adDate, adParamOutput)
        .Parameters.Append prmGetVessel
        Set prmGetVessel = .CreateParameter("pPOD", adChar, adParamOutput, 3)
        .Parameters.Append prmGetVessel
        .Execute
    End With
    
    With gzGetVesselInfo
        .regNum = pRegNo
        .vstnum = cmdGetVessel.Parameters("pVISIT")
        .vslcde = "" & cmdGetVessel.Parameters("pVSLCDE")
        .voyage = "" & cmdGetVessel.Parameters("pVOYAGE")
        .lstdch = cmdGetVessel.Parameters("pLSTDCH")
        .podcde = "" & cmdGetVessel.Parameters("pPOD")
    End With
   
End Function

'--------------------------------------------------------------------
' Function      :   gzGetCustomerName()
' Parameters    :   pCode       -> customer code (string * 6)
' Returns       :   String      -> customer name (string * 40)
'--------------------------------------------------------------------
Public Function gzGetCustomerName(ByVal pCode As String) As String
Dim cmdGetCustomer As ADODB.Command
Dim prmGetCustomer As ADODB.Parameter
    
    ' create command
    Set cmdGetCustomer = New ADODB.Command
    With cmdGetCustomer
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getcustomername"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmGetCustomer = .CreateParameter(, adChar, adParamInput, 6, pCode)
        .Parameters.Append prmGetCustomer
        Set prmGetCustomer = .CreateParameter("pNAME", adVarChar, adParamOutput, 40, gzGetCustomerName)
        .Parameters.Append prmGetCustomer
        .Execute
    End With
    
    gzGetCustomerName = "" & cmdGetCustomer.Parameters("pNAME")
    
End Function

'--------------------------------------------------------------------
' Function      :   gzGetADRBal()
' Parameters    :   pCode       -> customer code (string * 6)
' Returns       :   Currency    -> ADR balance
'--------------------------------------------------------------------
Public Function gzGetADRBal(ByVal pCode As String) As Currency
Dim cmdGetADRBal As ADODB.Command
Dim prmGetADRBal As ADODB.Parameter
    
    ' create command
    Set cmdGetADRBal = New ADODB.Command
    With cmdGetADRBal
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getadrbal"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmGetADRBal = .CreateParameter(, adChar, adParamInput, 6, pCode)
        .Parameters.Append prmGetADRBal
        Set prmGetADRBal = .CreateParameter("pTYPE", adNumeric, adParamOutput)
        .Parameters.Append prmGetADRBal
        .Execute
        If Not IsNull(.Parameters("pTYPE")) Then
            gzGetADRBal = .Parameters("pTYPE")
        Else
            gzGetADRBal = 0
        End If
    End With

End Function

'--------------------------------------------------------------------
' Function      :   gzGetControlNo()
' Parameters    :   pType       -> control type (string * 3)
' Returns       :   Long        -> control number
'--------------------------------------------------------------------
Public Function gzGetControlNo(ByVal pType As String) As Long
    On Error GoTo ErrCatcher1
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: start function" & vbCrLf
    Dim cmdGetControl As ADODB.Command
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: Dim cmdGetControl As ADODB.Command" & vbCrLf
    Dim prmGetControl As ADODB.Parameter
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: Dim prmGetControl As ADODB.Parameter" & vbCrLf
        
    ' create command
    Set cmdGetControl = New ADODB.Command
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: Set cmdGetControl = New ADODB.Command" & vbCrLf
    With cmdGetControl
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: With cmdGetControl" & vbCrLf
        Set .ActiveConnection = gcnnBilling
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: Set .ActiveConnection = gcnnBilling" & vbCrLf
        .CommandText = "up_getcontrolno"
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: .CommandText = ""up_getcontrolno""" & vbCrLf
        .CommandType = adCmdStoredProc
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: .CommandType = adCmdStoredProc" & vbCrLf
            ' set parameters then execute
        Set prmGetControl = .CreateParameter(, adChar, adParamInput, 3, pType)
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: Set prmGetControl = .CreateParameter(, adChar, adParamInput, 3, pType)" & vbCrLf
        .Parameters.Append prmGetControl
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: .Parameters.Append prmGetControl" & vbCrLf
        Set prmGetControl = .CreateParameter("pCTLNUM", adBigInt, adParamOutput)
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: Set prmGetControl = .CreateParameter(""pCTLNUM"", adBigInt, adParamOutput)" & vbCrLf
        .Parameters.Append prmGetControl
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: .Parameters.Append prmGetControl" & vbCrLf
        .Execute
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: Execute" & vbCrLf
        gzGetControlNo = .Parameters("pCTLNUM")
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: gzGetControlNo = .Parameters(""pCTLNUM"")" & vbCrLf
    End With
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: gzGetControlNo = end with" & vbCrLf
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "gzGetControlNo: gzGetControlNo = end Function" & vbCrLf
    Exit Function
ErrCatcher1:
    If err.Number <> 0 Then
        MsgBox "Error: " & err.Number & vbCrLf & "Description:" & err.Description, vbOKOnly, "gzGetControlNo"
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & " *ERROR* gzGetControlNo: Error No:" & err.Number & " " & vbCrLf
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & " *ERROR* gzGetControlNo: Error Description:" & err.Description & " " & vbCrLf
        err.Clear
    End If
End Function

'--------------------------------------------------------------------
' Function      :   gzGetSysDate()
' Parameters    :   none
' Returns       :   DateTime    -> Server Date and Time
'--------------------------------------------------------------------
Public Function gzGetSysDate() As Date
    Dim cmdGetSysDate As ADODB.Command
    Dim prmGetSysDate As ADODB.Parameter
    Dim X As Date
    
    On Error GoTo err
    
    ' create command
    Set cmdGetSysDate = New ADODB.Command
    Set prmGetSysDate = New ADODB.Parameter
    With cmdGetSysDate
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getsysdate"
        .CommandType = adCmdStoredProc
        Set prmGetSysDate = .CreateParameter("pDATE", adDate, adParamOutput)
        .Parameters.Append prmGetSysDate
        .Execute
        gzGetSysDate = .Parameters("pDATE")
    End With
    Exit Function
    
err:
    MsgBox err.Description, vbOKOnly, "gzGetSysDate"
End Function


'--------------------------------------------------------------------
' Function      :   gzApplyADRPayment()
' Parameters    :
' Returns       :   Long        -> ADR reference number or error code
'--------------------------------------------------------------------
Public Function gzApplyADRPayment(ByVal pCUSCDE As String, _
                                  ByVal pADRTyp As String, _
                                  ByVal pADRRef As String, _
                                  ByVal pADRAMT As Currency, _
                                  ByVal pREMARK As String, _
                                  ByVal pUSERID As String _
            ) As Long




End Function

'------------------------------------------------------------------------
' Function      :   gzGetNextCCR()
' Parameters    :   pUserID     -> user id
' Returns       :   Long        -> ADR reference number or error code
'                                  Error codes :   0 = NO CCR Allocation
'                                                 -1 = End of Allocated CCR
'------------------------------------------------------------------------
Public Function gzGetNextCCR(ByVal pUser As String) As Long
    Dim cmdGetNextCCR As ADODB.Command
    Dim prmGetNextCCR As ADODB.Parameter
    
    On Error GoTo err
    
    ' create command
    Set cmdGetNextCCR = New ADODB.Command
    With cmdGetNextCCR
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getNextCCR"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmGetNextCCR = .CreateParameter(, adChar, adParamInput, 10, pUser)
        .Parameters.Append prmGetNextCCR
        Set prmGetNextCCR = .CreateParameter("pNXTCCR", adBigInt, adParamOutput)
        .Parameters.Append prmGetNextCCR
        .Execute
        gzGetNextCCR = .Parameters("pNXTCCR")
    End With
    Exit Function
err:
    MsgBox err.Description, vbOKOnly, "gzGetNextCCR"
End Function

Public Function gzGetNextCYMGP(ByVal pUser As String, ByVal compCode As String) As Long
    Dim cmdGetNextCYMGP As ADODB.Command
    Dim prmGetNextCYMGP As ADODB.Parameter
    
    On Error GoTo err
    
    ' create command
    Set cmdGetNextCYMGP = New ADODB.Command
    With cmdGetNextCYMGP
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getNextCYMGP"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmGetNextCYMGP = .CreateParameter("@@pUSERID", adChar, adParamInput, 10, pUser)
        .Parameters.Append prmGetNextCYMGP
        Set prmGetNextCYMGP = .CreateParameter("pNXTCYMGP", adBigInt, adParamOutput)
        .Parameters.Append prmGetNextCYMGP
        
        'PRNH - Company Code
         Set prmGetNextCYMGP = .CreateParameter("@@pCOMPANYCODE", adChar, adParamInput, 10, compCode)
        .Parameters.Append prmGetNextCYMGP
        
        .Execute
        gzGetNextCYMGP = .Parameters("pNXTCYMGP")
    End With
    Exit Function
    
err:
    MsgBox err.Description, vbOKOnly, "gzGetNextCYMGP"

End Function

Public Function gzGetNextCYEGP(ByVal pUser As String) As Long
    Dim cmdGetNextCYEGP As ADODB.Command
    Dim prmGetNextCYEGP As ADODB.Parameter
    
    On Error GoTo err
    
    ' create command
    Set cmdGetNextCYEGP = New ADODB.Command
    With cmdGetNextCYEGP
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getNextCYEGP"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmGetNextCYEGP = .CreateParameter(, adChar, adParamInput, 10, pUser)
        .Parameters.Append prmGetNextCYEGP
        Set prmGetNextCYEGP = .CreateParameter("pNXTCYEGP", adBigInt, adParamOutput)
        .Parameters.Append prmGetNextCYEGP
        .Execute
        gzGetNextCYEGP = .Parameters("pNXTCYEGP")
    End With
    Exit Function
    
err:
    MsgBox err.Description, vbOKOnly, "gzGetNextCYEGP"
End Function

'--------------------------------------------------------------------
' Function      :   gzApplyCYMGP()
' Parameters    :   pUser       -> user id       (string * 10)
'               :   pGatePassNo -> gatepass #    (long)
' Returns       :   NONE
'--------------------------------------------------------------------
Public Sub gzApplyCYMGP(ByVal pUser As String, ByVal pGatePassNo As Long, ByVal pCompCode As String)
    Dim cmdApplyCYMGP As ADODB.Command
    Dim prmApplyCYMGP As ADODB.Parameter
    
    On Error GoTo err
    
    ' create command
    Set cmdApplyCYMGP = New ADODB.Command
    With cmdApplyCYMGP
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_applycymgp"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmApplyCYMGP = .CreateParameter("@@pUSERID", adChar, adParamInput, 10, pUser)
        .Parameters.Append prmApplyCYMGP
        Set prmApplyCYMGP = .CreateParameter("@@pGPSNUM", adInteger, adParamInput, , pGatePassNo)
        .Parameters.Append prmApplyCYMGP
        Set prmApplyCYMGP = .CreateParameter("@@pCOMPANYCODE", adChar, adParamInput, 10, pCompCode)
        .Parameters.Append prmApplyCYMGP
        
        .Execute
    End With
    Exit Sub
    
err:
    MsgBox err.Description, vbOKOnly, "gzApplyCYMGP"
End Sub

'--------------------------------------------------------------------
' Function      :   gzApplyCYEGP()
' Parameters    :   pUser       -> user id       (string * 10)
'               :   pGatePassNo -> gatepass #    (long)
' Returns       :   NONE
'--------------------------------------------------------------------
Public Sub gzApplyCYEGP(ByVal pUser As String, ByVal pGatePassNo As Long)
    Dim cmdApplyCYEGP As ADODB.Command
    Dim prmApplyCYEGP As ADODB.Parameter
    
    On Error GoTo err
    ' create command
    Set cmdApplyCYEGP = New ADODB.Command
    With cmdApplyCYEGP
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_applycyegp"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmApplyCYEGP = .CreateParameter(, adChar, adParamInput, 10, pUser)
        .Parameters.Append prmApplyCYEGP
        Set prmApplyCYEGP = .CreateParameter(, adInteger, adParamInput, , pGatePassNo)
        .Parameters.Append prmApplyCYEGP
        .Execute
    End With
    Exit Sub
err:
    MsgBox err.Description, vbOKOnly, "gzApplyCYEGP"
End Sub

'--------------------------------------------------------------------
' Function      :   gzApplyCCR()
' Parameters    :   pUser       -> user id       (string * 10)
'               :   pCCRNo      -> CCR No #      (long)
' Returns       :   NONE
'--------------------------------------------------------------------
Public Sub gzApplyCCR(ByVal pUser As String, ByVal pCCRNo As Long)
    Dim cmdApplyCCR As ADODB.Command
    Dim prmApplyCCR As ADODB.Parameter
    
    On Error GoTo err
    
    ' create command
    Set cmdApplyCCR = New ADODB.Command
    With cmdApplyCCR
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_applyccr"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmApplyCCR = .CreateParameter(, adChar, adParamInput, 10, pUser)
        .Parameters.Append prmApplyCCR
        Set prmApplyCCR = .CreateParameter(, adInteger, adParamInput, , pCCRNo)
        .Parameters.Append prmApplyCCR
        .Execute
    End With
    Exit Sub
err:
    MsgBox err.Description, vbOKOnly, "gzApplyCCR"
End Sub


'------------------------------------------------------------------------
' Function      :   gzChkValidCCR()
' Parameters    :   pUserID     -> user id (string *10)
'               :   pCCRNum     -> CCR number to check (long)
' Returns       :   Long        -> return code
'                                  Return codes :   0 = NO CCR Allocation
'                                                  -1 = End of Allocated CCR
'------------------------------------------------------------------------
Public Function gzChkValidCCR(ByVal pUser As String, ByVal pCCR As Long) As Long
    Dim rstChkValidCCR As ADODB.Recordset
    Dim cmdChkValidCCR As ADODB.Command
    Dim prmChkValidCCR As ADODB.Parameter
    
    On Error GoTo err
    
    ' create command
    Set rstChkValidCCR = New ADODB.Recordset
    Set cmdChkValidCCR = New ADODB.Command
    Set prmChkValidCCR = New ADODB.Parameter
    With cmdChkValidCCR
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_chkvalidccr"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmChkValidCCR = .CreateParameter("RETURN_VALUE", adInteger, adParamReturnValue)
        .Parameters.Append prmChkValidCCR
        Set prmChkValidCCR = .CreateParameter(, adChar, adParamInput, 10, pUser)
        .Parameters.Append prmChkValidCCR
        Set prmChkValidCCR = .CreateParameter("pCCRNUM", adBigInt, adParamInput, , pCCR)
        .Parameters.Append prmChkValidCCR
        .Execute
        gzChkValidCCR = .Parameters("RETURN_VALUE")
    End With
    Exit Function
err:
    MsgBox err.Description, vbOKOnly, "gzChkValidCCR"
End Function

'------------------------------------------------------------------------
' Function      :   gzChkValidCYM()
' Parameters    :   pUserID     -> user id (string *10)
'               :   pCYMNum     -> CYM number to check (long)
' Returns       :   Long        -> return code
'                                  Return codes :   0 = NO CYM Allocation
'                                                  -1 = End of Allocated CYM
'------------------------------------------------------------------------
Public Function gzChkValidCYM(ByVal pUser As String, ByVal pCYM As Long, ByVal pCompCode As String) As Long
    Dim rstChkValidCYM As ADODB.Recordset
    Dim cmdChkValidCYM As ADODB.Command
    Dim prmChkValidCYM As ADODB.Parameter
        
    On Error GoTo err
    ' create command
    Set rstChkValidCYM = New ADODB.Recordset
    Set cmdChkValidCYM = New ADODB.Command
    Set prmChkValidCYM = New ADODB.Parameter
    With cmdChkValidCYM
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_chkvalidcymgp"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        .Parameters(1).Type = adChar
        .Parameters(1).Value = pUser
        .Parameters(1).Direction = adParamInput
        
        .Parameters(2).Type = adInteger
        .Parameters(2).Value = pCYM
        .Parameters(2).Direction = adParamInput
        
        .Parameters(3).Type = adChar
        .Parameters(3).Value = pCompCode
        .Parameters(3).Direction = adParamInput
        
        .Parameters(0).Direction = adParamReturnValue
        
        .Execute
        gzChkValidCYM = .Parameters(0)
    End With
    Exit Function
err:
    MsgBox err.Description, vbOKOnly, "gzChkValidCYM"
End Function

Public Function lzGetLastDischarge(ByVal pRegNo As String, ByRef pVesselCode As String) As Date
    Dim cmd As ADODB.Command
    Dim prm As ADODB.Parameter
    Dim p As String
    Dim d As Date
    Const cNullDate As Date = #12:00:00 AM#
        
    ' create command
    Set cmd = New ADODB.Command
    With cmd
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getlastdischarge"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prm = .CreateParameter(, adChar, adParamInput, 12, pRegNo)
        .Parameters.Append prm
        Set prm = .CreateParameter("pVSLCDE", adChar, adParamOutput, 7, p)
        .Parameters.Append prm
        Set prm = .CreateParameter("pLDDATE", adDate, adParamOutput, , d)
        .Parameters.Append prm
        .Execute
        If IsNull(.Parameters(2)) Or .Parameters(2) = cNullDate Then
           'lzGetLastDischarge = gzGetSysDate
           lzGetLastDischarge = lzGetEstArrivalDate(pRegNo)
        Else
           lzGetLastDischarge = .Parameters(2)
        End If
        
        If IsNull(.Parameters(1)) Then
            pVesselCode = ""
        Else
            pVesselCode = .Parameters(1)
        End If
    End With
End Function

Public Function lzGetEstArrivalDate(ByVal pRegNo As String) As Date
Dim cmd As ADODB.Command
Dim prm As ADODB.Parameter
Dim p As String
Dim d As Date
Const cNullDate As Date = #12:00:00 AM#
    
    ' create command
    Set cmd = New ADODB.Command
    With cmd
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getestarrivaldate"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prm = .CreateParameter(, adChar, adParamInput, 12, pRegNo)
        .Parameters.Append prm
        Set prm = .CreateParameter("pLDDATE", adDate, adParamOutput, , d)
        .Parameters.Append prm
        .Execute
        If IsNull(.Parameters(1)) Or .Parameters(1) = cNullDate Then
            lzGetEstArrivalDate = gzGetSysDate
        Else
            lzGetEstArrivalDate = .Parameters(1)
        End If
    End With
End Function

Public Function lzOnHold(ByVal pContNo As String, ByRef pUser As String, ByRef pDate As Date, ByRef pREASON As String) As Boolean
    Dim wait As New CWaitCursor
    Dim cmd As ADODB.Command
    Dim prm As ADODB.Parameter
    Dim bFound As Boolean
    
    'On Error GoTo err_Get
    wait.SetCursor
    ' create command
    Set cmd = New ADODB.Command
    Set prm = New ADODB.Parameter
    With cmd
        .ActiveConnection = gcnnBilling
        .CommandText = "up_contonhold"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        .Parameters(1).Type = adChar
        .Parameters(1).Value = pContNo
        .Parameters(1).Direction = adParamInput         ' pCONTNO
        .Parameters(2).Type = adChar
        .Parameters(2).Direction = adParamOutput        ' pREASON
        .Parameters(3).Type = adDate
        .Parameters(3).Direction = adParamOutput        ' pBLKDTE
        .Parameters(4).Type = adChar
        .Parameters(4).Direction = adParamOutput        ' pBLKUSR

        .Execute
        
        If IsNull(.Parameters(4)) Then
            lzOnHold = False
        Else
            lzOnHold = True
            pREASON = .Parameters(2)
            pDate = .Parameters(3)
            pUser = .Parameters(4)
        End If
    End With
End Function

'--------------------------------------------------------------------
' Function      :   gzCloseEntry()
' Parameters    :   pRegistry                    (string * 12)
'               :   pBilNum                      (string * 22)
'               :   pUserID                      (string * 10)
' Returns       :   NONE
'--------------------------------------------------------------------
Public Sub gzCloseEntry(ByVal pRegistry As String, ByVal pBilNum As String, ByVal pUSERID As String)
    Dim cmdCloseEntry As ADODB.Command
    Dim prmCloseEntry As ADODB.Parameter
        
    On Error GoTo err
        
    ' create command
    Set cmdCloseEntry = New ADODB.Command
    With cmdCloseEntry
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_closeentry"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmCloseEntry = .CreateParameter(, adChar, adParamInput, 12, pRegistry)
        .Parameters.Append prmCloseEntry
        Set prmCloseEntry = .CreateParameter(, adChar, adParamInput, 22, pBilNum)
        .Parameters.Append prmCloseEntry
        Set prmCloseEntry = .CreateParameter(, adChar, adParamInput, 10, pUSERID)
        .Parameters.Append prmCloseEntry
        .Execute
    End With
    Exit Sub
    
err:
    MsgBox err.Description, vbOKOnly, "gzCloseEntry"
End Sub

Public Function lzGetRegistryByVisit(ByVal pVisitID As Long) As String
    Dim cmd As ADODB.Command
    Dim prm As ADODB.Parameter
    Dim p As String
    Dim d As Date
    
    ' create command
    Set cmd = New ADODB.Command
    With cmd
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getregistrybyvisit"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prm = .CreateParameter(, adInteger, adParamInput, , pVisitID)
        .Parameters.Append prm
        Set prm = .CreateParameter("pREGISTRY", adChar, adParamOutput, 12, p)
        .Parameters.Append prm
        .Execute
        If IsNull(.Parameters(1)) Then
            lzGetRegistryByVisit = 0
        Else
            lzGetRegistryByVisit = .Parameters("pREGISTRY")
        End If
    End With
End Function

Public Function lzChkCYMIfExist(ByVal pRegistry As String, ByVal pContainer As String, ByRef pGatePass As Long, ByRef pUSERID As String, ByRef pSysDate As Date, ByRef pBroker As String) As Boolean
Dim cmd As ADODB.Command
Dim prm As ADODB.Parameter
Dim p As String
Dim d As Date
Dim L As Long
    
    ' create command
    Set cmd = New ADODB.Command
    With cmd
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_chkcymifexist"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prm = .CreateParameter(, adChar, adParamInput, 12, pRegistry)
        .Parameters.Append prm
        Set prm = .CreateParameter(, adChar, adParamInput, 12, pContainer)
        .Parameters.Append prm
        
        Set prm = .CreateParameter("pGATEPASS", adBigInt, adParamOutput, , L)
        .Parameters.Append prm
        
        Set prm = .CreateParameter("pUSERID", adChar, adParamOutput, 10, p)
        .Parameters.Append prm
        
        Set prm = .CreateParameter("pSYSDATE", adDate, adParamOutput, , d)
        .Parameters.Append prm
        
        Set prm = .CreateParameter("pBROKER", adChar, adParamOutput, 30, p)
        .Parameters.Append prm
        
        .Execute
        If IsNull(.Parameters("pGATEPASS")) Then
            lzChkCYMIfExist = False
        Else
            lzChkCYMIfExist = True
            pGatePass = .Parameters("pGATEPASS")
            pUSERID = .Parameters("pUSERID")
            pSysDate = .Parameters("pSYSDATE")
            pBroker = .Parameters("pBROKER")
        End If
    End With
End Function

Public Function lzChkShutOutPay(ByVal pContainer As String) As Long
Dim cmd As ADODB.Command
Dim prm As ADODB.Parameter
Dim p As String
Dim d As Date
Dim L As Long
    
    ' create command
    Set cmd = New ADODB.Command
    With cmd
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_chkshutoutpay"
        .CommandType = adCmdStoredProc
    
         ' set parameters then execute
        .Parameters(1).Type = adChar
        .Parameters(1).Value = pContainer
        .Parameters(1).Direction = adParamInput         ' pContainer
        
        .Parameters(0).Direction = adParamReturnValue
        
        .Execute
        lzChkShutOutPay = .Parameters(0)
    End With
End Function

Public Function lzChkCYMgpIfExist(ByVal pGPSnum As Long) As Boolean
    Dim cmd As ADODB.Command
    Dim prm As ADODB.Parameter
    
     ' create command
    Set cmd = New ADODB.Command
    With cmd
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_chkcymgpifexist"
        .CommandType = adCmdStoredProc
    
         ' set parameters then execute
        .Parameters(1).Type = adInteger
        .Parameters(1).Value = pGPSnum
        .Parameters(1).Direction = adParamInput         ' pGPSnum
        
        .Parameters(0).Direction = adParamReturnValue
        
        .Execute
        lzChkCYMgpIfExist = (.Parameters(0) = 1)
    End With
End Function

'Public Function lzSplitForExam(ByVal pContno As String) As Boolean
'Dim cmd As ADODB.Command
'Dim prm As ADODB.Parameter
'
'    ' create command
'    Set cmd = New ADODB.Command
'    Set prm = New ADODB.Parameter
'    With cmd
'        .ActiveConnection = gcnnBilling
'        .CommandText = "up_splitforexam"
'        .CommandType = adCmdStoredProc
'
'        ' set parameters then execute
'        .Parameters(0).Direction = adParamReturnValue
'        .Parameters(1).Type = adChar
'        .Parameters(1).Value = pContno
'        .Parameters(1).Direction = adParamInput
'
'        .Execute
'        lzSplitForExam = (.Parameters(0) = 1)
'    End With
'End Function

Public Function lzSplitForExam(ByVal pContNo As String, ByVal pRegNum As String) As Boolean
                                                        
Dim cmd As ADODB.Command
Dim prm As ADODB.Parameter
    
    ' create command
    Set cmd = New ADODB.Command
    Set prm = New ADODB.Parameter
    With cmd
        .ActiveConnection = gcnnBilling
        .CommandText = "upnew_splitforexam"
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
        lzSplitForExam = (.Parameters(0) = 1)
    End With
End Function

Public Function lzApplyADR(ByVal pCUSCDE As String, _
                            ByVal pREFTYP As String, _
                            ByVal pREFNUM As Long, _
                            ByVal pADRAMT As Currency, _
                            ByVal pUSERID As String, _
                            ByVal pREMARK As String) As Long
On Error GoTo ErrCatcher1
frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: Start Function" & vbCrLf
Dim cmdGetCustomer As ADODB.Command
frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: Dim cmdGetCustomer As ADODB.Command" & vbCrLf
Dim prmGetCustomer As ADODB.Parameter
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: Dim prmGetCustomer As ADODB.Parameter" & vbCrLf
    ' create command
    Set cmdGetCustomer = New ADODB.Command
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: Set cmdGetCustomer = New ADODB.Command" & vbCrLf
    With cmdGetCustomer
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR:  With cmdGetCustomer" & vbCrLf
        Set .ActiveConnection = gcnnBilling
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR:  Set .ActiveConnection = gcnnBilling" & vbCrLf
        .CommandText = "up_applyadr"
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR:.CommandText = ""up_applyadr""" & vbCrLf
        .CommandType = adCmdStoredProc
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .CommandType = adCmdStoredProc" & vbCrLf
    
        ' set parameters then execute
        .Parameters(0).Direction = adParamReturnValue
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(0).Direction = adParamReturnValue" & vbCrLf
        .Parameters(1).Type = adChar
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(1).Type = adChar" & vbCrLf
        .Parameters(1).Value = pCUSCDE
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(1).Value = pCUSCDE" & vbCrLf
        .Parameters(1).Direction = adParamInput
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(1).Direction = adParamInput" & vbCrLf
        .Parameters(2).Type = adChar
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(2).Type = adChar" & vbCrLf
        .Parameters(2).Value = pREFTYP
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(2).Value = pREFTYP" & vbCrLf
        .Parameters(2).Direction = adParamInput
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(2).Direction = adParamInput" & vbCrLf
        .Parameters(3).Type = adBigInt
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(3).Type = adBigInt" & vbCrLf
        .Parameters(3).Value = pREFNUM
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(3).Value = pREFNUM" & vbCrLf
        .Parameters(3).Direction = adParamInput
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(3).Direction = adParamInput" & vbCrLf
        .Parameters(4).Type = adCurrency
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(4).Type = adCurrency" & vbCrLf
        .Parameters(4).Value = pADRAMT
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(4).Value = pADRAMT" & vbCrLf
        .Parameters(4).Direction = adParamInput
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(4).Direction = adParamInput" & vbCrLf
        .Parameters(5).Type = adChar
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(5).Type = adChar" & vbCrLf
        .Parameters(5).Value = pREMARK
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(5).Value = pREMARK" & vbCrLf
        .Parameters(5).Direction = adParamInput
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(5).Direction = adParamInput" & vbCrLf
        .Parameters(6).Type = adChar
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(6).Type = adChar" & vbCrLf
        .Parameters(6).Value = pUSERID
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(6).Value = pUSERID" & vbCrLf
        .Parameters(6).Direction = adParamInput
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Parameters(6).Direction = adParamInput" & vbCrLf
       
       
        .Execute
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: .Execute" & vbCrLf
        lzApplyADR = .Parameters(0)
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: lzApplyADR = .Parameters(0)" & vbCrLf
        If lzApplyADR > 0 Then
            frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: If lzApplyADR > 0 Then" & vbCrLf
            MsgBox "ADR Control Number:  " & Trim(str(.Parameters(0))), vbInformation
            
        Else
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: Else" & vbCrLf
            MsgBox "Error on ADR transaction. Please check all values, then retry.", vbQuestion
        End If
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: End If" & vbCrLf
        
     End With
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: End With" & vbCrLf
    frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & "lzApplyADR: End Function" & vbCrLf
Exit Function
ErrCatcher1:
    If err.Number <> 0 Then
        MsgBox "Error: " & err.Number & vbCrLf & "Description:" & err.Description
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & " *ERROR* gzGetControlNo: Error No:" & err.Number & " " & vbCrLf
        frmManifestCont.txtLog.Text = frmManifestCont.txtLog.Text & " *ERROR* gzGetControlNo: Error Description:" & err.Description & " " & vbCrLf
        err.Clear
    End If

End Function

Public Function lzVoidADR(ByVal pCUSCDE As String, _
                           ByVal pREFNUM As Long, _
                           ByVal pUSERID As String, _
                           ByVal pREASON As String) As Long
Dim cmdGetCustomer As ADODB.Command
Dim prmGetCustomer As ADODB.Parameter
    
    ' create command
    Set cmdGetCustomer = New ADODB.Command
    With cmdGetCustomer
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_voidadrtran"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        .Parameters(0).Direction = adParamReturnValue
        .Parameters(1).Type = adChar
        .Parameters(1).Value = pCUSCDE
        .Parameters(1).Direction = adParamInput
        .Parameters(2).Type = adBigInt
        .Parameters(2).Value = pREFNUM
        .Parameters(2).Direction = adParamInput
        .Parameters(3).Type = adChar
        .Parameters(3).Value = pREASON
        .Parameters(3).Direction = adParamInput
        .Parameters(4).Type = adChar
        .Parameters(4).Value = pUSERID
        .Parameters(4).Direction = adParamInput
       
        .Execute
        
        lzVoidADR = .Parameters(0)
        If lzVoidADR > 0 Then
            MsgBox "ADR Control Number:  " & Trim(str(.Parameters(0))), vbInformation
        Else
            MsgBox "Error on ADR transaction. Please check all values, then retry.", vbQuestion
        End If
     
     End With
    
End Function

Public Function lzGetADRBal(ByVal pCode As String) As Currency
Dim cmdGetADRBal As ADODB.Command
Dim prmGetADRBal As ADODB.Parameter
    
    ' create command
    Set cmdGetADRBal = New ADODB.Command
    With cmdGetADRBal
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getadrbal"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        Set prmGetADRBal = .CreateParameter(, adChar, adParamInput, 6, pCode)
        .Parameters.Append prmGetADRBal
        Set prmGetADRBal = .CreateParameter("pTYPE", adCurrency, adParamOutput)
        .Parameters.Append prmGetADRBal
        .Execute
        If Not IsNull(.Parameters("pTYPE")) Then
            lzGetADRBal = .Parameters("pTYPE")
        Else
            lzGetADRBal = 0
        End If
    End With

End Function

Public Function lzGetCustomerName(ByVal pCode As String) As String
Dim cmdGetCustomer As ADODB.Command
Dim prmGetCustomer As ADODB.Parameter
    
    ' create command
    Set cmdGetCustomer = New ADODB.Command
    With cmdGetCustomer
        Set .ActiveConnection = gcnnBilling
        .CommandText = "up_getcustomerinfo"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
        .Parameters(0).Direction = adParamReturnValue
        .Parameters(1).Type = adChar
        .Parameters(1).Value = pCode
        .Parameters(1).Direction = adParamInput
        .Parameters(2).Type = adChar
        .Parameters(2).Direction = adParamOutput
        .Parameters(3).Type = adChar
        .Parameters(3).Direction = adParamOutput
        .Parameters(4).Type = adChar
        .Parameters(4).Direction = adParamOutput
        .Parameters(5).Type = adChar
        .Parameters(5).Direction = adParamOutput
        .Parameters(6).Type = adChar
        .Parameters(6).Direction = adParamOutput
       
        .Execute
        
        lzGetCustomerName = Trim("" & .Parameters(3))
     End With
    
End Function

Public Function Chk_Manifest(ByVal strBillNo As String, ByVal strConNo As String) As Integer
    On Error GoTo err
    
    Dim cmdChkBillNo As ADODB.Command
        
    ' create command
    Set cmdChkBillNo = New ADODB.Command
    With cmdChkBillNo
    Set .ActiveConnection = gcnnBilling
        .CommandText = "sp_Manifest_chkBillNoStatus"
        .CommandType = adCmdStoredProc
        
        ' set parameters then execute
        .Parameters(0).Direction = adParamReturnValue
        .Parameters(1).Type = adVarChar
        .Parameters(1).Value = strBillNo
        .Parameters(1).Direction = adParamInput
        .Parameters(2).Type = adVarChar
        .Parameters(2).Value = strConNo
        .Parameters(2).Direction = adParamInput
        .Execute
        Chk_Manifest = Trim(.Parameters(0))
    End With
    Exit Function
err:
    MsgBox err.Description, vbOKCancel, "Chk_Manifest"
End Function

Public Function Chk_SBMAHold(ByVal strBillNo As String, ByVal strConNo As String) As Integer
    
    'PRNH
    On Error GoTo err
    'On Error Resume Next
    
    Dim cmdChkBillNo As ADODB.Command
        
    ' create command
    Set cmdChkBillNo = New ADODB.Command
    With cmdChkBillNo
        Set .ActiveConnection = gcnnBilling
            .CommandText = "usp_Manifest_SBMAHold"
            .CommandType = adCmdStoredProc
        
            ' set parameters then execute
            .Parameters(0).Direction = adParamReturnValue
            .Parameters(1).Type = adVarChar
            'PRNH
            .Parameters(1).Size = 30
            .Parameters(1).Value = strBillNo
            .Parameters(1).Direction = adParamInput
            .Parameters(2).Type = adVarChar
            'PRNH
            .Parameters(2).Size = 30
            .Parameters(2).Value = strConNo
            .Parameters(2).Direction = adParamInput
            .Execute
            Chk_SBMAHold = Trim(.Parameters(0))
     End With
     Exit Function
err:
     MsgBox err.Description, vbOKCancel, "Chk_SBMAHold"
End Function

Public Function Chk_BOCHold(ByVal strBillNo As String, ByVal strConNo As String) As Integer
    
    'PRNH
    On Error GoTo err
    'On Error Resume Next
    
    
    Dim cmdChkBillNo As ADODB.Command
        
    ' create command
    Set cmdChkBillNo = New ADODB.Command
    With cmdChkBillNo
        Set .ActiveConnection = gcnnBilling
            .CommandText = "usp_Manifest_BOCHold"
            .CommandType = adCmdStoredProc
        
            ' set parameters then execute
            .Parameters(0).Direction = adParamReturnValue
            .Parameters(1).Type = adVarChar
            'PRNH
            .Parameters(1).Size = 30
            .Parameters(1).Value = strBillNo
            .Parameters(1).Direction = adParamInput
            .Parameters(2).Type = adVarChar
            'PRNH
            .Parameters(2).Size = 30
            .Parameters(2).Value = strConNo
            .Parameters(2).Direction = adParamInput
            .Execute
            Chk_BOCHold = Trim(.Parameters(0))
     End With
     Exit Function
err:
     MsgBox err.Description, vbOKCancel, "Chk_SBMAHold"
End Function

Public Function Up_Manifest(ByVal strBillNo As String, ByVal strConNo As String, ByVal strGpsNum As String, ByVal strregnum As String) As Boolean
    Dim cmdUpManifest As ADODB.Command
    
    'PRNH
    On Error GoTo err
    'On Error Resume Next
    
    ' create command
    Set cmdUpManifest = New ADODB.Command
    With cmdUpManifest
        Set .ActiveConnection = gcnnBilling
            '.CommandText = "sp_Manifest_wrtGpsNum"
            .CommandText = "sp_Manifest_wrtGpsNum1"
            .CommandType = adCmdStoredProc
        
            ' set parameters then execute
            .Parameters(0).Direction = adParamReturnValue
            .Parameters(1).Type = adVarChar
            'PRNH
            .Parameters(1).Size = 21
            .Parameters(1).Value = Trim(strregnum)
            .Parameters(1).Direction = adParamInput
            .Parameters(2).Type = adVarChar
            'PRNH
            .Parameters(2).Size = 17
            .Parameters(2).Value = Trim(strConNo)
            .Parameters(2).Direction = adParamInput
            .Parameters(3).Type = adNumeric
            'PRNH
            .Parameters(3).Size = 9
            .Parameters(3).Value = Trim(strGpsNum)
            .Parameters(3).Direction = adParamInput
            
            .Parameters(4).Type = adVarChar
            'PRNH
            .Parameters(1).Size = 26
            .Parameters(4).Value = Trim(strBillNo)
            .Parameters(4).Direction = adParamInput
            
            .Execute
            If Trim(.Parameters(0)) = 1 Then
                Up_Manifest = True
            Else
                Up_Manifest = False
            End If
     End With
     Exit Function
     
err:
     MsgBox err.Description, vbOKOnly, "Up_Manifest"
End Function


'--------------------------------------------------------------------
' Function      :   gzGetCustomerName()
' Parameters    :   equipmentID, status. event_type       -> customer code (string * 6)
' Returns       :   String      -> customer name (string * 40)
'--------------------------------------------------------------------
Public Function gzGetGKey(ByVal pCont As String, ByVal pStatus As String, ByVal pType As String) As String
Dim cmdGetGKey As ADODB.Command
Dim prmGetCustomer As ADODB.Parameter
    
    ' create command
    Set cmdGetGKey = New ADODB.Command
    With cmdGetGKey
        Set .ActiveConnection = gcnnNavis
        .CommandText = "usp_get_gkey"
        .CommandType = adCmdStoredProc
    
        ' set parameters then execute
            .Parameters(0).Direction = adParamReturnValue
            .Parameters(1).Type = adVarChar
            .Parameters(1).Value = Trim(pCont)  'equip_id
            .Parameters(1).Direction = adParamInput
            .Parameters(2).Type = adVarChar
            .Parameters(2).Value = Trim(pStatus)   'status
            .Parameters(2).Direction = adParamInput
            .Parameters(3).Type = adVarChar
            .Parameters(3).Value = Trim(pType)  'event_type
            .Parameters(3).Direction = adParamInput
'            .Parameters(4).Type = adChar
'            .Parameters(4).Direction = adParamOutput
            .Execute
    End With
    
    'MsgBox cmdGetGKey.Parameters(1) 'gzGetGKey
    
End Function

Public Function ConnectToNavis() As Boolean '(ByVal pCnnStr As String) As Boolean
Dim errBilling As ADODB.Error
Dim lsErrStr As String
   
    ' Open the database.
    On Error GoTo err_Connect
    Set gcnnNavis = New ADODB.Connection
    
'PRNH -Prod
'        gcnnNavis.Open "Provider=sqloledb" & _
'        ";Data Source=sbitc-db" & _
'        ";Initial Catalog=apex" & _
'        ";User ID=tosadmin;Password=tosadmin"
'
'PRNH - Prod IP
'    gcnnNavis.Open "Provider=sqloledb" & _
'            ";Data Source=192.168.11.151" & _
'            ";Initial Catalog=apex" & _
'            ";User ID=tosadmin;Password=tosadmin"

'PRNH - Test
        gcnnNavis.Open "Provider=sqloledb" & _
        ";Data Source=192.168.11.155" & _
        ";Initial Catalog=apex" & _
        ";User ID=sa_ictsi;Password=Ictsi123"


        
    gbNavis = True
    ConnectToNavis = True
   
    Exit Function
    
err_Connect:
    ConnectToNavis = False: gbConnected = False
    For Each errBilling In gcnnBilling.Errors
        With errBilling
            lsErrStr = "Connection Error. " & .Description & vbLf & _
            "Verify Log On then retry.  Contact MIS for assistance."
        End With
        MsgBox lsErrStr, vbCritical
    Next
End Function
