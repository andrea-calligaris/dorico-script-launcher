local app=DoApp.DoApp()

app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kPlayingTechniquesSustainPedal&PaletteSectionID=kPlayingTechniquesKeyboardPanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])
app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kPlayingTechniquesSustainPedal&PaletteSectionID=kPlayingTechniquesPedalLinePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kSustainPedalSignAppearance&Value=string: "kPedText"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineEndHookAppearance&Value=string: "kNoHook"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kEventColour&Value=string: "#57dcdcdc"]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineStartText&Value=string: "1/4"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineStartLevel&Value=string: "1/4"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineEndLevel&Value=string: "1/4"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineContinuationLineWidth&Value=string: "1/4"]])

app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
app:doCommand([[Window.ShowBottomPanel?Set=false]])
