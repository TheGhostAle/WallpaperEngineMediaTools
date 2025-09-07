# Wallpaper Engine Media Tools

A collection of tools to control media playback directly from Wallpaper Engine, using the new **User Shortcut Property** ([official documentation](https://docs.wallpaperengine.io/en/scene/userproperties/usershortcut.html)) introduced in Wallpaper Engine 2.7.  
These tools use **batch scripts and PowerShell** to send media key commands.

> **Important:** This guide was written with [this specific wallpaper](https://steamcommunity.com/sharedfiles/filedetails/?id=3280146735) as reference.
> The core concepts, however, apply to any wallpaper that supports User Shortcuts. Minor adjustments may be needed.


## Installation and Usage

1. **Extract the folder** to a fixed location on your computer, for example:

```
C:\Users\YourUser\Documents\WallpaperEngineMediaTools
```

2. **Open Wallpaper Engine**, select the wallpaper, and go to **User Shortcuts**.

3. **Add a new shortcut**:  
   - In the **Run Command** field, enter the path to the batch file corresponding to the desired command:


- Play / Pause:
```
C:\Users\YourUser\Documents\WallpaperEngineMediaTools\PlayPause.bat
```
- Next Track:
```
C:\Users\YourUser\Documents\WallpaperEngineMediaTools\NextTrack.bat
```

- Previous Track:
```
C:\Users\YourUser\Documents\WallpaperEngineMediaTools\PreviousTrack.bat
```


## Hiding the Terminal Window

To prevent the CMD window from showing:

1. Create a **shortcut (.lnk)** to the desired `.bat` file.  
2. Right-click the shortcut → **Properties** → **Run** → **Minimized**.  
3. Use the shortcut path in the **Run Command** field in Wallpaper Engine instead of the batch file directly.
