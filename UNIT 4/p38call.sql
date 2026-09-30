set serveroutput on;

declare
    v_empid number;
    v_result varchar2(50);
begin
    v_empid := &empid;

    search_emp(v_empid, v_result);

    dbms_output.put_line(v_result);
end;
/