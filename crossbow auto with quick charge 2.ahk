#Requires AutoHotkey v2.0

*~$F4::
{
    static toggle := false
    toggle := !toggle
    
    if (toggle) {
        SetTimer(FastCrossbow, 10)
    } else {
        SetTimer(FastCrossbow, 0)
        Click "Right Up"
    }
}

FastCrossbow() {
    Click "Right Down"
    Sleep 770 ; Quick Charge II (750ms + 20ms buffer)
    Click "Right Up"
    Sleep 20 
}
