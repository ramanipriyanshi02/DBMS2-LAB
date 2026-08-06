--p3 Write a PL/SQL block that uses a cursor attribute %ROWCOUNT to display the name,
department and basic salary of the first 5 employees getting the highest basic salary.(Use Explicit Cursor)

set serveroutput on
declare
	cursor c1 IS select * from emp order by salary desc;
	d emp%ROWTYPE;
begin
 open c1;
 loop
	fetch c1 into d;
	exit when NOT c1%FOUND AND c1%ROWCOUNT <=5;
	dbms_output.put_line('id:'||d.empid||'name:'||d.empname||'deptno:'||d.deptno||'salary:'||d.salary);

end loop;
close c1;
end;
/