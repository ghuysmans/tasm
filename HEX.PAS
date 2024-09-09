procedure puthexb(b: byte); external;
procedure puthexw(w: word); external;
{$L puthex} {TPC acts as a linker!}

procedure writeb(b: byte); external;
procedure writew(w: word); external;
{$L puthexs}

var
i: integer;

begin
i := 42;
while i < 50 do begin
	writeb(i);
	i := i + 1;
end;
end.
