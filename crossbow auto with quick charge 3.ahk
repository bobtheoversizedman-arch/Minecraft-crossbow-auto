#Requires AutoHotkey v2.0

; Press F4 to turn the automatic crossbow ON and OFF
*~$F4::
{
    static toggle := false
    toggle := !toggle
    
    if (toggle) {
        ; Starts the shooting loop immediately
        SetTimer(FastCrossbow, 10)
    } else {
        ; Stops the loop and safely releases the right-click
        SetTimer(FastCrossbow, 0)
        Click "Right Up"
    }
}

FastCrossbow() {
    ; 1. Press and hold Right-Click to load
    Click "Right Down"
    
    ; 2. Wait ~0.52 seconds (520 milliseconds) for Quick Charge III to finish loading
    Sleep 520 
    
    ; 3. Release Right-Click
    Click "Right Up"
    
    ; 4. Tiny pause (20ms) before the next cycle
    Sleep 20 
}
