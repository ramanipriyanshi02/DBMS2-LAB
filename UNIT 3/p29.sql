set serveroutput on
declare
	xempid number:=&xempid;
	xcomm number;
	null_comm EXCEPTION;
begin
	select comm into xcomm from emp where empid=xempid;
	if xcomm IS null then 
	Raise null_comm;
else
	dbms_output.put_line('comm is='||xcomm);
end if;
EXCEPTION
WHEN null_comm then
RAISE_APPLICATION_ERROR(-20202,'Commission is not entered');
end;
/