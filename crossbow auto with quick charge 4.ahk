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
    
    ; 2. Wait exactly 0.3 seconds (300 milliseconds) for Quick Charge V to finish loading
    Sleep 300 
    
    ; 3. Release Right-Click to fire the arrow
    Click "Right Up"
    
    ; 4. Tiny pause (20ms) to ensure Minecraft registers the shot before loading the next arrow
    Sleep 20 
}