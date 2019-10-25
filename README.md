# For lawyers who type on Windows

Version 2

## Changes

v2
* Made all modifiers use RIGHT alt only, to not interfere with hotkeys in programs that use alt-something. You can now use those with left alt, and use right alt for key modifiers.
* Added non-breaking space (right alt + space) (used after e.g. section marks, like 42 U.S.C. § 1983) and full width low line ＿ (right alt + shift + space) (used e.g. for citations TBD, like ＿ F.3d. ＿)
* Added ∫∂ƒ©˙°µ˜ß†◊„≈¥…≤¯≥
* Added stand-alone [executable](https://raw.githubusercontent.com/saizai/autohotkeys_for_lawyers/master/autohotkeys_for_lawyers.exe) version
* Made alt-shift disablement more targeted.

## To use, either:

### Use the compiled .exe
1. Save [this executable](https://raw.githubusercontent.com/saizai/autohotkeys_for_lawyers/master/autohotkeys_for_lawyers.exe) somwehere
2. Run it
3. To start on boot:
   1. open explorer (windows + e)
   2. go to  `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`
   3. right click > new > shortcut, enter the location of the executable

### Use AutoHotkey itself
1. Save [this script](https://raw.githubusercontent.com/saizai/autohotkeys_for_lawyers/master/autohotkeys_for_lawyers.ahk) somwehere with the extension .ahk
2. Install https://autohotkey.com
3. Right click the saved file and click "run this script"
4. To start on boot:
   1. open explorer (windows + e)
   2. go to  `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`
   3. right click > new > shortcut, enter the location of the .ahk file

## Differences from OSX Extended Keyboard

1. Directional quotes are \[ for left, ] for right, shift for double quote.
2. These keys aren't fully done yet: bdfghjlmstvwxyz;,.
3. TODO: add non-breaking space and other lawyer-useful keys

## What you get:

Disables alt + right shift changing text direction.

|If you type right alt + (the key below)|you get|
|--------------------------------|------|
|(combining keystrokes)||
|\`|grave next character (è àìòù ÀÈÌÒÙ) (è is the default if you wait >2 seconds)|
|e|acute next character (é áíóú ÁÉÍÓÚ)|
|i|circumflex next character (î âêôû ÂÊÔÎÛ)|
|u|umlaut next character (ü äëïö ÄËÏÖÜ)|
|n|tilde next character (ñ ãõ ÃÕÑ)|
|(single keystrokes)||
|'|a-e ligature (æÆ)|
|\[|opening single quote ‘|
|shift \[|opening double quote “|
|]|closing single quote ’|
|shift ]|closing double quote ”|
|1|inverted exclamation ¡|
|shift 1|fraction slash  ⁄|
|2|trademark ™|
|shift 2|euro €|
|3|pound £|
|shift 3|left single guillemet (angle quote) ‹|
|4|cent ¢|
|shift 4|right single guillemet (angle quote) ›|
|5|infinity ∞|
|shift 5|dagger †|
|6|section §|
|shift 6|combining circumflex ̂ |
|7|pilcrow ¶|
|shift 7|double dagger ‡|
|8|bullet •|
|shift 8|degree °|
|9|feminine superscript ª|
|shift 9|middle dot ·|
|0|masculine superscript º|
|shift 0|single low opening quotation mark ‚|
|-|en dash –|
|shift -|em dash —|
|a|ring a (åÅ)|
|c|cedilla (çÇ)|
|o|slashed o (øØ)|
|q|o-e ligature (œŒ)|
|b|integral ∫|
|d|lowercase delta ∂|
|f|function ƒ|
|g|copyright ©|
|h|upper dot˙|
|k|degree °|
|l|logical not ¬|
|m|lowercase mu µ|
|shift m|high (small) tilde ˜|
|p|pi (ᴨΠ)|
|r|registered trademark ®|
|shift r|per mille ‰|
|s|esset ß|
|t|dagger †|
|shift v|diamond ◊|
|shift w|low double quote „|
|x|almost equal ≈|
|y|yen ¥|
|/|division symbol ÷|
|shift /|inverted question mark ¿|
|:|left double guillemet (angle quote) «|
|shift :|right double guillemet (angle quote) »|
|;|ellipsis …|
|,|less than or equal ≤|
|shift ,|macron ¯|
|.|greater than or equal ≥|
|(space)|non-breaking space ( )|
|shift (space)|full width low line ＿|
