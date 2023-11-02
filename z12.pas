program zad12;
var i,cnt,n,s,j,f :integer;
A: array of integer;
begin
  writeln('Массив А:');
  cnt := 20;
  setLength(A, cnt);
  for i := 0 to cnt-1 do begin
    A[i] := random(201) - 100;
    write(A[i],' ');
  end;
  s := 0;
  while s <= cnt-1 do begin
    if A[s] mod 2 = 0 then begin
      cnt := cnt + 1 ;
      SetLength(A, cnt);
      for j := cnt-1 downto s+2 do begin
        A[j] := A[j-1];
      end;
      A[s+1] := 0;
      s := s + 2;
    end
    else s := s + 1;
  end;
  writeln();
  writeln('Изменённый массив А:');
  for i := 0 to cnt-1 do begin
    write(A[i],' ');
  end;
end.