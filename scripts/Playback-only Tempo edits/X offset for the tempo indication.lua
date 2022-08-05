local app=DoApp.DoApp()

app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[Window.ShowBottomPanel?Set=true]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoImmediateDx&Value=string: "-7"]])
