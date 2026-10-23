SET SERVEROUTPUT ON;

DECLARE
    v_acno NUMBER;
    v_balance NUMBER;
BEGIN
    v_acno := &ACNO;

    v_balance := GET_BALANCE(v_acno);

    IF v_balance = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Account not found');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Balance: ' || v_balance);
    END IF;
END;
/
