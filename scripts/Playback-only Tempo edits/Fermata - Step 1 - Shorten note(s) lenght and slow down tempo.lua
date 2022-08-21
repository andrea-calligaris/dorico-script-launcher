local app=DoApp.DoApp()

app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kEventPlayEndOffset&Value=int: -240]])

app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=tempopreset.ritenuto&PaletteSectionID=kTempoRelativePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])

-- Fix bad selection bug of the just added tempo:
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePropertyEnableSwitch?Type=kTempoAbbreviatedText&Value=false]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoText&Value=string: ""]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoImmediateRelativePercent&Value=double: 20]])
