create or replace procedure search_emp
(
    p_empid in number,
    p_result out varchar2
)
is
    p_count number;
begin
    select count(*)
    into p_count
    from emp
    where empid = p_empid;

    if p_count > 0 then
        p_result := 'Employee is present';
    else
        p_result := 'Employee is not present';
    end if;
end;
/