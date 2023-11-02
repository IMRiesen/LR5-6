Program Zad4;
var i,j:integer; A,B:array [1..30] of integer;
begin
j := 1;
for i := 1 to 30 do
  A[i] := -99 + random(169);
writeln ('Исходный массив: ', A);
for i := 1 to 30 do
  if A[i] mod 2 = 0 then begin
    B[j] := A[i];
    j := j + 1
  end;
writeln ('Массив четных чисел: ', B);
end.