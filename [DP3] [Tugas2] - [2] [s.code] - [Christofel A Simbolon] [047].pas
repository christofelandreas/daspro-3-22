program Lat2_lab;
uses crt,math;

function deret(n : integer) : integer;
var
deret1,deret4 : array[0..100] of integer;
i,a,b,c : integer;
begin
a := 0;
b := 1;
c := 4;
deret1[1] := 1; {Deret Fibonacci}
    for i := 2 to n do begin
        deret1[i] := a + b;
        a := b;
        b := deret1[i];
    end;
    for i := 1 to n do begin
        write(deret1[i]);
        if i <> n then
        write(', ');
    end;

writeln; {Deret 2 pangkat }
    for i := 0 to n-1 do begin
        write(round(power(2,i)));
        if i <> n-1 then
        write(', ');
    end;

writeln; {Deret/ Pola  Barisan Persegi}
    for i := 1 to n do 
    begin
    write(round(power(i,2)));
    if i <> n then
    write(', ');
    end;

writeln; {Deret/ Pola Barisan Persegi Panjang}
deret4[1] := 2;
    for i := 2 to n do begin
        deret4[i] := deret4[i-1] + c;
        c += 2;
    end;
    for i := 1 to n do begin
        write(deret4[i]);
        if i <> n then
        write(', ');
    end;
end;
var
n : integer;
begin
clrscr;
    writeln('Program Barisan dan Deret');
    writeln('--------------------------');
    write('Masukkan Input : '); readln(n);
    deret(n);
    writeln;
    writeln('--------------------------');
end.