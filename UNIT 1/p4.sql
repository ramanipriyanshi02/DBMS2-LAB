Write a PL/SQL block which accepts measurement in feet and displays it in cm, inch and meter. 

SET SERVEROUTPUT ON;

declare
    feet   NUMBER := &feet;
    cm     NUMBER;
    inch   NUMBER;
    meter  NUMBER;
begin
    
    inch := feet * 12;
    cm := feet * 30.48;
    meter := feet * 0.3048;

   
    dbms_output.put_line('Measurement in Feet   : ' || feet);
    dbms_output.put_line('Measurement in Inches : ' || inch);
    dbms_output.put_line('Measurement in CM     : ' || cm);
    dbms_output.put_line('Measurement in Meters : ' || meter);
end;
/