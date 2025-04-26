CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEP_ID_LOC CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));
INSERT INTO LOCATIONS VALUES
('L0001','2'),
('L0002','5'),
('L0003','7')
                            