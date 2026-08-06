--p8
set serveroutput on;
begin
    for x in (select custid, name, city from customer where name like 'a%')
    loop
        dbms_output.put_line(x.custid || ' ' || x.name || ' ' || x.city);
    end loop;
end;
/