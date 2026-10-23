DECLARE
    v_ename VARCHAR2(20);
BEGIN
    search_EMP(101, v_ename);

    IF v_ename IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_ename);
    END IF;
END;
/