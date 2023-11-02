program zad8;
var i,length,f,j,max,last : integer;
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
  for i := 1 to length do begin
    for j := 1 to length do begin
      if A[i-1] = A[j-1] then last := last + 1;
    end;
    if last > max then begin
      max := last;
      last := 0
    end;
  end;
  writeln(max div 2);
end.