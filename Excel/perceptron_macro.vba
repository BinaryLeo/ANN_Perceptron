Sub Troca_pesos()
'
' change weight Macro


Dim noerrorFound As Boolean
Dim x As Long

'Loop until a blank cell is found in Column A
  Do While noerrorFound = False
    x = x + 1
    Range("C20").Value = Range("C20").Value + 1

'
    Range("A10:A17").Select
    Selection.Copy
    Range("D20").Select
    Application.CutCopyMode = False
    Range("D10:D17").Select
    Selection.Copy
    Range("C10:C17").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Application.CutCopyMode = False
     If Range("c5").Value = 0 Then
      noerrorFound = True
    End If
  Loop

'Report out first blank cell found in Column A
  MsgBox "Trained Neuron  - 100%"

End Sub
Sub Troca_amostras()
'
' change samples
'

'
    Range("E8:E166").Select
    Selection.Copy
    Application.CutCopyMode = False
    Selection.Copy
    Range("F8:F166").Select
    Range("F166").Activate
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Application.CutCopyMode = False
    ActiveWindow.SmallScroll Down:=-57
    ActiveWindow.ScrollRow = 137
    ActiveWindow.ScrollRow = 134
    ActiveWindow.ScrollRow = 132
    ActiveWindow.ScrollRow = 125
    ActiveWindow.ScrollRow = 119
    ActiveWindow.ScrollRow = 117
    ActiveWindow.ScrollRow = 110
    ActiveWindow.ScrollRow = 105
    ActiveWindow.ScrollRow = 99
    ActiveWindow.ScrollRow = 96
    ActiveWindow.ScrollRow = 90
    ActiveWindow.ScrollRow = 88
    ActiveWindow.ScrollRow = 79
    ActiveWindow.ScrollRow = 67
    ActiveWindow.ScrollRow = 65
    ActiveWindow.ScrollRow = 61
    ActiveWindow.ScrollRow = 54
    ActiveWindow.ScrollRow = 52
    ActiveWindow.ScrollRow = 47
    ActiveWindow.ScrollRow = 45
    ActiveWindow.ScrollRow = 36
    ActiveWindow.ScrollRow = 32
    ActiveWindow.ScrollRow = 30
    ActiveWindow.ScrollRow = 27
    ActiveWindow.ScrollRow = 25
    ActiveWindow.ScrollRow = 23
    ActiveWindow.ScrollRow = 21
    ActiveWindow.ScrollRow = 18
    ActiveWindow.ScrollRow = 16
    ActiveWindow.ScrollRow = 14
    ActiveWindow.ScrollRow = 9
    ActiveWindow.ScrollRow = 5
    ActiveWindow.ScrollRow = 3
    ActiveWindow.ScrollRow = 1
End Sub
Sub Zera_contador()
'
' restart counter
'

'
    Range("C20").Select
    ActiveCell.FormulaR1C1 = "0"
    Range("D20").Select
End Sub
Sub Inicia_pesos()
'
' Start Weight Macro
'

'
    Range("A10:A17").Select
    Selection.Copy
    Range("C10:C17").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
End Sub
