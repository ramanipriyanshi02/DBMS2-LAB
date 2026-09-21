create or replace procedure search_emp(xempid in number,enm OUT char)
is
begin
select empname INTO enm from emp where empid=xempid;
EXCEPTION
when no_Data_Found then
dbms_output.put_line('ID not found');
end search_emp;
/