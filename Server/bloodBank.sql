SET SERVEROUTPUT ON;
SET VERIFY OFF;

DROP TABLE BLOODBANK;
CREATE TABLE BLOODBANK (
	bankID int, 
	bankName varchar2(15),
	bankAddress varchar2(15),
	contactNumber number,
	PRIMARY KEY (bankID));
	
INSERT INTO BLOODBANK (bankID, bankName, bankAddress, contactNumber) VALUES (1, 'Lifestream', 'Mirpur-10', 01521322769);
INSERT INTO BLOODBANK (bankID, bankName, bankAddress, contactNumber) VALUES (2, 'Bloodsource', 'Tejgaon', 01521326769);
INSERT INTO BLOODBANK (bankID, bankName, bankAddress, contactNumber) VALUES (3, 'Hemacare', 'Dhanmondi', 01551322769);