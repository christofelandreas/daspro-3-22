program UAS_LAB_DP3;
uses crt;

type
    biodata = record
            nama                : string;
            kelas               : string;
            no_absen            : string;
            rata                : real;
            agama               : real;
            ppkn                : real;
            bahasa_indonesia    : real;
            mm_wajib            : real;
            sejarah             : real;
            bahasa_inggris      : real;
            seni_rupa           : real;
            prakarya            : real;
            olahraga            : real;
            mm_minat            : real;
            biologi             : real;
            fisika              : real;
            kimia               : real;
            ekonomi             : real;
    end;

var 
address : ^word;
data : array [1..40] of biodata;
jumlah_siswa, i, j : integer;

procedure sorting(var jumlah_data : integer); 
var
i, j : integer;
temp : biodata;
begin
    for i := 2 to jumlah_data do 
    begin
        temp := data[i];
        j := i-1;
        while (j > 0) and (data[j].rata < temp.rata) do 
        begin
            data[j+1] := data[j];
            j -= 1;
        end;
        data[j+1] := temp;
    end;
end;

begin
clrscr;
write('Masukkan Jumlah Siswa : '); readln(jumlah_siswa);
for i := 1 to jumlah_siswa do 
begin
    clrscr;
    writeln('Data Murid ke-',i);
    with data[i] do begin
        write('Masukkan Nama Siswa  : '); readln(nama);
        write('Masukkan Kelas : '); readln(kelas);
        write('Masukkan No Absen   : '); readln(no_absen);
        writeln('Masukkan nilai : ');
        write('Nilai Agama                                      : '); readln(agama);
        write('Nilai Pendidikan Pancasila dan Kewarganegaraan   : '); readln(ppkn);
        write('Nilai Bahasa dan Sastra Indonesia                : '); readln(bahasa_indonesia);
        write('Nilai Matematika                                 : '); readln(mm_wajib);
        write('Nilai Sejarah                                    : '); readln(sejarah);
        write('Nilai Bahasa Inggris                             : '); readln(bahasa_inggris);
        write('Nilai Seni Rupa                                  : '); readln(seni_rupa);
        write('Nilai Prakarya dan Kewirausahaan                 : '); readln(prakarya);
        write('Nilai Pendidikan Jasmani,Olahraga, dan Kesehatan : '); readln(olahraga);
        write('Nilai Matematika Peminatan                       : '); readln(mm_minat);
        write('Nilai Biologi                                    : '); readln(biologi);
        write('Nilai Fisika                                     : '); readln(fisika);
        write('Nilai Kimia                                      : '); readln(kimia);
        write('Nilai Ekonomi                                    : '); readln(ekonomi);
        rata := (agama + ppkn + bahasa_indonesia + mm_wajib + sejarah + 
        bahasa_inggris + seni_rupa + prakarya +olahraga +mm_minat+biologi+fisika+kimia+ekonomi)/14;
    end; 
    address := @data[i];
end;
sorting(jumlah_siswa);

for i := 1 to jumlah_siswa do begin
    clrscr;
    with data[i] do begin 
        writeln('|==============================================================');
        writeln('|Rapot Siswa                                                   ');
        writeln('|==============================================================');
        writeln('|Nama           : ',nama);     
        writeln('|Masukkan Kelas : ',kelas);                               
        writeln('|No Absen       : ',no_absen);
        writeln('|==============================================================');
        writeln('|Nilai Agama                                        : ',agama:0:2);
        writeln('|Nilai Pendidikan Pancasila dan Kewarganegaraan     : ',ppkn:0:2); 
        writeln('|Nilai Bahasa dan Sastra Indonesia                  : ',bahasa_indonesia:0:2); 
        writeln('|Nilai Matematika                                   : ',mm_wajib:0:2);
        writeln('|Nilai Sejarah                                      : ',sejarah:0:2); 
        writeln('|Nilai Bahasa Inggris                               : ',bahasa_inggris:0:2); 
        writeln('|Nilai Seni Rupa                                    : ',seni_rupa:0:2); 
        writeln('|Nilai Prakarya dan Kewirausahaan                   : ',prakarya:0:2); 
        writeln('|Nilai Pendidikan Jasmani,Olahraga, dan Kesehatan   : ',olahraga:0:2); 
        writeln('|Nilai Matematika Peminatan                         : ',mm_minat:0:2); 
        writeln('|Nilai Biologi                                      : ',biologi:0:2);
        writeln('|Nilai Fisika                                       : ',fisika:0:2);
        writeln('|Nilai Kimia                                        : ',kimia:0:2);
        writeln('|Nilai Ekonomi                                      : ',ekonomi:0:2);
        writeln('|==============================================================');
        writeln('|Rata-Rata : ',rata:0:2);
        if (rata >= 75) and (rata <= 100) then {kkm = 75}
        writeln('|Anda Lulus')
        else writeln('|Anda Tidak Tulus');
        writeln('|Anda Mendapatkan Ranking ',i); 
        writeln('|Data anda tersimpan di alamat : ',address^);
        writeln('|==============================================================');
    end;
    for j := 1 to 27 do begin
        gotoxy(63,j);
        write('|');
    end;
    readkey;
    writeln;
end;
end.