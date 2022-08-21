local app=DoApp.DoApp()

app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kEventPlayStartOffset&Value=int: 120]])

app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=tempopreset.andante&PaletteSectionID=kTempoAbsolutePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])

-- Fix bad selection bug of the just added tempo:
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoText&Value=string: ""]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoImmediateAbsoluteShowMetronomeMarkFlag&Value=string: "false"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoImmediateShowTextFlag&Value=string: "false"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoImmediateAbsoluteTempoMicrosecs&Value=double: 1.5e+06]])
