# AutoHotkey Script for TeBazaar.exe

This AutoHotkey script automates certain actions in **TheBazaar.exe**. It's a temporary solution until the developers at Tempo implement customizable hotkeys. Currently, the only default hotkey is the spacebar, which toggles the inventory. This script also remaps the scroll wheel up and down to perform the spacebar action.

## Requirements

- **AutoHotkey v2.0**: Download from [https://www.autohotkey.com/](https://www.autohotkey.com/)

## Important Note

- The values in the **Adjustable Parameters** are configured for my setup. You'll likely need to adjust these values to match your monitor size and game resolution.

## Adjustable Parameters

- `dragDestYPercent`: Vertical position for drag actions (`s` and `XButton2` hotkeys). Default: `0.125` (12.5% from the top).
- `clickDestYPercent`: Vertical position for click actions (`d` and `f` hotkeys). Default: `0.2` (20% from the top).
- `clickOffsetLeft`: Horizontal offset for the `d` hotkey (left of center). Default: `-540`.
- `clickOffsetRight`: Horizontal offset for the `f` hotkey (right of center). Default: `540`.

**Note:** When adjusting `clickOffsetLeft` and `clickOffsetRight`, keep in mind that the UI places the "Leave" button differently in certain encounters. After a monster encounter, when collecting your prize, the "Leave" button is smaller compared to a regular shop encounter. Using the position of the smaller "Leave" button also works for the larger one. It's recommended to tweak this value and test it during a normal game after a monster encounter.

If you find an offset that works for the "Leave" button (`clickOffsetRight`), you can use the negative of that value for the "Reroll" button (`clickOffsetLeft`).

## Running the Script

Please run the script `keybinds.ahk` as an administrator: Right-click on the script and select **Run as administrator**.

Enjoy :)
