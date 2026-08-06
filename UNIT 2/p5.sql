--p5
set serveroutput on;
declare
    cursor c1(xdeptno number) is
        select empid, empname, salary
        from emp
        where deptno = xdeptno;

    xtotal number;

begin
    for d in (select distinct deptno from emp order by deptno)
    loop
        xtotal := 0;

        dbms_output.put_line('department no : ' || d.deptno);

        for x in c1(d.deptno)
        loop
            dbms_output.put_line(x.empid || ' ' || x.empname || ' ' || x.salary);
            xtotal := xtotal + x.salary;
        end loop;

        dbms_output.put_line('total gross salary : ' || xtotal);
        dbms_output.put_line('-----------------------');
    end loop;
end;
/