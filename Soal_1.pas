program CiciPunyaToko;
uses crt;

var
  buku, pulpen, pensil, penghapus, penggaris: longint;
  hargabuku, hargapulpen, hargapensil, hargapenghapus, hargapenggaris: longint;
  jumlahbuku, jumlahpulpen, jumlahpensil, jumlahpenghapus, jumlahpenggaris: integer;
  total, diskon, potongan, pajak, totalakhir: real;
  jenispembayaran: string;

begin
  clrscr;

  buku := 25000;
  pulpen := 5000;
  pensil := 3000;
  penghapus := 2000;
  penggaris := 4000;

  writeln('================================');
  writeln('     CICI PUNYA TOKO       ');
  writeln('================================');
  writeln('Buku       : Rp ', buku);
  writeln('Pulpen     : Rp ', pulpen);
  writeln('Pensil     : Rp ', pensil);
  writeln('Penghapus  : Rp ', penghapus);
  writeln('Penggaris  : Rp ', penggaris);
  writeln('================================');

  write('Masukkan jumlah Buku     : '); readln(jumlahbuku);
  write('Masukkan jumlah Pulpen    : '); readln(jumlahpulpen);
  write('Masukkan jumlah Pensil    : '); readln(jumlahpensil);
  write('Masukkan jumlah Penghapus : '); readln(jumlahpenghapus);
  write('Masukkan jumlah Penggaris : '); readln(jumlahpenggaris);
  writeln('================================');

  hargabuku := buku * jumlahbuku;
  hargapulpen := pulpen * jumlahpulpen;
  hargapensil := pensil * jumlahpensil;
  hargapenghapus := penghapus * jumlahpenghapus;
  hargapenggaris := penggaris * jumlahpenggaris;

  total := hargabuku + hargapulpen + hargapensil + hargapenghapus + hargapenggaris;

  diskon := 0;
  potongan := 0;
  pajak := 0;

  if total >= 100000 then
    diskon := 0.10 * total;

  write('Jenis Pembayaran (QRIS/Tunai): ');
  readln(jenispembayaran);

  if UpCase(jenispembayaran[1]) = 'Q' then
    potongan := 5000
  else if UpCase(jenispembayaran[1]) = 'T' then
    pajak := 0.05 * total;

  totalakhir := total - diskon - potongan + pajak;

  writeln('================================');
  writeln('Total Harga sebelum discount: Rp ', total:0:2);
  writeln('Seluruh Potongan dan discount  : Rp ', (potongan + pajak):0:2);
  writeln('================================');
  writeln('Total Akhir Pembayaran     : Rp ', totalakhir:0:2);
  writeln('================================');
  writeln('   TERIMA KASIH TELAH BERBELANJA DI TOKO CICI   ');
  readln;
end.