program no_3_dapro;
uses crt;
var
huruf : string;


begin
clrscr;
        write('Masukkan Huruf : '); readln(huruf);

        case huruf of
        'A','I','U','E','O','a','i','u','e','o' : write( huruf, ' Huruf Vokal');

        'B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z',
        'b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z'
        : write(huruf, ' Huruf Konsonan');

        else

                write('Tidak Termasuk Huruf');

        end;


        readln;




end.

