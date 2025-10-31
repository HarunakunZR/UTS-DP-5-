program TebakAngkaRahasia;
uses crt;

var
    angka_rahasia, tebakan: integer;

begin
    clrscr;
    angka_rahasia := 3; { angka rahasia yang harus ditebak }

    writeln('=============================================');
    writeln('     SELAMAT DATANG DI TEBAK ANGKA RAHASIA   ');
    writeln('=============================================');
    writeln('Coba tebak angka rahasia antara 1 sampai 5.');
    writeln('---------------------------------------------');
    writeln;

    repeat
        write('Masukkan tebakan kamu: ');
        readln(tebakan);

        if tebakan > angka_rahasia then
            writeln('Terlalu besar!')
        else if tebakan < angka_rahasia then
            writeln('Terlalu kecil!')
        else
            writeln('Selamat! Kamu benar!');
            
        writeln;
    until tebakan = angka_rahasia;

    writeln('===============================');
    writeln('   Terima kasih sudah bermain! ');
    writeln('===============================');
    readln;
end.