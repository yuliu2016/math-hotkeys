#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



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



>^I::
SendRaw, \int_a^b dx
Sleep 80
Send {Left}
Sleep, 80
Send {Left}
; sleep 80
; send {space down} 
; sleep 80 
; send {space up}
; sleep 80
; send {space down} 
; sleep 80
; send {space up}
return