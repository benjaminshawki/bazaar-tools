#Requires AutoHotkey v2.0

; =======================
; Adjustable Parameters
; =======================

; For dragging action ('s' and 'XButton2' hotkeys)
dragDestYPercent := 0.125     ; Destination Y percentage for dragging (12.5% from the top)

; For clicking actions ('d' and 'f' hotkeys)
clickDestYPercent := 0.2      ; Destination Y percentage for clicking (20% from the top)
clickOffsetLeft := -540       ; Horizontal offset for 'd' hotkey (left of center)
clickOffsetRight := 540       ; Horizontal offset for 'f' hotkey (right of center)


; Activate hotkeys only when 'TheBazaar.exe' window is active
#HotIf WinActive("ahk_exe TheBazaar.exe")

A_MaxHotkeysPerInterval := 200

; Set input level to 1 for remapping wheel actions
#InputLevel 1

; Map WheelUp and WheelDown to send the space key
WheelUp:: Send("{Space}")
WheelDown:: Send("{Space}")
a:: Send("{Space}")

; Reset InputLevel to default for the following hotkeys
#InputLevel 0

; Hotkeys for 'XButton2' (XButton2 is mouse Forward and XButton1 is mouse backward) and 's' to perform a drag action to the top center
XButton2::
s:: {
    DragMouseToTopCenter()
}

; Hotkey for 'd' to click at an offset to the left of center
d:: {
    ClickAtOffset(clickOffsetLeft)
}

; Hotkey for 'f' to click at an offset to the right of center
f:: {
    ClickAtOffset(clickOffsetRight)
}

; Function to drag the mouse from the current position to the top center of the window
DragMouseToTopCenter() {
    BlockInput true
    ; Store the initial mouse position
    MouseGetPos &start_x, &start_y

    ; Get 'TheBazaar.exe' window's position and size
    WinGetPos &winX, &winY, &winWidth, &winHeight, "ahk_exe TheBazaar.exe"

    ; Calculate destination coordinates
    dest_x := winWidth / 2
    dest_y := winY + (winHeight * dragDestYPercent)

    ; Press and hold the left mouse button at the current position
    MouseMove start_x, start_y, 20
    Click "Down"
    Sleep 100

    ; Move up 100 pixels in the Y direction
    upDestY := start_y + 100
    MouseMove start_x, upDestY
    Sleep 100

    ; Move to the destination with a moderate speed
    MouseMove dest_x, dest_y, 20
    Sleep 200

    ; Release the mouse button
    Click "Up"

    ; Return the mouse cursor to the initial position
    MouseMove start_x, start_y, 20
    BlockInput false
}

; Function to move the mouse to a specified horizontal offset and click
ClickAtOffset(offsetX) {
    BlockInput true
    ; Store the initial mouse position
    MouseGetPos &start_x, &start_y

    ; Get 'TheBazaar.exe' window's position and size
    WinGetPos &winX, &winY, &winWidth, &winHeight, "ahk_exe TheBazaar.exe"

    ; Calculate destination coordinates with the given horizontal offset
    dest_x := (winWidth / 2) + offsetX
    dest_y := winY + (winHeight * clickDestYPercent)

    ; Move to the destination with a moderate speed
    MouseMove dest_x, dest_y, 20
    Sleep 100

    ; Perform a click at the destination
    Click
    Sleep 100

    ; Return the mouse cursor to the initial position
    MouseMove start_x, start_y, 20
    BlockInput false
}
