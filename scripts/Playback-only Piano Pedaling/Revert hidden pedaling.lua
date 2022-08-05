local app=DoApp.DoApp()
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
app:doCommand([[Edit.SelectAll]])
app:doCommand([[Filter.PedalLines]])
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[Window.ShowBottomPanel?Set=true]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kEventCustomScale&Value=int: 100]])
app:doCommand([[Window.ShowBottomPanel?Set=false]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
app:doCommand([[Edit.SelectNone]])
