set serveroutput on;

declare
    cursor c1 is
        select custid, name, city
        from customer
        order by name;

    xcustid customer.custid%type;
    xname customer.name%type;
    xcity customer.city%type;

begin
    open c1;

    loop
        fetch c1 into xcustid, xname, xcity;
        exit when c1%notfound;

        dbms_output.put_line(xcustid || ' ' || xname || ' ' || xcity);
    end loop;

    close c1;
end;
/