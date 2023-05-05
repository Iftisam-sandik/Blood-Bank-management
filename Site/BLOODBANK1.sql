SET SERVEROUTPUT ON;
SET VERIFY OFF;

DROP TABLE BLOODBANK1;
CREATE TABLE BLOODBANK1 (
	bankID int, 
	bankName varchar2(15),
	bankAddress varchar2(15),
	contactNumber number,
	PRIMARY KEY (bankID));
	
INSERT INTO BLOODBANK1 (bankID, bankName, bankAddress, contactNumber) VALUES (4, 'Lifesource', 'Gulshan', 01531322769);
INSERT INTO BLOODBANK1 (bankID, bankName, bankAddress, contactNumber) VALUES (5, 'Bloodstream', 'Gulshan', 01571326769);
INSERT INTO BLOODBANK1 (bankID, bankName, bankAddress, contactNumber) VALUES (6, 'Hemacare', 'Gulshan', 01541322769);

commit;