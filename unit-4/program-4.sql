SET SERVEROUTPUT ON;

DECLARE
    v_num NUMBER:=&num;
    v_squre NUMBER;
BEGIN

    v_squre := square_num(v_num);

    DBMS_OUTPUT.PUT_LINE('Square = ' || v_squre);
END;
/