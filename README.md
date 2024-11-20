# AutoHotkey Script for TheBazaar.exe 

This AutoHotkeyscript automates certain actions in **TheBazaar.exe**. This script will most likely be temporary until the Devs at Tempo have implemented an easy way to rebind hotkeys and to even use certain hotkeys (at the time of writing this the only default hotkey I could find was space-bar which toggles the inventory, which I've also rebound to scroll wheel up and down in the script)

## Requirements

- **AutoHotkey v2.0**: Download from [https://www.autohotkey.com/](https://www.autohotkey.com/)

## Important Note

- The values in the **Adjustable Parameters** section are configured for my setup. You will likely need to adjust these values to match your monitor size and game resolution.

## Adjustable Parameters

- `dragDestYPercent`: Vertical position for drag actions (`s` and `XButton2` hotkeys). Default is `0.125` (12.5% from the top).
- `clickDestYPercent`: Vertical position for click actions (`d` and `f` hotkeys). Default is `0.2` (20% from the top).
- `clickOffsetLeft`: Horizontal offset for the `d` hotkey (left of center). Default is `-540`.
- `clickOffsetRight`: Horizontal offset for the `f` hotkey (right of center). Default is `540`.

Adjust these values in the script to suit your setup.

A qucik note about the clickOffsetLeft and Right, when adjusting these keep in mind that there are certain encounters where the UI puts the reroll and leave the encounter in differents spots. After a monster encounter (when collecting your prize) the `leave` button is smaller in comparison to a regular shop encounter. Idc why this is, but using the position of the smaller `leave` button also works fine for the larger one. I would suggest tweaking this value and testing it in a normal game after a monster encounter.
 
## Running the script
Please make sure you run the script `keybinds.ahk` as Administrator (Right-click on the scrip and select Run as administrator).
