set serveroutput on;

declare
    cursor c_emp is
        select empid, empname, salary
        from emp
        where deptno = 20
        for update;

    v_empid emp.empid%type;
    v_empname emp.empname%type;
    v_salary emp.salary%type;
    v_count number := 0;

begin
    open c_emp;

    if c_emp%isopen then
        dbms_output.put_line('cursor is open.');
    end if;

    loop
        fetch c_emp into v_empid, v_empname, v_salary;

        exit when c_emp%notfound;

        update emp
        set salary = v_salary + (v_salary * 5 / 100)
        where current of c_emp;

        insert into emp_update
        values (
            v_empid,
            v_empname,
            v_salary,
            v_salary + (v_salary * 5 / 100),
            sysdate
        );

        v_count := v_count + 1;
    end loop;

    if v_count = 0 then
        dbms_output.put_line('no employee found in department 20.');
    else
        dbms_output.put_line(v_count || ' employee salary raised by 5%.');
        dbms_output.put_line('salary update record maintained in emp_update.');
    end if;

    close c_emp;

    commit;
end;
/
