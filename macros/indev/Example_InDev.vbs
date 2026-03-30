' Example In-Development Macro
' This macro is a template showing best practices for development macros.
' Only Super Users should have access to this macro.

Sub Example_InDev()
    ' Your code goes here
    
    ' Best practices:
    ' 1. Use clear and descriptive naming for all variables and functions.
    ' 2. Comment your code to explain the purpose of complex logic.
    ' 3. Modularize code by breaking it into smaller, reusable functions.
    ' 4. Handle errors gracefully using error handling routines.
    
    On Error GoTo ErrorHandler
    
    ' Example logic
    Dim exampleVariable As String
    exampleVariable = "This is an example of a best practice."
    MsgBox exampleVariable
    
    Exit Sub

ErrorHandler:
    MsgBox "An error occurred: " & Err.Description
End Sub
