set serveroutput on;

declare
    v_ename employee.ename%type;
    v_basicsal employee.basicsal%type;
begin
    select ename, basicsal
    into v_ename, v_basicsal
    from employee
    where age = 50;

    dbms_output.put_line('employee name: ' || v_ename);
    dbms_output.put_line('basic salary: ' || v_basicsal);

exception
    when no_data_found then
        dbms_output.put_line('no employee found whose age is 50.');

    when too_many_rows then
        dbms_output.put_line('more than one employee has age 50.');
end;
/