CREATE OR REPLACE PROCEDURE
PROC_NEW_CUSTOMER (CUSTOMER_ID OUT NUMBER,
                   FIRSTNAME IN VARCHAR2,
                   CREDIT IN OUT NUMBER) IS
BEGIN

SELECT SEQ_CUSTOMER_ID.NEXTVAL INTO CUSTOMER_ID
FROM DUAL;

IF (CREDIT IS NULL) THEN 
SELECT 100 INTO CREDIT
FROM DUAL;
END IF;

insert into CUSTOMER values(CUSTOMER_ID, FIRSTNAME, CREDIT);

end PROC_NEW_CUSTOMER;