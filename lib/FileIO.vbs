Dim fs, jsonFile, parameterJson

' Function to write a parameter to a JSON file
Sub WriteParameter(parameterName, parameterValue)
    Set fs = CreateObject("Scripting.FileSystemObject")
    Dim folderPath
    folderPath = "data"  ' Path to data folder

    ' Create the folder if it doesn't exist
    If Not fs.FolderExists(folderPath) Then
        fs.CreateFolder(folderPath)
    End If

    ' Create JSON object
    parameterJson = "{\"" & parameterName & "\": \"" & parameterValue & "\"}"

    ' Write the JSON to a file
    Set jsonFile = fs.CreateTextFile(folderPath & "\parameters.json", True)
    jsonFile.WriteLine(parameterJson)
    jsonFile.Close
End Sub

' Function to read a parameter from a JSON file
Function ReadParameter(parameterName)
    Set fs = CreateObject("Scripting.FileSystemObject")
    Dim folderPath, jsonText, jsonObj
    folderPath = "data\parameters.json"

    ' Check if the file exists
    If fs.FileExists(folderPath) Then
        Set jsonFile = fs.OpenTextFile(folderPath, 1)
        jsonText = jsonFile.ReadAll
        jsonFile.Close

        ' Create the JSON object from the text
        Set jsonObj = JsonConverter.ParseJson(jsonText)
        ReadParameter = jsonObj(parameterName)
    Else
        ReadParameter = "File not found"
    End If
End Function