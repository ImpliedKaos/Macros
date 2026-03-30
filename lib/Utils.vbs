' General helper functions for the macro system

' Function to get the current date and time in the specified format
Function GetCurrentDateTime() As String
    GetCurrentDateTime = Format(Now, "yyyy-mm-dd HH:nn:ss")
End Function

' Function to manipulate strings
Function Capitalize(ByVal inputString As String) As String
    Capitalize = UCase(Left(inputString, 1)) & Mid(inputString, 2)
End Function

' Function to check if a string is null or empty
Function IsNullOrEmpty(ByVal inputString As String) As Boolean
    IsNullOrEmpty = (Len(Trim(inputString)) = 0)
End Function

' Function to concatenate a list of strings
Function ConcatenateStrings(ParamArray Args() As Variant) As String
    Dim result As String
    Dim i As Integer
    For i = LBound(Args) To UBound(Args)
        result = result & Args(i)
    Next i
    ConcatenateStrings = result
End Function

' Example usage:
' Dim currentDate As String
' currentDate = GetCurrentDateTime()
' MsgBox currentDate
