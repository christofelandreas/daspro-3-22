program modul6;
uses crt;

    type 
        biodata= record
            nama   : string;
            nim    : string[9];
            alamat : string;
            No_HP  : string[14];
            Tempat  : string;
            Tanggal : byte;
            Bulan   : integer;
            Tahun   : integer;
            end;

    var biodata_mhs : array [1..100] of biodata;
        i,n : integer;

begin
clrscr;
    writeln('====================');
    writeln('Program Biodata Mahasiswa');
    writeln('====================');
    write('Banyak Mahasiswa : '); readln(n);
    writeln;
    for i := 1 to n do
    begin
        writeln('Mahasiwa ' ,i );
        with biodata_mhs[i] do
            begin    
                write('Nama   : '); readln(nama);
                write('Nim    : '); readln(nim);
                write('Alamat : '); readln(alamat);
                write('No Hp  : '); readln(No_HP);
                write('Tempat Lahir  : '); readln(Tempat);
                write('Tanggal Lahir : '); readln(Tanggal);
                write('Bulan Lahir   : '); readln(Bulan);
                write('Tahun Lahir   : '); readln(Tahun);
            end;
        writeln;
    end;

    for i := 1 to n do 
    begin
        writeln('Mahasiwa ' ,i );
        with biodata_mhs[i] do 
        begin
            writeln('Nama   : ' ,nama);
            writeln('Nim    : ' ,nim);
            writeln('Alamat : ' ,alamat);
            writeln('No HP  : ' ,No_HP);
            writeln('Tempat dan Tanggal Lahir : ' ,Tempat , ' , ',Tanggal,' ',Bulan,' ',Tahun);
       end; 
       writeln;
    end;
    readln;
end.