 CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(30),
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));

INSERT INTO JOBS VALUES
('100','Sr. Architect',60000,100000),
('200','Sr. Software Developer',60000,80000),
('300','Jr.Software Developer',40000,60000),
('400','Jr.Software Developer',40000,60000),
('500','Jr. Architect',50000,70000),
('600','Lead Architect',70000,100000),
('650','Jr. Designer',60000,70000),
('660','Jr. Designer',60000,70000),
('234','Sr. Designer',70000,90000),
('220','Sr. Designer',70000,90000)