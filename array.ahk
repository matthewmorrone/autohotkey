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

Array() {
  static ArrBase
  If !ArrBase
    ArrBase := Object("Len","Array_Len","Join","Array_Join","Add","Array_Add","Insert","Array_Insert"
                     ,"Del","Array_Del","Max","Array_Max","Min","Array_Min")

  Return Object("base",ArrBase)
}

Array_Join(Arr,Sep="|") {
  Loop, % Arr.Len()
    Str .= Arr[A_Index] . Sep
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
  Loop, % Arr.Len()
    If (Val = "" || Arr[A_Index] < Val)
      Val := (Mode = "Value") ? Arr[A_Index] : A_Index
  Return Val
}

Array_Max(Arr,Mode="Value") {
  Loop, % Arr.Len()
    If (Val = "" || Arr[A_Index] > Val)
      Val := (Mode = "Value") ? Arr[A_Index] : A_Index
  Return Val
}

Array_Len(Arr) {
  Return Round(Arr._MaxIndex())
}
