program uts_no_3;
uses crt;
label a;
var
x,y,z : integer;

begin
clrscr;
    a:
    write('Masukkan Inputan Jam Pasir Anda : '); readln(x);
    
    if (x >= 2) AND (x <= 20) then
    begin
        for y := x downto 2 do
        begin
            for z := x downto y+1 do
            write(' ');
            for z := 1 to y do
            write(' *');
            writeln;
        end;
        
        for y := 1 to x do
        begin
            for z := x downto y+1 do
            write(' ');
            for z := 1 to y do
            write(' *');
            writeln;
        end;
    end
    
    else
    begin
    writeln('Inputan Tidak Valid ' );
    goto a;
    end;
end.