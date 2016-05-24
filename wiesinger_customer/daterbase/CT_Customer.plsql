create or replace 
PROCEDURE CT_CUSTOMER IS
  v_tabcnt NUMBER;
BEGIN
  SELECT count(*) INTO v_tabcnt
  FROM   ALL_TABLES
  WHERE  TABLE_NAME = 'CUSTOMER' and
         OWNER = USER;

  if v_tabcnt = 0 then
    EXECUTE IMMEDIATE 'CREATE TABLE CUSTOMER
                       (
  						CUSTOMER_ID   INTEGER,
  						FIRSTNAME     VARCHAR2(20),
  						CREDIT        DECIMAL(10,2),
  						CONSTRAINT    CUSTOMER_PK PRIMARY KEY (CUSTOMER_ID)
            		   )';
    COMMIT;
  END IF;
 
  
  SELECT count(*) into v_tabcnt
  FROM   ALL_SEQUENCES
  WHERE  SEQUENCE_NAME = 'SEQ_ENG_PRIMARY_KEY' and
         SEQUENCE_OWNER = USER;

  if v_tabcnt = 0 then
    EXECUTE IMMEDIATE 'CREATE SEQUENCE SEQ_ACCOUNTNUMBER
                          START WITH 200000
                          INCREMENT BY 1
                          CACHE 30';
    COMMIT;
  end if;

END CT_CUSTOMER;