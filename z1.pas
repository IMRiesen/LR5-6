program zad1;
var A:array[1..20] of integer;
i:integer;
begin
  for i := 1 to 20 do
  begin
    write('Введите элемент массив A[',i,']:');
    readln(A[i]);
  end;
  for i := 1 to 20 do
  begin
    if A[i] > 0 then
      A[i]:= 0
    else if A[i]<0 then
      A[i] := sqr(A[i]);
  end;
  writeln('Измененный массив:');
  for i:= 1 to 20 do
    writeln('A[i]=',A[i]);
end.