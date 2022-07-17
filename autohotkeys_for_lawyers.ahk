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


; disable ctrl-rightshift causing change in text direction
^RShift::Send ^{LShift}	; breaks the hotkeys below, e.g. alt-shift-c doesn't do the same as shift-alt-c


; ! = alt, ^ = ctrl, + = shift, # = windows; < = left, > = right

; mappable diacritics
;>!e::diacritic("aáAÁeéEÉiíIÍoóOÓuúUÚ")	; acute
>!e::Send   ́	; combining acute accent

;>!i::diacritic("aâAÂeêEÊiîIÎoôOÔuûUÛ")	; circumflex
>!i::Send  ̂	; combining circumflex

;>!vkC0::diacritic("aàAÀeèEÈiìIÌoòOÒuùUÙ")	; ` grave (using virtual key code)
>!vkC0::Send  ̀ ; combining grave accent

;>!n::diacritic(" ～aãAÃeẽEẼiĩIĨoõOÕuũUŨlɫLⱢnñNÑvṽVṼyỹYỸ")	; tilde
>!n::Send  ̃	; combining tilde

;>!u::diacritic("aäAÄeëEËiïIÏoöOÖuüUÜ")	; umlaut
>!u::Send  ̈	; combining diaresis

;>!+,::Send ¯	; macron
>!+,::Send  ̄	; combining macron

;>!h::Send ˙	; upper dot
>!h::Send  ̇	; combining dot above

; Alt + Shift + key
>!c::Send ç	; lower cedilla
>!+c::Send Ç	; capital cedilla
>!a::Send å	; lower a with ring above
>!+a::Send Å	; capital a with ring above
>!o::Send ø	; lower slash o
>!+o::Send Ø	; capital slash o
>!'::Send æ	; lower ae ligature
>!+'::Send Æ	; capital ae ligature
>!q::Send œ	; lower oe ligature
>!+q::Send Œ	; capital oe ligature
>!r::Send ®	; registered trademark
>!+r::Send ‰	; per mille
;>!p::Send ᴨ	; greek letter small capital pi
>!p::Send π	; greek small letter pi
>!+p::Send Π	; capital pi
>!1::Send ¡	; inverted exclamation
>!+1::Send ⁄	; combining fraction
>!2::Send ™	; trademark
>!+2::Send €	; euro
>!3::Send £	; pound
>!+3::Send ‹	; left single angle quote
>!4::Send ¢	; cent
>!+4::Send ›	; right single angle quote
>!5::Send ∞	; infinity (lemniscate)
>!+5::Send †	; dagger
>!6::Send §	; section
;>!+6::Send  ̂	; combining circumflex
>!7::Send ¶	; pilcrow (paragraph)
>!+7::Send ‡	; double dagger
>!8::Send •	; bullet
>!+8::Send °	; degree
>!9::Send ª	; feminine ordinal
>!+9::Send ·	; middle dot
>!0::Send º	; masculine ordinal
>!+0::Send ‚	; low quote
>!-::Send –	; en dash
>!+-::Send —	; em dash
>!>+<+-::Send ⸻	; three-em dash
>!=::Send ≠	; not equals
>!+=::Send ±	; plus or minus
>!/::Send ÷
>!+/::Send ¿	; inverted question mark
>![::Send ‘	; opening single quote
>!+[::Send “	; opening double quote
>!]::Send ’	; closing single quote
>!+]::Send ”	; closing double quote
>!\::Send «	; left guillemet
>!+\::Send »	; right guillemet

>!b::Send ∫	; integral
>!d::Send ∂	; delta - TODO possibly change to eth
>!f::Send ƒ	; function
>!g::Send ©	; copyright
	; >!j::Send {delta}
>!k::Send °	; degree
;>!+k::Send {Apple}	; not sure this exists
>!+k::Send 	; Apple logo
>!l::Send ¬	; logical not
>!m::Send µ	; mu
>!+m::Send ˜	; high (small) tilde
>!s::Send ß	; esset
>!t::Send †	; dagger
>!+v::Send ◊	; diamond
	; >!w::Send {epsilon}
>!+w::Send „	; low double quote
>!x::Send ≈	; approximately equals
>!y::Send ¥	; yen
	; >!z::Send {Omega}
>!`;::Send …	; ellipsis
>!,::Send ≤	; less than or equals
>!+`;::Send ⋯	; midline ellipsis
>!.::Send ≥	; greater than or equals


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

;altShift(accented,accentedShift) {
;	if (!GetKeyState("Shift")) {
;		SendInput % accented
;	} else {
;		SendInput % accentedShift
;	}
;}

;; Combining Diacritical Marks
;U+0300	◌̀			Combining Grave Accent
;U+0301	◌́			Combining Acute Accent
;U+0302	◌̂			Combining Circumflex Accent
;U+0303	◌̃			Combining Tilde
;U+0304	◌̄			Combining Macron
;U+0305	◌̅			Combining Overline
;U+0306	◌̆			Combining Breve
;U+0307	◌̇			Combining Dot Above
;U+0308	◌̈			Combining Diaeresis
;U+0309	◌̉			Combining Hook Above
;U+030A	◌̊			Combining Ring Above
;U+030B	◌̋			Combining Double Acute Accent
;U+030C	◌̌			Combining Caron
;U+030D	◌̍			Combining Vertical Line Above
;U+030E	◌̎			Combining Double Vertical Line Above
;U+030F	◌̏			Combining Double Grave Accent
;U+0310	◌̐			Combining Candrabindu
;U+0311	◌̑			Combining Inverted Breve
;U+0312	◌̒			Combining Turned Comma Above
;U+0313	◌̓			Combining Comma Above
;U+0314	◌̔			Combining Reversed Comma Above
;U+0315	◌̕			Combining Comma Above Right
;U+0316	◌̖			Combining Grave Accent Below
;U+0317	◌̗			Combining Acute Accent Below
;U+0318	◌̘			Combining Left Tack Below
;U+0319	◌̙			Combining Right Tack Below
;U+031A	◌̚			Combining Left Angle Above
;U+031B	◌̛			Combining Horn
;U+031C	◌̜			Combining Left Half Ring Below
;U+031D	◌̝			Combining Up Tack Below
;U+031E	◌̞			Combining Down Tack Below
;U+031F	◌̟			Combining Plus Sign Below
;U+0320	◌̠			Combining Minus Sign Below
;U+0321	◌̡			Combining Palatalized Hook Below
;U+0322	◌̢			Combining Retroflex Hook Below
;U+0323	◌̣			Combining Dot Below
;U+0324	◌̤			Combining Diaeresis Below
;U+0325	◌̥			Combining Ring Below
;U+0326	◌̦			Combining Comma Below
;U+0327	◌̧			Combining Cedilla
;U+0328	◌̨			Combining Ogonek
;U+0329	◌̩			Combining Vertical Line Below
;U+032A	◌̪			Combining Bridge Below
;U+032B	◌̫			Combining Inverted Double Arch Below
;U+032C	◌̬			Combining Caron Below
;U+032D	◌̭			Combining Circumflex Accent Below
;U+032E	◌̮			Combining Breve Below
;U+032F	◌̯			Combining Inverted Breve Below
;U+0330	◌̰			Combining Tilde Below
;U+0331	◌̱			Combining Macron Below
;U+0332	◌̲			Combining Low Line
;U+0333	◌̳			Combining Double Low Line
;U+0334	◌̴			Combining Tilde Overlay
;U+0335	◌̵			Combining Short Stroke Overlay
;U+0336	◌̶			Combining Long Stroke Overlay
;U+0337	◌̷			Combining Short Solidus Overlay
;U+0338	◌̸			Combining Long Solidus Overlay
;U+0339	◌̹			Combining Right Half Ring Below
;U+033A	◌̺			Combining Inverted Bridge Below
;U+033B	◌̻			Combining Square Below
;U+033C	◌̼			Combining Seagull Below
;U+033D	◌̽			Combining X Above
;U+033E	◌̾			Combining Vertical Tilde
;U+033F	◌̿			Combining Double Overline
;U+0340	◌̀			Combining Grave Tone Mark
;U+0341	◌́			Combining Acute Tone Mark
;U+0342	◌͂			Combining Greek Perispomeni
;U+0343	◌̓			Combining Greek Koronis
;U+0344	◌̈́			Combining Greek Dialytika Tonos
;U+0345	◌ͅ			Combining Greek Ypogegrammeni
;U+0346	◌͆			Combining Bridge Above
;U+0347	◌͇			Combining Equals Sign Below
;U+0348	◌͈			Combining Double Vertical Line Below
;U+0349	◌͉			Combining Left Angle Below
;U+034A	◌͊			Combining Not Tilde Above
;U+034B	◌͋			Combining Homothetic Above
;U+034C	◌͌			Combining Almost Equal to Above
;U+034D	◌͍			Combining Left Right Arrow Below
;U+034E	◌͎			Combining Upwards Arrow Below
;U+034F			CGJ					Combining Grapheme Joiner (CGJ)
;U+0350	◌͐			Combining Right Arrowhead Above
;U+0351	◌͑			Combining Left Half Ring Above
;U+0352	◌͒			Combining Fermata
;U+0353	◌͓			Combining X Below
;U+0354	◌͔			Combining Left Arrowhead Below
;U+0355	◌͕			Combining Right Arrowhead Below
;U+0356	◌͖			Combining Right Arrowhead and Up Arrowhead Below
;U+0357	◌͗			Combining Right Half Ring Above
;U+0358	◌͘			Combining Dot Above Right
;U+0359	◌͙			Combining Asterisk Below
;U+035A	◌͚			Combining Double Ring Below
;U+035B	◌͛			Combining Zigzag Above
;U+035C	◌͜◌			Combining Double Breve Below
;U+035D	◌͝◌			Combining Double Breve
;U+035E	◌͞◌			Combining Double Macron
;U+035F	◌͟◌			Combining Double Macron Below
;U+0360	◌͠◌			Combining Double Tilde
;U+0361	◌͡◌			Combining Double Inverted Breve
;U+0362	◌͢◌			Combining Double Rightwards Arrow Below
;U+0363	◌ͣ			Combining Latin Small Letter A
;U+0364	◌ͤ			Combining Latin Small Letter E
;U+0365	◌ͥ			Combining Latin Small Letter I
;U+0366	◌ͦ			Combining Latin Small Letter O
;U+0367	◌ͧ			Combining Latin Small Letter U
;U+0368	◌ͨ			Combining Latin Small Letter C
;U+0369	◌ͩ			Combining Latin Small Letter D
;U+036A	◌ͪ			Combining Latin Small Letter H
;U+036B	◌ͫ			Combining Latin Small Letter M
;U+036C	◌ͬ			Combining Latin Small Letter R
;U+036D	◌ͭ			Combining Latin Small Letter T
;U+036E	◌ͮ			Combining Latin Small Letter V
;U+036F	◌ͯ			Combining Latin Small Letter X

;; combining diacritical marks extended
;U+1AB0		◌᪰		Combining Doubled Circumflex Accent
;U+1AB1		◌᪱		Combining Diaeresis-Ring
;U+1AB2		◌᪲		Combining Infinity
;U+1AB3		◌᪳		Combining Downwards Arrow
;U+1AB4		◌᪴		Combining Triple Dot
;U+1AB5		◌᪵		Combining X-X Below
;U+1AB6		◌᪶		Combining Wiggly Line Below
;U+1AB7		◌᪷		Combining Open Mark Below
;U+1AB8		◌᪸		Combining Double Open Mark Below
;U+1AB9		◌᪹		Combining Light Centralization Stroke Below
;U+1ABA		◌᪺		Combining Strong Centralization Stroke Below
;U+1ABB		◌᪻		Combining Parentheses Above
;U+1ABC		◌᪼		Combining Double Parentheses Above
;U+1ABD		◌᪽		Combining Parentheses Below
;U+1ABE		᪾		Combining Parentheses Overlay
;U+1ABF		◌ᪿ		Combining Latin Small Letter W Below
;U+1AC0		◌ᫀ		Combining Latin Small Letter Turned W Below

;; combining diacritical marks supplement
;U+1DC0		◌᷀		Combining Dotted Grave Accent
;U+1DC1		◌᷁		Combining Dotted Acute Accent
;U+1DC2		◌᷂		Combining Snake Below
;U+1DC3		◌᷃		Combining Suspension Mark
;U+1DC4		◌᷄		Combining Macron-Acute
;U+1DC5		◌᷅		Combining Grave-Macron
;U+1DC6		◌᷆		Combining Macron-Grave
;U+1DC7		◌᷇		Combining Acute-Macron
;U+1DC8		◌᷈		Combining Grave-Acute-Grave
;U+1DC9		◌᷉		Combining Acute-Grave-Acute
;U+1DCA		◌᷊		Combining Latin Small Letter R Below
;U+1DCB		◌᷋		Combining Breve-Macron
;U+1DCC		◌᷌		Combining Macron-Breve
;U+1DCD		◌᷍◌		Combining Double Circumflex Above
;U+1DCE		◌᷎		Combining Ogonek Above
;U+1DCF		◌᷏		Combining Zigzag Below
;U+1DD0		◌᷐		Combining Is Below
;U+1DD1		◌᷑		Combining Ur Above
;U+1DD2		◌᷒		Combining Us Above
;U+1DD3		◌ᷓ		Combining Latin Small Letter Flattened Open A Above
;U+1DD4		◌ᷔ		Combining Latin Small Letter Ae
;U+1DD5		◌ᷕ		Combining Latin Small Letter Ao
;U+1DD6		◌ᷖ		Combining Latin Small Letter Av
;U+1DD7		◌ᷗ		Combining Latin Small Letter C Cedilla
;U+1DD8		◌ᷘ		Combining Latin Small Letter Insular D
;U+1DD9		◌ᷙ		Combining Latin Small Letter Eth
;U+1DDA		◌ᷚ		Combining Latin Small Letter G
;U+1DDB		◌ᷛ		Combining Latin Letter Small Capital G
;U+1DDC		◌ᷜ		Combining Latin Small Letter K
;U+1DDD		◌ᷝ		Combining Latin Small Letter L
;U+1DDE		◌ᷞ		Combining Latin Letter Small Capital L
;U+1DDF		◌ᷟ		Combining Latin Letter Small Capital M
;U+1DE0		◌ᷠ		Combining Latin Small Letter N
;U+1DE1		◌ᷡ		Combining Latin Letter Small Capital N
;U+1DE2		◌ᷢ		Combining Latin Letter Small Capital R
;U+1DE3		◌ᷣ		Combining Latin Small Letter R Rotunda
;U+1DE4		◌ᷤ		Combining Latin Small Letter S
;U+1DE5		◌ᷥ		Combining Latin Small Letter Long S
;U+1DE6		◌ᷦ		Combining Latin Small Letter Z
;U+1DE7		◌ᷧ		Combining Latin Small Letter Alpha
;U+1DE8		◌ᷨ		Combining Latin Small Letter B
;U+1DE9		◌ᷩ		Combining Latin Small Letter Beta
;U+1DEA		◌ᷪ		Combining Latin Small Letter Schwa
;U+1DEB		◌ᷫ		Combining Latin Small Letter F
;U+1DEC		◌ᷬ		Combining Latin Small Letter L with Double Middle Tilde
;U+1DED		◌ᷭ		Combining Latin Small Letter O with Light Centralization Stroke
;U+1DEE		◌ᷮ		Combining Latin Small Letter P
;U+1DEF		◌ᷯ		Combining Latin Small Letter Esh
;U+1DF0		◌ᷰ		Combining Latin Small Letter U with Light Centralization Stroke
;U+1DF1		◌ᷱ		Combining Latin Small Letter W
;U+1DF2		◌ᷲ		Combining Latin Small Letter A with Diaeresis
;U+1DF3		◌ᷳ		Combining Latin Small Letter O with Diaeresis
;U+1DF4		◌ᷴ		Combining Latin Small Letter U with Diaeresis
;U+1DF5		◌᷵		Combining Up Tack Above
;U+1DF6		◌᷶		Combining Kavyka Above Right
;U+1DF7		◌᷷		Combining Kavyka Above Left
;U+1DF8		◌᷸		Combining Dot Above Left
;U+1DF9		◌᷹		Combining Wide Inverted Bridge Below
;U+1DFB		◌᷻		Combining Deletion Mark
;U+1DFC		◌᷼◌		Combining Double Inverted Breve Below
;U+1DFD		◌᷽		Combining Almost Equal to Below
;U+1DFE		◌᷾		Combining Left Arrowhead Above
;U+1DFF		◌᷿		Combining Right Arrowhead and Down Arrowhead Below

;; combining diacritical marks for symbols
;U+20D0		◌⃐		Combining Left Harpoon Above
;U+20D1		◌⃑		Combining Right Harpoon Above
;U+20D2		◌⃒		Combining Long Vertical Line Overlay
;U+20D3		◌⃓		Combining Short Vertical Line Overlay
;U+20D4		◌⃔		Combining Anticlockwise Arrow Above
;U+20D5		◌⃕		Combining Clockwise Arrow Above
;U+20D6		◌⃖		Combining Left Arrow Above
;U+20D7		◌⃗		Combining Right Arrow Above
;U+20D8		◌⃘		Combining Ring Overlay
;U+20D9		◌⃙		Combining Clockwise Ring Overlay
;U+20DA		◌⃚		Combining Anticlockwise Ring Overlay
;U+20DB		◌⃛		Combining Three Dots Above
;U+20DC		◌⃜		Combining Four Dots Above
;U+20DD		⃝		Combining Enclosing Circle
;U+20DE		⃞		Combining Enclosing Square
;U+20DF		⃟		Combining Enclosing Diamond
;U+20E0		⃠		Combining Enclosing Circle Backslash
;U+20E1		◌⃡		Combining Left Right Arrow Above
;U+20E2		⃢		Combining Enclosing Screen
;U+20E3		⃣		Combining Enclosing Keycap
;U+20E4		⃤		Combining Enclosing Upward Pointing Triangle
;U+20E5		◌⃥		Combining Reverse Solidus Overlay
;U+20E6		◌⃦		Combining Double Vertical Stroke Overlay
;U+20E7		◌⃧		Combining Annuity Symbol
;U+20E8		◌⃨		Combining Triple Underdot
;U+20E9		◌⃩		Combining Wide Bridge Above
;U+20EA		◌⃪		Combining Leftwards Arrow Overlay
;U+20EB		◌⃫		Combining Long Double Solidus Overlay
;U+20EC		◌⃬		Combining Rightwards Harpoon with Barb Downwards
;U+20ED		◌⃭		Combining Leftwards Harpoon with Barb Downwards
;U+20EE		◌⃮		Combining Left Arrow Below
;U+20EF		◌⃯		Combining Right Arrow Below
;U+20F0		◌⃰		Combining Asterisk Above

;; combining half marks
;U+FE20		◌︠		Combining Ligature Left Half
;U+FE21		◌︡		Combining Ligature Right Half
;U+FE22		◌︢		Combining Double Tilde Left Half
;U+FE23		◌︣		Combining Double Tilde Right Half
;U+FE24		◌︤		Combining Macron Left Half
;U+FE25		◌︥		Combining Macron Right Half
;U+FE26		◌︦		Combining Conjoining Macron
;U+FE27		◌︧		Combining Ligature Left Half Below
;U+FE28		◌︨		Combining Ligature Right Half Below
;U+FE29		◌︩		Combining Tilde Left Half Below
;U+FE2A		◌︪		Combining Tilde Right Half Below
;U+FE2B		◌︫		Combining Macron Left Half Below
;U+FE2C		◌︬		Combining Macron Right Half Below
;U+FE2D		◌︭		Combining Conjoining Macron Below
;U+FE2E		◌︮		Combining Cyrillic Titlo Left Half
;U+FE2F		◌︯		Combining Cyrillic Titlo Right Half

; tildes
;; solo
;~	U+007E	Tilde
;～	U+FF5E	Fullwidth Tilde
;˜	U+02DC	Small Tilde
;∼	U+223C	Tilde Operator
;∽	U+223D	Reversed Tilde
;≋	U+224B	Triple Tilde
;ⸯ	U+2E2F	Vertical Tilde
;	U+E007E	Tag Tilde
;; post modifiers
;◌̃	U+0303	Combining Tilde
;◌̰	U+0330	Combining Tilde Below
;◌̴	U+0334	Combining Tilde Overlay
;◌̾	U+033E	Combining Vertical Tilde
;◌͊	U+034A	Combining Not Tilde Above
;◌͠◌	U+0360	Combining Double Tilde
;◌ᷬ	U+1DEC	Combining Latin Small Letter L with Double Middle Tilde
;◌︢	U+FE22	Combining Double Tilde Left Half
;◌︣	U+FE23	Combining Double Tilde Right Half
;◌︩	U+FE29	Combining Tilde Left Half Below
;◌︪	U+FE2A	Combining Tilde Right Half Below
;; pre modifiers
;˷	U+02F7	Modifier Letter Low Tilde
;ꭞ	U+AB5E	Modifier Letter Small L with Middle Tilde
;; symbol combined
;;; general
;⭉	U+2B49	Tilde Operator Above Leftwards Arrow
	;⥳	U+2973	Leftwards Arrow Above Tilde Operator
	;⭁	U+2B41	Reverse Tilde Operator Above Leftwards Arrow
	;⭋	U+2B4B	Leftwards Arrow Above Reverse Tilde Operator
;⥲	U+2972	Tilde Operator Above Rightwards Arrow
	;⥴	U+2974	Rightwards Arrow Above Tilde Operator
	;⭇	U+2B47	Reverse Tilde Operator Above Rightwards Arrow
	;⭌	U+2B4C	Rightwards Arrow Above Reverse Tilde Operator
;;; math
;≁	U+2241	Not Tilde
;≂	U+2242	Minus Tilde
;⋍	U+22CD	Reversed Tilde Equals
;⩳	U+2A73	Equals Sign Above Tilde Operator
;⧤	U+29E4	Equals Sign and Slanted Parallel with Tilde Above
;⨤	U+2A24	Plus Sign with Tilde Above
	;⨦	U+2A26	Plus Sign with Tilde Below
;⸞	U+2E1E	Tilde with Dot Above
	;⩪	U+2A6A	Tilde Operator with Dot Above
	;⸟	U+2E1F	Tilde with Dot Below
	;⩫	U+2A6B	Tilde Operator with Rising Dots
;⸛	U+2E1B	Tilde with Ring Above
;⫇	U+2AC7	Subset of Above Tilde Operator
;⫈	U+2AC8	Superset of Above Tilde Operator
;⫳	U+2AF3	Parallel with Tilde Operator
;;; APL
;⍨	U+2368	APL Functional Symbol Tilde Diaeresis
;⍫	U+236B	APL Functional Symbol Del Tilde
;⍭	U+236D	APL Functional Symbol Stile Tilde
;⍱	U+2371	APL Functional Symbol Down Caret Tilde
;⍲	U+2372	APL Functional Symbol Up Caret Tilde
;; letters
;;; vowels
;ã	U+00E3	Latin Small Letter A with Tilde
;Ã	U+00C3	Latin Capital Letter A with Tilde
	;ẵ	U+1EB5	Latin Small Letter A with Breve and Tilde
	;Ẵ	U+1EB4	Latin Capital Letter A with Breve and Tilde
	;ẫ	U+1EAB	Latin Small Letter A with Circumflex and Tilde
	;Ẫ	U+1EAA	Latin Capital Letter A with Circumflex and Tilde
;ẽ	U+1EBD	Latin Small Letter E with Tilde
;Ẽ	U+1EBC	Latin Capital Letter E with Tilde
	;ḛ	U+1E1B	Latin Small Letter E with Tilde Below
	;Ḛ	U+1E1A	Latin Capital Letter E with Tilde Below
	;Ễ	U+1EC4	Latin Capital Letter E with Circumflex and Tilde
	;ễ	U+1EC5	Latin Small Letter E with Circumflex and Tilde
;ĩ	U+0129	Latin Small Letter I with Tilde
;Ĩ	U+0128	Latin Capital Letter I with Tilde
	;ḭ	U+1E2D	Latin Small Letter I with Tilde Below
	;Ḭ	U+1E2C	Latin Capital Letter I with Tilde Below
;õ	U+00F5	Latin Small Letter O with Tilde
;Õ	U+00D5	Latin Capital Letter O with Tilde
	;Ɵ	U+019F	Latin Capital Letter O with Middle Tilde
	;ṍ	U+1E4D	Latin Small Letter O with Tilde and Acute
	;Ṍ	U+1E4C	Latin Capital Letter O with Tilde and Acute
	;Ỗ	U+1ED6	Latin Capital Letter O with Circumflex and Tilde
	;ỗ	U+1ED7	Latin Small Letter O with Circumflex and Tilde
	;ṏ	U+1E4F	Latin Small Letter O with Tilde and Diaeresis
	;Ṏ	U+1E4E	Latin Capital Letter O with Tilde and Diaeresis
	;Ỡ	U+1EE0	Latin Capital Letter O with Horn and Tilde
	;ỡ	U+1EE1	Latin Small Letter O with Horn and Tilde
	;ȭ	U+022D	Latin Small Letter O with Tilde and Macron
	;Ȭ	U+022C	Latin Capital Letter O with Tilde and Macron
;ũ	U+0169	Latin Small Letter U with Tilde
;Ũ	U+0168	Latin Capital Letter U with Tilde
	;ṵ	U+1E75	Latin Small Letter U with Tilde Below
	;Ṵ	U+1E74	Latin Capital Letter U with Tilde Below
	;ṹ	U+1E79	Latin Small Letter U with Tilde and Acute
	;Ṹ	U+1E78	Latin Capital Letter U with Tilde and Acute
	;Ữ	U+1EEE	Latin Capital Letter U with Horn and Tilde
	;ữ	U+1EEF	Latin Small Letter U with Horn and Tilde
;;; consonants
;ᵬ	U+1D6C	Latin Small Letter B with Middle Tilde
;ᵭ	U+1D6D	Latin Small Letter D with Middle Tilde
;ᵮ	U+1D6E	Latin Small Letter F with Middle Tilde
;ɫ	U+026B	Latin Small Letter L with Middle Tilde
	;Ɫ	U+2C62	Latin Capital Letter L with Middle Tilde
	;ꬸ	U+AB38	Latin Small Letter L with Double Middle Tilde
;ᵯ	U+1D6F	Latin Small Letter M with Middle Tilde
;ñ	U+00F1	Latin Small Letter N with Tilde
	;Ñ	U+00D1	Latin Capital Letter N with Tilde
	;ᵰ	U+1D70	Latin Small Letter N with Middle Tilde
;ᵱ	U+1D71	Latin Small Letter P with Middle Tilde
;ᵲ	U+1D72	Latin Small Letter R with Middle Tilde
	;ꭨ	U+AB68	Latin Small Letter Turned R with Middle Tilde
	;ᵳ	U+1D73	Latin Small Letter R with Fishhook and Middle Tilde
;ᵴ	U+1D74	Latin Small Letter S with Middle Tilde
;ᵵ	U+1D75	Latin Small Letter T with Middle Tilde
;ᵶ	U+1D76	Latin Small Letter Z with Middle Tilde
;ṽ	U+1E7D	Latin Small Letter V with Tilde
	;Ṽ	U+1E7C	Latin Capital Letter V with Tilde
;ỹ	U+1EF9	Latin Small Letter Y with Tilde
	;Ỹ	U+1EF8	Latin Capital Letter Y with Tilde
