--Write a PL/SQL block 
which converts temperature from Celsius to Fahrenheit.

set serveroutput on 
declare
    celsius NUMBER := &celsius;
    fahrenheit NUMBER;
begin
    
    fahrenheit := (celsius * 9/5) + 32;

 
    dbms_output.put_line('Temperature in Celsius: ' || celsius);
    dbms_output.put_line('Temperature in Fahrenheit: ' || fahrenheit);
end;
/