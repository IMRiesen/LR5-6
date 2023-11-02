program zad5;
var A,B:array[1..10]of integer;
sumA,sumB,i:integer;
begin
  for i:= 1 to 10 do
  begin
    A[i]:=random(21)-10;
    B[i]:=random(21)-10;
  end;
  writeln('Исходный массив 1:');
  for i := 1 to 10 do
    write(A[i],' ');
  writeln;
  writeln('Исходный массив 2:');
  for i := 1 to 10 do
    write(B[i],' ');
  for i := 1 to 10 do
  begin
    if A[i] > 0 then
      sumA:=sumA + A[i];
    
    if B[i] > 0 then
      sumB:=sumB + B[i];
  end;
  writeln;
  if sumA > sumB then
    for i:= 1 to 10 do
      A[i]:=A[i]*10;
    write('Измененный массив 1: ');
    for i:= 1 to 10 do
      write(A[i],' ');
    writeln;
  if sumA < sumB then
    for i:= 1 to 10 do
      B[i]:=B[i]*10;
    write('Измененный массив 2: ');
    for i:= 1 to 10 do
      write(B[i],' ');
    writeln;
end.