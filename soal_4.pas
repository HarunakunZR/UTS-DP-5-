program DeretFibonacci;
uses crt;

var
    n, i: integer;
    a, b, c, total: longint;

begin
    clrscr;
    writeln('Program Deret Fibonacci');
    write('Masukkan jumlah suku (n): ');
    readln(n);

    a := 0;
    b := 1;
    total := 0;

    writeln('Sequence = ');

    for i := 1 to n do
    begin
        write(a);
        if i <> n then
            write(', ');
        total := total + a;
        c := a + b;
        a := b;
        b := c;
    end;

    writeln;
    writeln('Total = ', total);
    readln;
end.
