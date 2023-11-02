program zad7;
var i,length,f,max,last:integer;
A:array of integer;
begin
  write('Впишите длину массива: ');
  readln(length);
  setLength(A, length);
  writeln('Впишите элементы массива');
  for i := 1 to length do begin
    readln(f);
    A[i-1] := f;
  end;
  for i := 1 to length-1 do begin
    if last > max then max := last;
    if A[i-1] <= A[i] then last := last + 1 else last := 0;
  end;
  if last > max then max := last;
  writeln('Длина неубывающего промежутка в массива равна ',max+1);
end.