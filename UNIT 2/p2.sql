set serveroutput on;

declare
    v_count number;
begin
    update emp
    set salary = salary + (salary * 5 / 100)
    where deptno = 20;

    if sql%notfound then
        dbms_output.put_line('no employee found in department 20.');
    else
        v_count := sql%rowcount;

        dbms_output.put_line(v_count || ' employee salary raised by 5%.');

        insert into emp_update
        select empid,
               empname,
               salary / 1.05,
               salary,
               sysdate
        from emp
        where deptno = 20;

        dbms_output.put_line('salary update record maintained in emp_update.');
    end if;

    commit;
end;
/