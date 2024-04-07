DROP TABLE EMPLOYEES;

CREATE TABLE EMPLOYEES
(
	ENO    NUMBER(4) PRIMARY KEY,
	ENAME  VARCHAR(30),
	ZIP    NUMBER(5),
	HDATE  DATE
);

INSERT INTO EMPLOYEES VALUES
(1000, 'Jones',67226,'12-DEC-10'); 

INSERT INTO EMPLOYEES VALUES
(1001, 'Brown',67226,'12-DEC-11'); 

INSERT INTO EMPLOYEES VALUES
(1002, 'Green',67200,'12-DEC-12'); 

INSERT INTO EMPLOYEES VALUES
(1010, 'Clark',67200,'01-JAN-13'); 

INSERT INTO EMPLOYEES VALUES
(1011, 'Black',67225,'01-JAN-13'); 

INSERT INTO EMPLOYEES VALUES
(1012, 'Kent',67206,'12-FEB-16'); 

INSERT INTO EMPLOYEES VALUES
(1020, 'Jones',67216,'26-FEB-16'); 

INSERT INTO EMPLOYEES VALUES
(1021, 'Smith',67225,'28-MAR-17'); 

INSERT INTO EMPLOYEES VALUES
(1022, 'Laney',67225,'28-MAR-18'); 

INSERT INTO EMPLOYEES VALUES
(1025, 'Marsh',67226,'24-MAY-18');

INSERT INTO EMPLOYEES VALUES 
(1028, 'Mary',67200,'26-MAY-19');

COMMIT;