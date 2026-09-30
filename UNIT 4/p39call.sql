set serveroutput on;

declare
    n number;
    result number;
begin
    n := &n;
    result := fun_square(n);
    dbms_output.put_line('square = ' || result);
end;
/
