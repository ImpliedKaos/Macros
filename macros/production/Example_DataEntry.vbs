Option Explicit

Dim logFilePath
Dim logFile

' Set the log file path
logFilePath = "C:\path\to\your\logfile.log"
Set logFile = CreateObject("Scripting.FileSystemObject").OpenTextFile(logFilePath, 8, True)

Sub Log(message)
    Dim currentTime
    currentTime = Now()
    logFile.WriteLine(currentTime & " - " & message)
End Sub

Sub ExampleDataEntry()
    On Error GoTo ErrorHandler

    Log "Data entry process started."
    ' Your data entry logic goes here...

    Log "Data entry process completed successfully."
    Exit Sub

ErrorHandler:
    Log "Error: " & Err.Description
    Resume Next
End Sub

' Call the example data entry subroutine
ExampleDataEntry

' Close log file at the end of the operation
logFile.Close
