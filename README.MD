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

2. **Generate the shortcuts**:

   - Double click `Generate Shortcuts.bat` in the project root.  
   - This will create **shortcut files** inside the `shortcuts\` folder.  

3. **Open Wallpaper Engine**, select the wallpaper, and go to **User Shortcuts**.

4. **Add a new shortcut** in Wallpaper Engine:  
   - In the **Run Command** field, enter the path to the shortcut.  

Examples:

- Play / Pause:
```
C:\Users\YourUser\Documents\WallpaperEngineMediaTools\shortcuts\PlayPause.lnk
```

- Next Track:  

```
C:\Users\YourUser\Documents\WallpaperEngineMediaTools\shortcuts\NextTrack.lnk
```

- Previous Track:  

```
C:\Users\YourUser\Documents\WallpaperEngineMediaTools\shortcuts\PreviousTrack.lnk
```