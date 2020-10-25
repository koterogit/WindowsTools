#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F13 & J::Send,{Blind}{Left}         ;←
F13 & K::Send,{Blind}{Down}         ;↓
F13 & I::Send,{Blind}{Up}           ;↑
F13 & L::Send,{Blind}{Right}        ;→
F13 & U::Send,{Blind}{PgUp}         ;PgUp
F13 & O::Send,{Blind}{PgDn}         ;PgDn
F13 & H::Send,{Blind}{Home}         ;Home
F13 & `;::Send,{Blind}{End}         ;End
F13 & W::Send,{Blind}{Backspace}    ;Backspace
F13 & X::Send,{Blind}{Delete}       ;Delete
F13 & E::Send,{Blind}{AppsKey}      ;右クリックメニュー表示
F13 & C::Send,{Blind}{esc}          ;esc
F13 & Q::Send,{Blind}^{F4}          ;Ctrl+F4
F13 & Z::Send,{Blind}!{F4}          ;Atl+F4
F13 & Tab::Send,{Blind}#{Tab}       ;Win+Tab
