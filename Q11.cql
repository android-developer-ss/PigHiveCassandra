
/usr/local/apache-cassandra-2.0.5/bin/cqlsh csac0


//------------------------------------------------------------------------------------
//1.

CREATE TABLE usersdat ( uid int primary key, gender text, age int, occupation int, zipzip text );
//-------------------------------------------------------------------------------------
//2. Load all records in the dataset to this table

COPY usersdat(uid, gender, age, occupation, zipzip)FROM '/home/004/s/sv/svs130130/users.dat' WITH DELIMITER = ':';

//-------------------------------------------------------------------------------------
//3. Insert
INSERT INTO usersdat (uid, gender, age, occupation, zipzip) VALUES (6041, 'M', 32, 6, '11120'); 
//----------------------------------------------------------------------------------=---
//4. - Select the tuple which has user id 6020
       SELECT * FROM usersdat WHERE uid = 6020;
//---------------------------------------------------------------------------------------
//5. Delete all rows in the table
  TRUNCATE usersdat;
//--------------------------------------------------------------------------------------
//6. Drop the table

       DROP TABLE usersdat;
//---------------------------------------------------------------------------------------