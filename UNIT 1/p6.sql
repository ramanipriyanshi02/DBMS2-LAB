--program to using loop
set serveroutput on
declare
       n number:= &n;
begin
      FOR i IN 1..n LOOP
dbms_output.put_line(i);
end loop;
end;
/