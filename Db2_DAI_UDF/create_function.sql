-- Run command: db2 -tvf create_function.sh

CONNECT TO TESTDB;

CREATE OR REPLACE FUNCTION IRIS_PREDICT_UDF(FLOAT, FLOAT, FLOAT, FLOAT)
  RETURNS CHAR(10)
  LANGUAGE PYTHON
  PARAMETER STYLE NPSGENERIC
  FENCED
  NOT THREADSAFE
  ALLOW PARALLEL
  NO DBINFO
  NOT DETERMINISTIC
  NO EXTERNAL ACTION
  RETURNS NULL ON NULL INPUT
  NO SQL
  EXTERNAL NAME '/home/db2inst1/db2_machine-learning/Db2_DAI_UDF/iris_predict_udf.py';

CONNECT RESET;
