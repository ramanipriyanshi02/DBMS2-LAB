declare
    pname varchar2(20) := '&pname';
    qty number := &qty;
    price number := &price;
    dis number := &dis;
    total number;
    amt number;
begin
    total := qty * price;
    amt := total - (total * dis / 100);

    dbms_output.put_line('product : ' || pname);
    dbms_output.put_line('total : ' || total);
    dbms_output.put_line('discount amount : ' || (total * dis / 100));
    dbms_output.put_line('final amount : ' || amt);
end;
/