#!/usr/bin/osascript

on backgroundcolor()
    set maxValue to (2 ^ 16) - 1
    tell application "System Events"
        set mode to dark mode of appearance preferences
    end tell
    
    if mode then
        set rangestart to 0
        set rangeend to (maxValue * 0.4)
    else
        set rangestart to (maxValue * 0.6)
        set rangeend to maxValue
    end if
    
    set redValue to random number from rangestart to rangeend
    set greenValue to random number from rangestart to rangeend
    set blueValue to random number from rangestart to rangeend
    
    return {redValue, greenValue, blueValue}
end backgroundcolor

set newcolor to backgroundcolor()

tell application "Terminal"
    set the background color of the selected tab of window 1 to newcolor
end tell