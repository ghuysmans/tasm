uses ustub;

var
acc, i: integer;

begin
acc := 0;
i := 200;
while i > 0 do begin
	acc := acc + i;
	i := i - 1;
end;
stub(acc);
end.
