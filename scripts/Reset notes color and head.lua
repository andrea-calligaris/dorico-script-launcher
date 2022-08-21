local app=DoApp.DoApp()

app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[Edit.SelectAll]])
app:doCommand([[Filter.NotesAndChords]])
app:doCommand([[Edit.SetNoteheadSetOverride?NoteheadSetEntityID=noteheadset.large]])

-- Wait:
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePropertyEnableSwitch?Type=kEventColour&Value=false]])
app:doCommand([[Edit.SelectNone]])
app:doCommand([[View.SetNoteColoursOptions?NoteColoursType=kColourNotesOutOfRange]])
