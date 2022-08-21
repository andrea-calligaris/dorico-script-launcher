local app=DoApp.DoApp()

app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoImmediateAbsoluteIsApproximate&Value=string: "true"]])

-- Fix selection:
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoImmediateAbsoluteApproximateAppearance&Value=string: "kC"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kTempoImmediateAbsoluteApproximateAppearance&Value=string: "kApproximatelyEqualsSign"]])
