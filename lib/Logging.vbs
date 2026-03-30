Option Explicit

Dim logFilePath
Dim errorLogFilePath
Dim startTime
Dim endTime
Dim duration
Dim userName
Dim macroName
Dim status
Dim errorDetails

' Set the file path for logging
logFilePath = "MacroExecutionLog.csv"
errorLogFilePath = "ErrorLog.txt"

Sub LogExecution(macroName, status, Optional errorDetails = "")
    ' Get the current time
    startTime = Now
    ' Execute your macro here
    On Error GoTo ErrorHandler

    ' Macro execution code
    '---- Your macro logic goes here ----

    status = "Success"
    GoTo EndLog

ErrorHandler:
    status = "Failed"
    duration = DateDiff("s", startTime, Now)
    errorDetails = Err.Description
    LogErrorDetails macroName, status, duration, errorDetails
    Resume Next

EndLog:
    duration = DateDiff("s", startTime, Now)
    LogExecutionDetails macroName, status, duration, errorDetails
End Sub

Sub LogExecutionDetails(macroName, status, duration, errorDetails)
    Dim fileNum
    Dim logLine
    fileNum = FreeFile
    logLine = Format(Now, "yyyy-mm-dd hh:mm:ss") & "," & userName & "," & macroName & "," & status & "," & duration & "," & errorDetails
    Open logFilePath For Append As #fileNum
    Print #fileNum, logLine
    Close #fileNum
End Sub

Sub LogErrorDetails(macroName, status, duration, errorDetails)
    Dim errorFileNum
    errorFileNum = FreeFile
    Open errorLogFilePath For Append As #errorFileNum
    Print #errorFileNum, Format(Now, "yyyy-mm-dd hh:mm:ss") & " - " & macroName & " - " & status & " - Duration: " & duration & " seconds - Error: " & errorDetails
    Close #errorFileNum
End Sub

' Example of running a macro
Sub ExampleMacro()
    LogExecution "ExampleMacro", ""
End Sub