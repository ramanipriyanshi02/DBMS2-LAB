SET SERVEROUTPUT ON;

DECLARE
    v_eid NUMBER := &EID;
    v_ename VARCHAR2(30);
    v_basic NUMBER;
    v_hra NUMBER;
    v_da NUMBER;
    v_medical NUMBER := 500;
    v_pf NUMBER;
    v_gross NUMBER;

BEGIN
    SELECT ENAME, BASICSAL
    INTO v_ename, v_basic
    FROM EMPLOYEE
    WHERE EID = v_eid;

    v_hra := v_basic * 0.15;
    v_da := v_basic * 0.50;
    v_pf := v_basic * 0.10;

    v_gross := v_basic + v_hra + v_da + v_medical - v_pf;

    DBMS_OUTPUT.PUT_LINE('Employee ID : ' || v_eid);
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_ename);
    DBMS_OUTPUT.PUT_LINE('Basic Salary : ' || v_basic);
    DBMS_OUTPUT.PUT_LINE('Gross Salary : ' || v_gross);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;
/