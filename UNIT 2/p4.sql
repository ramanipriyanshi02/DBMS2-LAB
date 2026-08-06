set serveroutput on
declare
    cursor c is
        select ename, deptno, salary
        from emp
        order by salary desc;

    r c%rowtype;
begin
    open c;
    loop
        fetch c into r;
        exit when c%notfound or c%rowcount > 5;

        dbms_output.put_line(r.ename || ' ' || r.deptno || ' ' || r.salary);
    end loop;
    close c;
end;
/