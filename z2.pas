Program Zad2;
var i,n,P,S,x,d:integer; A:array [1..20] of integer;
begin
n := 0;
P := 1;
S := 0;
for i := 1 to 20 do
  A[i] := -22 + random(116);
writeln ('Исходный массив: ', A);
for i := 1 to 20 do
  if i mod 2 = 1 then begin
    if A[i] mod 2 = 0 then
      n := n + 1;
  end;
writeln ('Количество четных элементов на нечетных позициях: ', n);
for i := 1 to 20 do
  if A[i] mod 2 = 1 then begin
    P := P * i;
  end;
writeln ('Произведение нечетных чисел: ', P);
Writeln ('Введите от какого числа: ');
readln (x);
Writeln ('Введите до какого числа: ');
readln (d);
for i := x to (d) do
  S := S + A[i];
writeln ('Сумма заданного промежутка от ',x, ' до ', d, ' равна: ', S);
end.