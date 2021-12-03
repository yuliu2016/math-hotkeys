#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This script allows hotkeys to be used for Equation Editor in MS Office


;https://www.autohotkey.com/docs/Hotstrings.htm

;https://www.autohotkey.com/boards/viewtopic.php?t=68568


Seq(def) {  ;why is this magic?
    matchlist := ""
    maxlen := 1
    for key, value in def {
        matchlist .= "," key
        if (maxlen < StrLen(key))
            maxlen := StrLen(key)
    }
    Input command, % "L" maxlen,, % SubStr(matchlist, 2)
    if command := def[command]
        SendInput % command
}

>^G::
; https://docs.wiris.com/en/mathtype/office_tools/keyboard_shortcuts
Seq({
(Join,
    a : "α"
    b : "β"
    c : "χ"
    d : "δ"
    e : "ε"
    f : "ϕ"
    g : "γ"
    h : "η"
    i : "ι"
    j : "φ"
    k : "κ"
    l : "λ"
    m : "μ"
    n : "ν"
    o : "ο"
    p : "π"
    q : "θ"
    r : "ρ"
    s : "σ"
    t : "τ"
    u : "υ"
    v : "ϖ"
    w : "ω"
    x : "ξ"
    y : "ψ"
    z : "ζ"
)})
return 

; Α α, Β β, Γ γ, Δ δ, Ε ε, Ζ ζ, Η η, Θ θ, Ι ι, Κ κ, Λ λ, Μ μ, Ν ν, Ξ ξ, Ο ο, Π π, Ρ ρ, Σ σ/ς, Τ τ, Υ υ, Φ φ, Χ χ, Ψ ψ, Ω ω

#IfWinActive WINWORD.EXE
>^H::
SeqQuote({
(Join,
    A : "\Alpha"
    B : "Β"
    C : "Χ"
    D : "Δ"
    E : "Ε"
    F : "Φ"
    G : "Γ"
    H : "Η"
    I : "Ι"
    K : "\Kappa"
    L : "Λ"
    M : "Μ"
    N : "Ν"
    O : "Ο"
    P : "Π"
    Q : "Θ"
    R : "Ρ"
    S : "\Sigma"
    T : "\Tau"
    U : "Υ"
    W : "\Omega"
    X : "Ξ"
    Y : "Ψ"
    Z : "Ζ"
)})
return 

#IfWinActive
>^H::
SeqQuote({
(Join,
    A : "Α"
    B : "Β"
    C : "Χ"
    D : "Δ"
    E : "Ε"
    F : "Φ"
    G : "Γ"
    H : "Η"
    I : "Ι"
    K : "Κ"
    L : "Λ"
    M : "Μ"
    N : "Ν"
    O : "Ο"
    P : "Π"
    Q : "Θ"
    R : "Ρ"
    S : "Σ"
    T : "Τ"
    U : "Υ"
    W : "Ω"
    X : "Ξ"
    Y : "Ψ"
    Z : "Ζ"
)})
return 

SeqQuote(def) {  ;why is this magic?
    matchlist := ""
    maxlen := 1
    for key, value in def {
        matchlist .= "," key
        if (maxlen < StrLen(key))
            maxlen := StrLen(key)
    }
    Input command, % "L" maxlen,, % SubStr(matchlist, 2)
    if command := def[command]
        Send ^I
        SendInput % command
        Send ^I
}

DSpace() {
    Send {Space}
    Sleep 80
    Send {Space}
    return
}

>^I::
Input, IVar, L1
if (IVar = "I") {
    SendRaw, \int_a^b dx
    Sleep 80
    Send {Left}
    Sleep, 80
    Send {Left}
} if (IVar = "O") {
    SendRaw, \int
    DSpace()
    SendRaw, dx
    Sleep 80
    Send {Left}
    Sleep, 80
    Send {Left}
} else if (IVar = "L") {
    SendRaw, \scriptL {}
    Send {Space}
    Sleep 80
    Send {Left}
} else if (IVar = "U") {
    SendRaw, \scriptU (t-)
    Send {Space}
    Sleep 80
    Send {Left}
} else if (IVar = "P") {
    SendRaw, \prod
    DSpace()
}
return


>^K::
Input, KVar, L1
if (KVar = "I") {
    Send, ∞
} else if (KVar = "=") {
    Send, ≡
} else if (KVar = "T") {
    Send, ×
} else if (KVar = "D") {
    Send, ∂
}
return

>^+K::
Input, KVar, L1
if (KVar = "D") {
    Send, °
}
return

>^R::
SendRaw, \sqrt
DSpace()
Send {Left}
return

>^`::
SendRaw, \bar
DSpace()
return


>^6::
Input, BarVar, L1
if (BarVar = "U") {  ;todo check for right key
    SendRaw, \vec
    DSpace()
} else if (BarVar = "1") {
    SendRaw, \dot
    DSPace()
} else if (BarVar = "2") {
    SendRaw, \ddot
    DSPace()
}
return