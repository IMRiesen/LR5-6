program zad9;
var A:array[1..20] of integer;
i,j,min,cnt:integer;
begin
  for i:= 1 to 20 do
  begin
    A[i]:= random(201)-100;
  end;
  writeln(A);
  for i := 1 to 20 do begin
    if A[i] > 0 then begin
      for j:= i to 10 do begin
        A[j]:= A[j+1];
      end;
      break;
      cnt:= cnt+1;
    end;
  end;
  min:=A[1];
  for i := 2 to 20 do begin
    if min > A[i] then min := A[i];
    end;
    for i := 2 to 20 do begin
      if min = A[i] then begin
        cnt := cnt + 1;
        for j:= i to 19 do begin
          A[j]:=A[j+1];
        end;
      end;
    end;
    for i:= 20 downto 20-cnt do begin
      A[i]:=0;
    end;
    write(A);
  end.