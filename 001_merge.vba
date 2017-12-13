Sub Compile_C3files()

Application.DisplayAlerts = False
Application.ScreenUpdating = False

    With Application.FileDialog(msoFileDialogOpen)
            .Title = "Select the files to be compiled"
            .Filters.Clear
            .Filters.Add "Excel 97-2003 Workbook", "*.xls"
            .FilterIndex = 1
            .AllowMultiSelect = True
            .InitialFileName = ActiveWorkbook.Path
            .Show
        If (.SelectedItems.Count = 0) Then End
    End With

        Dim FilePath
        Dim FileIndex, SheetIndex, NumCols As Integer
        SheetIndex = 1
        FileIndex = 1
        Dim NumLineCurrent, NumLineTotal

        NumLineTotal = 1

        For Each FilePath In Application.FileDialog(msoFileDialogOpen).SelectedItems
            FilePath = Application.FileDialog(msoFileDialogOpen).SelectedItems(FileIndex)

            'Dim File, fs
            'Set fs = CreateObject("Scripting.FileSystemObject")
            'MyFile = fs.GetFile(FilePath)

            Workbooks.Open Filename:=FilePath, UpdateLinks:=0
            Windows(Application.ActiveWorkbook.Name).Activate
            Set CurrentWorkbook = Application.ActiveWorkbook

            'We check each sheet considering that a sheet is used if cells(2,1) isn't empty (at least 1 record)
            'the title columns are memorized for the first "non-empty" sheet encountered
            For Each CurrentSheet In CurrentWorkbook.Sheets
                CurrentSheet.Select
                If Not (CurrentSheet.Cells(2, 1).Value = "") Then

                    If SheetIndex = 1 Then 'First non-empty sheet encountered
                        CurrentSheet.Range("A1").Select
                        NumCols = CurrentSheet.Range(Selection, Selection.End(xlToRight)).Count
                        CurrentSheet.Range(CurrentSheet.Cells(1, 1), CurrentSheet.Cells(1, NumCols)).Select
                        Selection.Copy

                        Workbooks.Add
                        Windows(Application.ActiveWorkbook.Name).Activate
                        Set ReferenceWorkbook = Application.ActiveWorkbook

                        ReferenceWorkbook.Sheets(1).Activate
                        ReferenceWorkbook.Sheets(1).Range("A1").Select
                        ActiveSheet.Paste

                    End If

                    'CurrentWorkbook.Sheets("list").Select

                    'count the number of rows
                    CurrentWorkbook.Activate

                    CurrentSheet.Range("A2").Select 'Assuming the first column has no empty record !
                    NumLineCurrent = CurrentSheet.Range(Selection, Selection.End(xlDown)).Count

                    CurrentSheet.Range(CurrentSheet.Cells(2, 1), CurrentSheet.Cells(2, NumCols)).Select
                    CurrentSheet.Range(Selection, Selection.End(xlDown)).Select
                    Selection.Copy

                    ReferenceWorkbook.Sheets(1).Activate
                    ReferenceWorkbook.Sheets(1).Range(Cells(NumLineTotal + 1, 1), Cells(NumLineTotal + 1, 1)).Select
                    ActiveSheet.Paste
                    NumLineTotal = NumLineTotal + NumLineCurrent

                    CurrentWorkbook.Activate
                    SheetIndex = SheetIndex + 1
                End If 'end of non-empty sheet check

            Next CurrentSheet

            Windows(CurrentWorkbook.Name).Activate
            ActiveWindow.Close

            FileIndex = FileIndex + 1
        Next FilePath

    Application.DisplayAlerts = True
    Application.ScreenUpdating = True

    MsgBox ("Compilation of files completed without error")

End Sub
