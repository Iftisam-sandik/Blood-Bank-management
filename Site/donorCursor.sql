set serveroutput on;
set verify off;

declare
	A donor.donor_id%type;
	B donor.donor_name%type;
	C donor.donor_age%type;
	D donor_blood_group%type;
	E donor_address%type;
	
BEGIN
	FOR F in (select donor_id,donor_name,donor_age,donor_blood_group,donor_address from donor) loop
		A := F.donor_id;
		B := F.donor_name;
		C := F.donor_age;
		D := F.donor_blood_group;
		E := F.donor_address;
		
		DBMS_OUTPUT.PUT_LINE(A || ' '|| B || ' ' || C || ' ' || D || ' ' || E);
	END loop;
END;
/