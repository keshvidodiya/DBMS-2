CREATE OR REPLACE FUNCTION GET_BALANCE
(
    p_acno IN NUMBER
)
RETURN NUMBER
IS
    v_balance NUMBER;
BEGIN
    SELECT BALANCE
    INTO v_balance
    FROM ACCOUNT
    WHERE ACNO = p_acno;

    RETURN v_balance;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;
/