CREATE database if not exists andrei;
 
USE andrei;

drop table if exists test1;

create table test1 (
	a Int32,
	b String,
	c Enum('hello','world')
) Engine = Log();

INSERT INTO test1 (a,b,c)
SELECT 
  rand() as a,
  fuzzBits(materialize('abcdefabc'),0.1) as b,
  ['hello', 'world'][toInt32(randUniform(1,3))]
FROM numbers(100000);

SELECT * FROM test1
WHERE b like '%abc%' AND a > 10 LIMIT 30;