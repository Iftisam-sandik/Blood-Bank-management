drop table donor;

create table donor (
	donor_id int,
	donor_name varchar2(15),
	donor_age int,
	donor_blood_group varchar2(10),
	donor_address varchar2(15),
	bankid int,
	primary key (donor_id),
	foreign key (bankid) references bloodbank (bankid));
	
insert into donor (donor_id, donor_name, donor_age, donor_blood_group, donor_address, bankid) values (1,'Sandik', 26, 'A(+ve)','Mirpur-10',1);
insert into donor (donor_id, donor_name, donor_age, donor_blood_group, donor_address, bankid) values (2,'Ifty', 25, 'B(+ve)','Tejgaon',2);
insert into donor (donor_id, donor_name, donor_age, donor_blood_group, donor_address, bankid) values (3,'Mahin', 25, 'AB(+ve)','Dhanmondi',3);
	
	