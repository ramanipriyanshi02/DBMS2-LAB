create or replace function fun_square(x in number)
return number
is
    answer number;
begin
    answer := x * x;
    return answer;
end fun_square;
/