create or replace procedure search_emp
	p_eid in NUMBER,
	p_ename out VARCHAR2
)	
is

begin
	select ename
	into p_ename
	from emp
	where eid = p_eid;

exception 
	when no data_found then
		p_ename := NULL;
		dbms_output.put_line('error: emp id'
				|| p_eid || 'not fount .');
	
		when too_many_rows then
		p_ename := NULL;
end;
/