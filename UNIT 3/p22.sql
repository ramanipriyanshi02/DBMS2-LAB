set serveroutput on;

declare
    v_name marks.name%type;
    v_result marks.result%type;
begin
    v_name := '&student_name';

    select result
    into v_result
    from marks
    where trim(name) = trim(v_name);

    dbms_output.put_line('student name: ' || v_name);
    dbms_output.put_line('result: ' || v_result);

exception
    when no_data_found then
        dbms_output.put_line('student name does not exist.');
    when too_many_rows then
        dbms_output.put_line('multiple records found for this student name.');
end;
/