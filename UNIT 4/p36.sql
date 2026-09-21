create or replace procedure empwop
IS
BEGIN
     update emp set salary= salary + 1000;
	commit;
END empwop;
/