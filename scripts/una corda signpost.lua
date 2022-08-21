local app=DoApp.DoApp()

app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kPlayingTechniquesUnaCordaPedal&PaletteSectionID=kPlayingTechniquesPedalLinePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])

-- Wait:
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineContinuationType&Value=string: "kLine"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineContinuationType&Value=string: "kNone"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kUnaCordaPedalSignAppearance&Value=string: "kSymbol"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kUnaCordaPedalSignAppearance&Value=string: "kAbbreviatedText"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineShowContinuationSignInParentheses&Value=string: "false"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kPedalLineStartText&Value=string: ""]])
