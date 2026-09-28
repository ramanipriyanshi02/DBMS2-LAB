--Definition 40
create or replace function fun_balance (xactno in number) Return number is mybalance number;
begin
	select balance INTO mybalance from account where ACTNO=xactno;
return mybalance;
end fun_balance;
/