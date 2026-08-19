set serveroutput on;

declare
    v_empname emp.empname%type;
    v_salary emp.salary%type;
begin
    v_empname := '&empname';

    select salary
    into v_salary
    from emp
    where empname = v_empname;

    dbms_output.put_line('employee name: ' || v_empname);
    dbms_output.put_line('salary: ' || v_salary);

exception
    when no_data_found then
        dbms_output.put_line('employee does not exist.');

    when too_many_rows then
        dbms_output.put_line('multiple employees found with this name.');
end;
/