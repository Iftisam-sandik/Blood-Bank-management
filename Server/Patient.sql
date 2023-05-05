SET SERVEROUTPUT ON;
SET VERIFY OFF;

DROP TABLE PATIENT;
CREATE TABLE PATIENT (
	patientID int, 
	patientName varchar2(15),
	patientBloodGroup varchar2(15),
	paientAddress varchar2(15),
	patientDisease varchar2(15),
	patientContact number,
	bankID int,
	donorID int,
	PRIMARY KEY (patientID),
	FOREIGN KEY (bankID) REFERENCES BLOODBANK (bankID),
	FOREIGN KEY (donorID) REFERENCES DONOR (donorID));
	
INSERT INTO PATIENT (patientID, patientNameName, patientBloodGroup, paientAddress, patientDisease, patientContact, bankID, donorID) VALUES (1, 'Tahmid', 'A(+ve)', 'Mirpur-10', 'Heart', 01521322769,1,1);
INSERT INTO PATIENT (patientID, patientNameName, patientBloodGroup, paientAddress, patientDisease, patientContact, bankID, donorID) VALUES (2, 'Sandik', 'A(+ve)', 'Tejgaon', 'Kidney', 01531322769,2,1);
INSERT INTO PATIENT (patientID, patientNameName, patientBloodGroup, paientAddress, patientDisease, patientContact, bankID, donorID) VALUES (3, 'Shoaib', 'B(+ve)', 'Gulshan', 'Heart', 01521322769,4,2);

commit;