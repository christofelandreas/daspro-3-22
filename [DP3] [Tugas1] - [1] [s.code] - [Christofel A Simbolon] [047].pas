program no_1_dapro;
uses crt;
var x,y,z : integer;

begin
clrscr;
 write('Masukkan Nilai Pertama  : '); readln(x);
 write('Masukkan Nilai Kedua    : '); readln(y);
 write('Masukkan Nilai Ketiga   : '); readln(z);

 if (x > y) and (y > z) then
 writeln('',z,' ',y,' ',x)
 else if (y > x) and (x > z) then
 writeln('',z,' ',x,' ',y)
 else if (x > z) and (z > y) then
 writeln('',y,' ',z,' ',x)
 else if (z > x) and (x > y) then
 writeln('',y,' ',x,' ',z)
 else if (z > y) and (y > x) then
 writeln('',x,' ',y,' ',z)
 else if (y > z) and (z > x) then
 writeln('',x,' ',z,' ',y);
 readln;



 end.
