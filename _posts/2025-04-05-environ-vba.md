---
title: Using environment variables with VBA 📄
tags: [Excel, VBA]
---

The `Environ` VBA function allows access to Windows' environment variables, which provide system configuration details.
E.g. `Environ("USERNAME")` returns the username and `Environ("USERPROFILE")` its user folder.

## Examples

| *envstring*  | Environ(*envstring*)    |
| ------------ | ----------------------- |
| COMPUTERNAME | LUCA-THINKPAD           |
| OneDrive     | C:\Users\lucaf\OneDrive |
| PUBLIC       | C:\Users\Public         |
| SystemDrive  | C:                      |
| USERDOMAIN   | example.com             |
| USERNAME     | lucaf                   |
| USERPROFILE  | C:\Users\lucaf          |

On an Active Directory-managed machine you might be able to get the user's email with `Environ("USERNAME") & "@" & Environ("USERDOMAIN")`.

## Environment variables by index

In addition to retrieving the variables through their name, you can retrieve them by index.
E.g. on my machine `Environ(41)` returns `USERNAME=lucaf`.
If the index is invalid, `Environ` returns an empty string.

You shouldn't use the index argument to retrieve the value of a specific variable, as the number and indexes of environment variables can change depending on machine and application.
Instead, you can use it to show all available environment variables in Excel ([download](/assets/2025/environ-vba/environ.xlsm)).

```vba
Sub WriteEnvironmentVariables()
    Dim i As Long
    i = 1
    Dim envStringValue As String
    Dim envStringValueArr As Variant
    
    Do While True
        envStringValue = Environ(i)
        If envStringValue = "" Then Exit Do
        envStringValueArr = Split(envStringValue, "=")
        ThisWorkbook.Worksheets(1).Cells(i, 1).Resize(columnsize:=2).Value = envStringValueArr
        i = i + 1
    Loop
End Sub
```

## Links

- [Office VBA Reference - Environ function](https://learn.microsoft.com/en-us/office/vba/language/reference/user-interface-help/environ-function)
- [Win32 API - Environment Variables](https://learn.microsoft.com/en-us/windows/win32/procthread/environment-variables)
- [PowerToys - Environment Variables](https://learn.microsoft.com/en-us/windows/powertoys/environment-variables)
