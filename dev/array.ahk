

Array() {
    static ArrBase
    If !ArrBase {
        ArrBase := Object("Len","Array_Len","Join","Array_Join","Add","Array_Add","Insert","Array_Insert","Del","Array_Del","Max","Array_Max","Min","Array_Min")
    }
    Return Object("base",ArrBase)
}

Array_Join(Arr,Sep="\n") {
    Loop, % Arr.Length() {
        Str .= Arr[A_Index] . Sep
    }
    Return SubStr(Str,1,StrLen(Str) - StrLen(Sep))
}

Array_Add(Arr,Val) {
    Return Arr.Insert(Arr.Len() + 1,Val)
}

Array_Insert(Arr,Idx,Val) {
    Return Arr._Insert(Idx,Val)
}

Array_Del(Arr,Val) {
    Arr._Remove(Val)
}

Array_Min(Arr,Mode="Value") {
    Loop, % Arr.Len() {
        If (Val = "" || Arr[A_Index] < Val) {
            Val := (Mode = "Value") ? Arr[A_Index] : A_Index
        }
    }
    Return Val
}

Array_Max(Arr,Mode="Value") {
    Loop, % Arr.Len() {
        If (Val = "" || Arr[A_Index] > Val) {
            Val := (Mode = "Value") ? Arr[A_Index] : A_Index
        }
    }
    Return Val
}

Array_Len(Arr) {
    Return Round(Arr._MaxIndex())
}

Array_Closest(Arr, Num) {
    curr := arr[0], out := 0
    for key,val in arr {
        if (Abs(num - val) < Abs(num - curr)) {
            out = %key%
            curr = %val%
        }
    }
    return %out%
}

Array_Test() {
    Temp := Array()

    Temp[1] := "Hello"
    Temp[2] := "World"
    Temp[3] := "olleH"
    Temp[4] := "dlroW"

    MsgBox % Temp.Join()

    Temp := Array()

    Temp[1] := "1101"
    Temp[2] := "2407"
    Temp[3] := "108"
    Temp[4] := "6379"

    MsgBox % Temp.Min() . "`n" . Temp.Max()
}

range(start, stop:="", step:=1) {
    static range := { _NewEnum: Func("_RangeNewEnum") }
    if !step {
        throw "range(): Parameter 'step' must not be 0 or blank"
    }
    if (stop == "") {
        stop := start, start := 0
    }
    ; Formula: r[i] := start + step*i ; r = range object, i = 0-based index
    ; For a postive 'step', the constraints are i >= 0 and r[i] < stop
    ; For a negative 'step', the constraints are i >= 0 and r[i] > stop
    ; No result is returned if r[0] does not meet the value constraint

    if (step > 0 ? start < stop : start > stop) {
        ;// start == start + step*0
        return { base: range, start: start, stop: stop, step: step }
    }
}

_RangeNewEnum(r) {
    static enum := { "Next": Func("_RangeEnumNext") }
    return { base: enum, r: r, i: 0 }
}

_RangeEnumNext(enum, ByRef k, ByRef v:="") {
    stop := enum.r.stop+1, step := enum.r.step
    , k := enum.r.start + step*enum.i
    if (ret := step > 0 ? k < stop : k > stop) {
        enum.i += 1
    }
    return ret
}


; ;// Simple usage
; len := (10-0)//1 ; (stop-start)//step
; out := "["
; for i in range(10) {
; 	out .= i . (A_Index < len ? ", " : "]")
; }
; MsgBox %out%

; ;// step = 5
; len := (50-0)//5 ; (stop-start)//step
; out := "["
; for i in range(0, 50, 5) {
; 	out .= i . (A_Index < len ? ", " : "]")
; }
; MsgBox %out%

; ;// Negative numbers
; len := (-10-0)//-1 ; (stop-start)//step
; out := "["
; for i in range(0, -10, -1) {
; 	out .= i . (A_Index < len ? ", " : "]")
; }
; MsgBox %out%
