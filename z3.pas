Program Zad3;
var i,n,max,min,k,f:integer; A:array [1..20] of integer;
begin
for i := 1 to 20 do
  A[i] := -52 + random(117);
writeln ('Исходный массив: ', A);
max := A[i];
for i := 2 to 20 do
  if A[i] > max then begin
    max := A[i];
    n := i;
  end;
writeln ('Максимальный элемент: ', max, ' по счету: ',n);
min := 0;
for i := 1 to 20 do
  if (A[i] > 0) and ((min = 0) or (A[i] < min)) then begin
    min := A[i];
    k := i;
  end;
Writeln ('Минимальный элемент равен: ',min, ' по счету: ', k);
for i := 1 to 20 do
  if A[i] mod 5 = 0 then begin
    f := i;
  end;
writeln ('Номер крайнего элемента кратного 5: ', f);
end.






