SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PACKAGE bloodBankPackage AS
	PROCEDURE INS;
	--PROCEDURE UPDT(ID IN INT);
END bloodBankPackage;
/

CREATE OR REPLACE PACKAGE BODY bloodBankPackage AS
	PROCEDURE INS
	IS
	DECLARE
		C int;
		D varchar2(15);
		E varchar2(15);
		F number;
	BEGIN
		SELECT COUNT(*) INTO C FROM BLOODBANK;
		C := C+1;
		D := '&Blood_Bank_Name';
		E := '&Address';
		F := &contact;
		INSERT INTO BLOODBANK (bankID, bankName, bankAddress, contactNumber) VALUES(C, D, E, F);
	END INS;
END bloodBankPackage;
/

EXEC bloodBankPackage.INS;
