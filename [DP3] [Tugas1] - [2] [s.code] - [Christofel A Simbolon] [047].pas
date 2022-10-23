program no_2_daspro;
uses crt;
var
        kode : string;
        harga: real;
        j: integer;
begin
clrscr;

        writeln('               Menu Rumah Makan Kamu               ');

        writeln('Kode                Nama Makanan            Harga    ');
        writeln('991                 Nasi Rendang            Rp34.000 ');
        writeln('992                 Nasi Ayam Bakar         Rp30.000 ');
        writeln('993                 Nasi Ikan Gulai         Rp31.500 ');
        writeln('994                 Nasi Ayam Rendang       RP31.500 ');
        writeln('995                 Nasi Rendang Telur      Rp45.500 ');
        writeln('996                 Nasi Telur  Dadar       Rp21.000 ');
        writeln('997                 Nasi Ikan Kakap Goreng  Rp34.000 ');

        write('Masukkan Kode Pesanan Anda  : '); readln(kode);
        if        (kode = '991') then
         begin
                  write('Jumlah Pesanan Anda? '); readln(j);
                  harga :=  j*34.000;
                  writeln('Nasi Rendang Harganya Rp ',harga:4:3);
         end

         else if  (kode = '992') then
         begin
                  write('Jumlah Pesanan Anda? '); readln(j);
                  harga :=  j*30.000;
                  writeln('Nasi Ayam Bakar Harganya Rp ',harga:4:3);
         end

         else if  (kode = '993') then
         begin
                  write('Jumlah Pesanan Anda? '); readln(j);
                  harga :=  j*31.500;
                  writeln('Nasi Ikan Gulai Harganya Rp ',harga:4:3);
         end

         else if  (kode = '994') then
         begin
                  write('Jumlah Pesanan Anda? '); readln(j);
                  harga :=  j*31.500;
                  writeln('Nasi Ayam Rendang Harganya Rp ',harga:4:3);
         end

         else if  (kode = '995') then
         begin
                  write('Jumlah Pesanan Anda? '); readln(j);
                  harga := j*45.500;
                  writeln('Nasi Rendang Telur Harganya Rp ',harga:4:3);
         end

         else if  (kode = '996') then
         begin
                  write('Jumlah Pesanan Anda ? '); readln(j);
                  harga := j*21000;
                  writeln('Nasi Telur Dadar Harganya  Rp ',harga:4:3);
         end

         else if  (kode = '997') then
         begin
                  write('Jumlah Pesanan Anda ? '); readln(j);
                  harga := j*34000;
                  writeln('Nasi Ikan Kakap Goreng Harga Rp ',harga:4:3);
         end

         else
         begin
         writeln('Kode Yang Anda Masukkan Tidak Ada,Silahkan Masukkan Kode Yang Terdapat Di Menu');
         end;




readln();
end.

