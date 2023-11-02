program zad6;
const n=5;
var arr:array[1..n] of integer;
i:integer;
k:boolean;
begin
  writeln('Введите элементы массива:');
  for i:= 1 to n do
  begin
    write('arr[i]: ');
    readln(arr[i]);
  end;
  k := True;
  for i:= 2 to n do
  begin
    if arr[i] < arr[i-1] then
    begin
      k := False;
      break;
    end;
  end;
  if k then
    writeln('Элементы массива упорядочены по возрастанию')
  else
    writeln('Элементы массива не упорядочены по возрастанию');
end.