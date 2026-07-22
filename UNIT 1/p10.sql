--delete the emp id
set serveroutput on;
declare
	
	eid number(4):=&eid;
	
begin
	delete from emp where emdid=eid;	
commit;
	dbms_output.put_line('delete the data');

end;
/

