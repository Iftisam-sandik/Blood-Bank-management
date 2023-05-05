SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PROCEDURE show
IS
DECLARE
	C int;
	D varchar2(15);
	E varchar2(15);
	F number;
BEGIN
	FOR X in(select bankid,bankName,bankAddress,contactNumber S.bloodbank union Y.bloodbank1@site1) loop;
	C := x.bankid;
	D := x.bankName;
	E := x.bankAddress;
	F := x.contactNumber;
	DBMS_OUTPUT.PUT_LINE(C || ' '|| D || ' '|| E || ' '|| ' ' || F);
END show;
/

EXEC show;