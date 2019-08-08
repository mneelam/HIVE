--####HIVE Functions#######

--***DATE Funtions***

set hiveconf:hive.cli.print.current.db=true;  --Displays the current database name on CLI

SELECT UNIX_TIMESTAMP('2017-04-26 00:00:00'); --O/P :  1493145000 (This displays the number of seconds from timestamp)

SELECT FROM_UNIXTIME('1493145000'); --O/P :  2017-04-26 00:00:00 (This displays the timestamp FROM number of seconds, REVERSE of above function)

TO_DATE(string timestamp)
   --This function returns the date part of timestamp in the format 'yyyy-mm-dd'
   
YEAR(string timestamp)
   --This function returns the YEAR of timestamp in the format 'yyyy-mm-dd'
   
MONTH(string timestamp)
   --This function returns the MONTH of timestamp
   
DAY(string timestamp) OR DAYOFMONTH(string timestamp)
   --This function returns the DAY of timestamp

HOUR(string timestamp)
   --This function returns the HOUR of timestamp

MINUTE(string timestamp)
   --This function returns the MINUTES of timestamp
 
SECOND(string timestamp)
   --This function returns the SECONDS of timestamp
   
WEEKOFYEAR(string timestamp)
   --This function returns the WEEK NUMBER  of timestamp

DATEDIFF(string date1,string date2)
   --This function returns the difference of days between dates
   
DATE_ADD(string date,int days)
   --This function adds the number of days to the date 
   
DATE_SUB(string date,int days)
   --This function subtracts the number of days to the date 
   
--***MATHEMATICAL Funtions***

CEIL(9.5) returns 10

FLOOR(9.5) returns 9

ROUND(143.245,2) retunrs 143.24

select rand(); --Generates random value

--***STRING Funtions***

CONCAT()

SELECT CONCAT(COL1,'-',COL2) FROM TABLE1; -- returns COL1 values and col2 values with - in the middle 	

LENGTH(col1) --Gives length of the value

LOWER(col1)  --Convert upper case to lower case

UPPER(col1)  --Convert lower case to upper case

LPAD(COL1,10,'X')  -- 1st parameter is the column , 2nd parameter is the number of charachters including the padding character,3rd paramenter id padding value

RPAD(COL1,10,'X') -- Same as LPAD but padding is done to the right

TRIM(string) --Removes tailing and leading spaces

LTRIM(string) --Removes spaces on the left

RTRIM(string) --Removes spaces on the right

REPEAT(COL1,INT ) --Repeats the string to number of times to be repeated

REVERSE(COL1) --Reverses the i/p string 

SPLIT() --Splits the string based on the delimiter specified 

hive> SELECT SPLIT('hive:hadoop',':');
OK
["hive","hadoop"]

SUBSTRING()

hive> SELECT SUBSTRING('Mahesh Babu Neelam',4);
OK
esh Babu Neelam
Time taken: 0.352 seconds, Fetched: 1 row(s)
hive> SELECT SUBSTRING('Mahesh Babu Neelam',4,8);
OK
esh Babu
Time taken: 0.291 seconds, Fetched: 1 row(s)

INSTR(string,charx)

hive> SELECT INSTR('Mahesh Babu Neelam','e');
OK
4
Time taken: 0.379 seconds, Fetched: 1 row(s)
hive> 


Conditional Statements

IF

CASE

