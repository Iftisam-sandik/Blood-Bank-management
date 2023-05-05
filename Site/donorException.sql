set serveroutput on;
set verify off;

declare
	B donor.donor_name%type;
	C donor.donor_age%type;
	D donor.donor_blood_group%type;
	E donor.donor_address%type;
	F donor.bankid%type;
	I int;
	age exception;
BEGIN
	select count(*) into I from donor;
	I := I+1;
	B := '&name';
	C := &age;
	D := '&blood_group';
	E := '&address';
	F := &bankid;
	
	if C<18 then
		raise age;
	elsif
		insert into donor (donor_id, donor_name, donor_age, donor_blood_group, donor_address, bankid) values (I, B, C, D, E, F); 
	end if;
EXCEPTION
	when age then
		DBMS_OUTPUT.PUT_LINE("Donor needs to be at least 18 yearsold");
END;
/