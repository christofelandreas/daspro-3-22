program uts_no_1;
uses crt,math;
label Q;
const phi = 3.141592653589793;
var
a,h : integer;                                              
z,t : real;
begin
clrscr;
        Q:
        write('Masukkan Tinggi Rumah Anda (cm)       : '); readln(h);
        write('Masukkan Sudut Rumah Anda  (derajat)  : '); readln(a);

                if((h>=1) AND (h<=10000)) AND ((a>= 1) AND (a<=89)) then
                begin
		         z := a*phi/180;
		         t := h/sin(z);
                writeln('Panjang Tangga Minimal Yang Anda Butuhkan : ', ceil(t), ' cm ');
                goto Q;
                end
		else
                begin
		writeln('Masukkan Kembali Angka/Derajat Yang Benar ');
                goto Q;
                end;
                
Readln;
end.
