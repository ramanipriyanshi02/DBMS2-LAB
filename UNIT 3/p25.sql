SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS
        SELECT *
        FROM employee
        WHERE deptno = &dept_no;

    e_no_dept_found EXCEPTION;
    v_count NUMBER := 0;

BEGIN
    FOR emp_rec IN c1
    LOOP
        INSERT INTO emp_backup
        VALUES (
            emp_rec.eid,
            emp_rec.ename,
            emp_rec.deptno,
            emp_rec.deptname,
            emp_rec.gender,
            emp_rec.age,
            emp_rec.basicsal
        );

        v_count := v_count + 1;
    END LOOP;

    IF v_count = 0 THEN
        RAISE e_no_dept_found;
    END IF;

    DBMS_OUTPUT.PUT_LINE(v_count || ' record(s) inserted into EMP_BACKUP.');

EXCEPTION
    WHEN e_no_dept_found THEN
        DBMS_OUTPUT.PUT_LINE('NO_DEPT_FOUND: No employees found for entered department number.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/