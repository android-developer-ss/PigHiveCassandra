//---------------------------------------------------------------------------------------------------------
CREATE TABLE usersdat ( uid int primary key, gender text, age int, occupation int, zipzip text );
//---------------------------------------------------------------------------------------------------------
cqlsh:svs130130> COPY usersdat(uid, gender, age, occupation, zipzip)FROM '/home/004/s/sv/svs130130/users.dat' WITH DELIMITER = ':';
6040 rows imported in 7.968 seconds.

//---------------------------------------------------------------------------------------------------------
cqlsh:svs130130> SELECT * FROM usersdat WHERE uid = 6020;

 uid  | age | gender | occupation | zipzip
------+-----+--------+------------+--------
 6020 |  56 |      F |         16 |  10003

(1 rows)
//---------------------------------------------------------------------------------------------------------

cqlsh:svs130130> TRUNCATE usersdat;
cqlsh:svs130130> DROP TABLE usersdat;
cqlsh:svs130130>

//---------------------------------------------------------------------------------------------------------
