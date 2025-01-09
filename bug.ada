```ada
function Multiply(X, Y : Integer) return Integer is
begin
  return X * Y;
end Multiply;

procedure Main is
A, B : Integer := 10;
C : Integer;
begin
C := Multiply(A, B);
Ada.Text_IO.Put_Line("Result: " & Integer'Image(C));
end Main;
```