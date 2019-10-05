; Sai's autohotkeys for lawyers, version 1
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
; alt + x	outputs
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



#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#UseHook

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; disable alt-rightshift causing change in text direction

RShift::LShift

; ! = alt, ^ = ctrl, + = shift
!e::diacritic("eéaáAÁEÉoóOÓiíIÍuúUÚ")	; acute
!i::diacritic("iîaâeêAÂEÊoôOÔIÎuûUÛ")	; circumflex
!vkC0::diacritic("eèaàAÀEÈoòOÒiìIÌuùUÙ")	; ` grave (using virtual key code)
!n::diacritic("nñaãoõnñAÃOÕNÑ")	; tilde
!u::diacritic("uüaäeëiïoöAÄEËIÏOÖUÜ")	; umlaut

; Alt + Shift + key
*!c::altShift("ç","Ç")
*!a::altShift("å","Å") ; ring
*!o::altShift("ø","Ø")
*!'::altShift("æ","Æ")
*!q::altShift("œ","Œ")
*!r::altShift("®","‰")
*!p::altShift("ᴨ","Π")
*!1::altShift("¡","⁄")
*!2::altShift("™","€")
*!3::altShift("£","‹")
*!4::altShift("¢","›")
*!5::altShift("∞","†")
*!6::altShift("§"," ̂")
*!7::altShift("¶","‡")
*!8::altShift("•","°")
*!9::altShift("ª","·")
*!0::altShift("º","‚")
*!-::altShift("–","—")
*!=::altShift("≠","±")
*!/::altShift("÷","¿")	
*![::altShift("‘","“")
*!]::altShift("’","”")
*!\::altShift("«","»")


*!b::altShift(" ∫","")
*!d::altShift("∂","")
*!f::altShift("ƒ","")
*!g::altShift("©","")
*!h::altShift("˙","")   
; *!j::altShift("{delta}","")
; *!k::altShift("°","{Apple}")
*!l::altShift("¬","")
*!m::altShift("µ","˜")
*!s::altShift("ß","")
;*!t::altShift("†","")
*!v::altShift("v","◊")
; *!w::altShift("{epsilon}","„")
*!x::altShift("≈","")
*!y::altShift("¥","")
; *!z::altShift("{Omega}","")
*!`;::altShift("…","")
*!,::altShift("≤","¯")
*!.::altShift("≥","")

;  ; 0160 nbsp


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

