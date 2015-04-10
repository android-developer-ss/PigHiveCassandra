/usr/local/apache-cassandra-2.0.5/bin/cassandra-cli --host csac0

CREATE KEYSPACE svs130130 WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1}; 
CREATE KEYSPACE svs130130 with placement_strategy = 'org.apache.cassandra.locator.SimpleStrategy' and strategy_options = {replication_factor:1};
USE svs130130; 

create column family my_columnfamily
with comparator = UTF8Type
AND key_validation_class = UTF8Type AND column_metadata = [
{column_name: UserId, validation_class: UTF8Type}
{column_name: Gender, validation_class: UTF8Type}
{column_name: Age, validation_class: Int32Type}
{column_name: Occupation, validation_class: UTF8Type}
{column_name: ZipCode, validation_class: UTF8Type}
];

//-----------------------------------------------------------------------------------
SET my_columnfamily['13']['UserId']='13';
SET my_columnfamily['13']['Gender']='F';
SET my_columnfamily['13']['Age']=51;
SET my_columnfamily['13']['Occupation']='1';
SET my_columnfamily['13']['ZipCode']='93334';

SET my_columnfamily['1471']['UserId']='1471';
SET my_columnfamily['1471']['Gender']='F';
SET my_columnfamily['1471']['Age']=31;
SET my_columnfamily['1471']['Occupation']='17';
SET my_columnfamily['1471']['ZipCode']='11116';

SET my_columnfamily['1496']['UserId']='1496';
SET my_columnfamily['1496']['Gender']='F';
SET my_columnfamily['1496']['Age']=31;
SET my_columnfamily['1496']['Occupation']='17';
SET my_columnfamily['1496']['ZipCode']='94118' WITH ttl=300;

//-----------------------------------------------------------------------------------

GET my_columnfamily ['13'] ['Gender'];
GET my_columnfamily ['13'] ['Occupation'];
list my_columnfamily;


DEL my_columnfamily ['1471']['Gender'];

drop column family my_columnfamily;

describe svs130130;


//-----------------------------------------------------------------------------------


