Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class MediaKeys {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);
}
"@

$VK_MEDIA_NEXT_TRACK = 0xB0
$KEYEVENTF_EXTENDEDKEY = 0x1
$KEYEVENTF_KEYUP = 0x2

[MediaKeys]::keybd_event($VK_MEDIA_NEXT_TRACK, 0, $KEYEVENTF_EXTENDEDKEY, [UIntPtr]::Zero)
[MediaKeys]::keybd_event($VK_MEDIA_NEXT_TRACK, 0, ($KEYEVENTF_EXTENDEDKEY -bor $KEYEVENTF_KEYUP), [UIntPtr]::Zero)
