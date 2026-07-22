--Write a PL/SQL block to calculate the square and cube of the given 
number.
SET SERVEROUTPUT ON;

declare
    num    NUMBER;
    square NUMBER;
    cube   NUMBER;
begin

    num := &num;

 
    square := num * num;
    cube := num * num * num;

   
   dbms_output.put_line('Given Number : ' || num);
   dbms_output.put_line('Square       : ' || square);
   dbms_output.put_line('Cube         : ' || cube);
end;
/