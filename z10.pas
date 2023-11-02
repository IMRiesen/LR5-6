program zad10;
var A:array[1..20] of integer;
i,n:integer;
begin
  for i:=1 to 20 do
    A[i]:=random(100)-50;
  writeln('Исходный массив:');
  for i:= 1 to 20 do
    write(A[i],' ');
  n:=0;
  for i:= 1 to 20 do
    if A[i]>= 0 then
    begin
      n:= n+1;
      A[n]:= A[i];
    end;
    for i:=n + 1 to 20 do
      A[i]:=0;
    writeln;
    writeln('Измененный массив:');
    for i:= 1 to 20 do
    write(A[i],' ');
end.