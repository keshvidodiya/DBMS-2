CREATE OR REPLACE FUNCTION square_num(
	p_num in NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_num * p_num;
END;
/