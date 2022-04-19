local app=DoApp.DoApp()
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kPlayingTechniquesSustainPedal&PaletteSectionID=kPlayingTechniquesKeyboardPanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])
app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kPlayingTechniquesSustainPedal&PaletteSectionID=kPlayingTechniquesPedalLinePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineStartLevel&Value=string: "1/2"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineEndLevel&Value=string: "1/2"]])

app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
