; Sai's autohotkeys for lawyers, version 2
; 
; To use:
; 1. Save this file somwehere with the extension .ahk
; 2. Install https://autohotkey.com
; 3. Right click the saved file and click "run this script"
; 4. To start on boot:
; a. open explorer (windows + e)
; b. go to  %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
; c. right click > new > shortcut, enter the location of the .ahk file
;
; adapted from https://autohotkey.com/board/topic/27801-special-characters-osx-style/, Typography for Lawyers, & https://apple.stackexchange.com/questions/120938/wheres-the-us-international-keyboard-on-os-x-10-9-mavericks
;
; OSX style special keys
;
; right alt + x	outputs
;
; combining keystrokes
; `	grave next character
; e	acute next character
; i	circumflex next character
; u	umlaut next character
; n	tilde next character (including n, eg ñÑ)
; 
; single keystroke
; '	a-e ligature (æÆ)
; a	ring a (åÅ)
; c	cedilla (çÇ)
; o	slashed o (øØ)
; q	o-e ligature (œŒ)
; 
; [	opening single quote ‘
; shift [	opening double quote “
; ]	closing single quote ’
; shift ] 	closing double quote ”
; 1	inverted exclamation ¡
; shift 1	fraction slash  ⁄
; 2	trademark ™
; shift 2	euro €
; 3	pound £
; shift 3	left single guillemet (angle quote) ‹
; 4	cent ¢
; shift 4	right single guillemet (angle quote) ›
; 5	infinity ∞
; shift 5	dagger †
; 6	section §
; shift 6	combining circumflex ̂
; 7	pilcrow ¶
; shift 7	double dagger ‡
; 8	bullet •
; shift 8	degree °
; 9	feminine superscript ª
; shift 9	middle dot ·
; 0	masculine superscript º
; shift 0	single low opening quotation mark ‚  ; ‛
; -	en dash –
; shift -	em dash —
; d	lowercase delta ∂
; g	copyright ©
; r	registered trademark ®
; shift r	per mille ‰
; p	pi ᴨΠ
; /	division symbol ÷
; shift /	inverted question mark ¿
; :	left double guillemet (angle quote) «
; shift :	right double guillemet (angle quote) »


; (space)	non-breaking space ( )
; shift (space)	full width low line (for citations TBD) ＿


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#UseHook

; SendMode InputThenPlay 	; required due to using keys not on English keyboard
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; MsgBox, %A_SendMode%


; disable alt-rightshift causing change in text direction

; !RShift::!{LShift}	; breaks the hotkeys below, e.g. alt-shift-c doesn't do the same as shift-alt-c
!>+::!<+	; works better

; ! = alt, ^ = ctrl, + = shift, # = windows; < = left, > = right
>!e::diacritic("eéaáAÁEÉoóOÓiíIÍuúUÚ")	; acute
>!i::diacritic("iîaâeêAÂEÊoôOÔIÎuûUÛ")	; circumflex
>!vkC0::diacritic("eèaàAi	ÀEÈoòOÒiìIÌuùUÙ")	; ` grave (using virtual key code)
>!n::diacritic("nñaãoõAÃOÕNÑ")	; tilde
>!u::diacritic("uüaäeëiïoöAÄEËIÏOÖUÜ")	; umlaut

; Alt + Shift + key
>!c::Send ç
>!+c::Send Ç
>!a::Send å
>!+a::Send Å
>!o::Send ø
>!+o::Send Ø
>!'::Send æ
>!+'::Send Æ
>!q::Send œ
>!+q::Send Œ
>!r::Send ®
>!+r::Send ‰
>!p::Send ᴨ
>!+p::Send Π
>!1::Send ¡
>!+1::Send ⁄
>!2::Send ™
>!+2::Send €
>!3::Send £
>!+3::Send ‹
>!4::Send ¢
>!+4::Send ›
>!5::Send ∞
>!+5::Send †
>!6::Send §
>!+6::Send  ̂	; combining circumflex
>!7::Send ¶
>!+7::Send ‡
>!8::Send •
>!+8::Send °
>!9::Send ª
>!+9::Send ·	; middle dot
>!0::Send º
>!+0::Send ‚	; low quote
>!-::Send –	; en dash
>!+-::Send —	; em dash
>!=::Send ≠
>!+=::Send ±
>!/::Send ÷
>!+/::Send ¿
>![::Send ‘	; opening single quote
>!+[::Send “	; opening double quote
>!]::Send ’	; closing single quote
>!+]::Send ”	; closing double quote
>!\::Send «
>!+\::Send »

>!b::Send ∫	; integral
>!d::Send ∂	; delta - TODO possibly change to eth
>!f::Send ƒ	; function
>!g::Send ©
>!h::Send ˙	; upper dot
	; >!j::Send {delta}
>!k::Send °	; degree
	; >!+k::Send {Apple}	; not sure this exists
>!l::Send ¬	; logical not
>!m::Send µ
>!+m::Send ˜	; high (small) tilde
>!s::Send ß
>!t::Send †
>!+v::Send ◊
	; >!w::Send {epsilon}
>!+w::Send „	; low double quote
>!x::Send ≈
>!y::Send ¥
	; >!z::Send {Omega}
>!`;::Send …	; ellipsis
>!,::Send ≤
>!+,::Send ¯	; macron
>!.::Send ≥

>!Space::Send  	; non breaking space
>!+Space::Send ＿	; full width low line (for citations TBD)

diacritic(map) {
    Input c, L1 T2 ;, {LCtrl}{RCtrl}{LAlt}{RAlt}{LWin}{RWin}
;    if (ErrorLevel != "Max")
;        return
    if (i := InStr(map, c, true))
        c := SubStr(map, i+1, 1)
    SendInput %c%
}


altShift(accented,accentedShift) {
	if (!GetKeyState("Shift")) {
		SendInput % accented
	} else {
		SendInput % accentedShift
	}
}