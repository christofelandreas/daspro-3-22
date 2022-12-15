program Lat1_lab;
uses crt;
var nim : array[1..10] of string;
    i: integer;
    n: integer;
    
begin
clrscr;
  write ('Jumlah Mahasiswa yang Mengantre : '); readln(n);
  
    for i := 1 to n do
        begin
            write('Masukkan 3 Digit Nim Terakhir  ' ,i, ' : ' ); readln(nim[i]);
        end;
    
    write('Urutan Antrean : ');
    for i := n downto 1 do 
    begin
            write(nim[i]);
                if i <> 1 then 
                write(', ');
                
    end;

end.
