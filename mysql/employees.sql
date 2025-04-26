CREATE TABLE EMPLOYEES (
    EMP_ID CHAR(9) NOT NULL, 
    F_NAME VARCHAR(15) NOT NULL,
    L_NAME VARCHAR(15) NOT NULL,
    SSN CHAR(9),
    B_DATE DATE,
    SEX CHAR,
    ADDRESS VARCHAR(30),
    JOB_ID CHAR(9),
    SALARY DECIMAL(10,2),
    MANAGER_ID CHAR(9),
    DEP_ID CHAR(9) NOT NULL,
    PRIMARY KEY (EMP_ID)
);

-- View all rows in the table
SELECT * FROM EMPLOYEES;

-- Insert rows into the table
INSERT INTO EMPLOYEES VALUES 
('E1001', 'John', 'Thomas', '123456', '1956-09-01', 'M', '5631 Rice, OakPark,IL', '100', 100000.00, '30001', '2'),
('E1002', 'Alice', 'James', '123457', '1972-07-31', 'F', '980 Berry Ln, Elgin,IL', '200', 80000.00, '30002', '5'),
('E1003', 'Steve', 'Wells', '123458', '1980-10-08', 'M', '291 Springs, Gary,IL', '300', 50000.00, '30002', '5'),
('E1004', 'Santosh', 'Kumar', '123459', '1985-07-20', 'M', '511 Aurora Av, Aurora,IL', '400', 60000.00, '30002', '5'),
('E1005', 'Ahmed', 'Hussain', '123410', '1981-04-01', 'M', '216 Oak Tree, Geneva,IL', '500', 70000.00, '30001', '2'),
('E1006', 'Nancy', 'Allen', '123411', '1978-06-02', 'F', '111 Green Pl, Elgin,IL', '600', 90000.00, '30001', '2'),
('E1007', 'Mary', 'Thomas', '123412', '1975-05-05', 'F', '100 Rose Pl, Gary,IL', '650', 65000.00, '30003', '7'),
('E1008', 'Bharath', 'Gupta', '123413', '1985-06-05', 'M', '145 Berry Ln, Naperville,IL', '660', 65000.00, '30003', '7'),
('E1009', 'Andrea', 'Jones', '123414', '1990-09-07', 'F', '120 Fall Creek, Gary,IL', '234', 70000.00, '30003', '7'),
('E1010', 'Ann', 'Jacob', '123415', '1982-03-30', 'F', '111 Britany Springs,Elgin,IL', '220', 70000.00, '30002', '5');
SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE SALARY<(SELECT AVG(SALARY) FROM EMPLOYEES);
SELECT EMP_ID,SALARY,(SELECT MAX(SALARY) FROM EMPLOYEES) FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE B_DATE>(SELECT AVG(B_DATE) FROM EMPLOYEES);
SELECT AVG(SALARY) FROM (SELECT SALARY FROM EMPLOYEES ORDER BY SALARY LIMIT 5) AS SALARY_TABLE;