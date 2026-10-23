CREATE OR REPLACE PROCEDURE search_EMP
(
    p_eid IN NUMBER,
    p_ename OUT VARCHAR2
)
IS
BEGIN
    SELECT ename
    INTO p_ename
    FROM emp
    WHERE eid = p_eid;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_ename := NULL;
        DBMS_OUTPUT.PUT_LINE('Error: Employee ID ' || p_eid || ' not found.');

    WHEN TOO_MANY_ROWS THEN
        p_ename := NULL;
        DBMS_OUTPUT.PUT_LINE('Error: Multiple employees found.');
END;
/