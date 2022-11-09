program uts_no_2;
uses crt;
label a;
var
x,y : real;
begin
clrscr;
        a:
        write('Masukkan Titik Koordinat  dari X : '); readln(x);
        write('Masukkan Titik Koordinat  dari Y : '); readln(y);

                if (x=0) AND (Y=0) then
                begin
                        writeln('Koordinat Berada di Titik Pusat ');
                        goto a;
                end 
                else if ((x > 0) AND (y > 0 )) AND ((y <= 1000) AND (x <= 1000)) then
                begin
                        writeln('Koordinat Berada di Kuadran 1 ');
                       
                end

                else if ((x < 0) AND (y >= 0)) AND ((x >= -1000) AND (y <= 1000)) then
                begin
                        writeln('Koordinat Berada di Kuadran 2 ');
                        
                end

                else if ((x < 0) AND (y < 0)) AND ((x >= -1000) AND (y >= -1000)) then
                begin
                        writeln('Koordinat Berada di Kuadran 3 ');
                      
                end

                else if ((x > 0) AND (y < 0)) AND ((x <= 1000) AND (y >= -1000)) then
                begin
                        writeln('Koordinat Berada di Kuadran 4 ');
                        
                end
                
                else
                begin
                    writeln('Diluar Range ');
                    goto a;
                end;

readln;
end.





