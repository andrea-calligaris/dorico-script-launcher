local app=DoApp.DoApp()

app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=tempopreset.atempo&PaletteSectionID=kTempoResetPanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])

-- Fix bad selection bug of the just added tempo:
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoText&Value=string: ""]])
