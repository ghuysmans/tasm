unit ustub;
interface
procedure stub(n : integer);

implementation
procedure disp(n : integer); external; {$L display} {TPC acts as a linker!}
procedure stub(n : integer); external; {$L ustub}

end.
