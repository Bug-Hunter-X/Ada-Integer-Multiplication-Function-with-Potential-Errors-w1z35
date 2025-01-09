```ada
function Multiply(X, Y : Integer) return Integer is
   Result : Integer;
begin
   if (X > 0 and Y > Integer'Last / X) or (X < 0 and Y < Integer'Last / X) then
      raise Constraint_Error;
   elsif (X > 0 and Y < Integer'First / X) or (X < 0 and Y > Integer'First / X) then
      raise Constraint_Error;
   end if;
   Result := X * Y;
   return Result;
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Error: Integer overflow occurred");
      return 0; -- Or handle the error in a more appropriate way
end Multiply;

procedure Main is
A, B : Integer := 10;
C : Integer;
begin
   C := Multiply(A, B);
   Ada.Text_IO.Put_Line("Result: " & Integer'Image(C));
   -- Test with values that could cause overflow
   C := Multiply(Integer'Last, 2);
   Ada.Text_IO.Put_Line("Result: " & Integer'Image(C));
exception
   when others =>
      Ada.Text_IO.Put_Line("An unexpected error occurred");
end Main;
```