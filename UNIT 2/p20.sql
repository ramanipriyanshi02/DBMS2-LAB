set serveroutput on;

declare
begin
    update emp
    set salary = salary + 1000
    where deptno = 20;

    if sql%notfound then
        dbms_output.put_line('no employee found in department 20.');
    else
        dbms_output.put_line(sql%rowcount || ' employee salary updated.');
    end if;

    commit;
end;
/
