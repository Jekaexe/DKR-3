uses crt;

procedure q;
begin
  writeln('Приблизительное - 1');
  writeln('Точное значение - 2');
  writeln('Абсолютная погрешность - 3 ');
  writeln('Относительная погрешность - 4');
  writeln('Выйти - 5');
  writeln('Очистить экран - 0');
end;

function f(x: real): real;
begin
  f := 2 * x **3 + 4;                  
end;

function f1(x: real): real;
begin
  f1 := (x**4/2)+4*x;         
end;

var
  a, b, h, s, y: real;
  n, i, g: integer;

begin
  repeat
    writeln('Введите левую границу интервала от -1 до 0 a=');
    readln(a);
  until (a >= -1) and (a <= 0);
  repeat
    writeln('Введите правую границу интервала от 0 до  b=');
    readln(b);
  until (b >= 0) and (b > a) and (b <= 2);
  repeat
    write('Введите число промежутков от 20 до 1000 n=');
    readln(n);
  until (n >= 20) and (n <= 1000);
  s := (f(a) + f(b)) / 2;  
  for i := 1 to n - 1 do
  begin
    s := s + f(a + i * ((b - a) / n));
  end; 
  s*=(b - a) / n;
  y := f1(b) - f1(a);
  begin
    repeat
      q;
      read(g);
      case g of
        1: begin writeln('Приблизительное значение =', Abs(s):0:5) end;
        2: begin writeln('Точное значение=', Abs(y):0:5) end;
        3: begin writeln('Абсолютная погрешность=', (y - s):0:5) end;
        4: begin writeln('Относительная погрешность=', abs(y - s) / y) end;
        5: begin exit end;
        0: begin ClrScr end;
      end;
    until g >= 5;
  end;
end.