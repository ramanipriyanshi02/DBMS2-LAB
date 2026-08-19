set serveroutput on
declare
	enm number(2);
	sal number(5);
	id number:= &id;
begin
	select empid,salary INTO enm,sal from emp where empid=id;
	dbms_output.put_line('employee name:'||enm||'salary:'||sal);

	EXCEPTION
	WHEN NO_DATA_FOUND THEN
	dbms_output.put_line('employee id:'||'NOT DATA AVAILABLE');

end;
/ 