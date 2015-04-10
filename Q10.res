login as: svs130130

                 Department of Computer Science
                 University of Texas at Dallas

  Pursuant to Texas Administrative Code 202:

  (1) Unauthorized use is prohibited;

  (2) Usage may be subject to security testing and monitoring;

  (3) Misuse is subject to criminal prosecution; and

  (4) No expectation of privacy except as otherwise provided by
      applicable privacy laws.


svs130130@cs6360.utdallas.edu's password:
Last login: Fri Mar 27 12:04:59 2015 from vpn-40-129-79.utdallas.edu
Sourcing /usr/local/etc/skel/global/profile
{cs6360:~} /usr/local/apache-cassandra-2.0.5/bin/cassandra-cli --host csac0
Connected to: "Khan Cluster" on csac0/9160
Welcome to Cassandra CLI version 2.0.5

The CLI is deprecated and will be removed in Cassandra 3.0.  Consider migrating to cqlsh.
CQL is fully backwards compatible with Thrift data; see http://www.datastax.com/dev/blog/thrift-to-cql3

Type 'help;' or '?' for help.
Type 'quit;' or 'exit;' to quit.

[default@unknown] CREATE KEYSPACE svs130130 WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1}
...     ;
java.lang.IllegalArgumentException: No enum constant org.apache.cassandra.cli.CliClient.AddKeyspaceArgument.REPLICATION
[default@unknown] USE svs130130;
Keyspace 'svs130130' not found.
[default@unknown] CREATE KEYSPACE svs130130 WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
java.lang.IllegalArgumentException: No enum constant org.apache.cassandra.cli.CliClient.AddKeyspaceArgument.REPLICATION
[default@unknown] CREATE KEYSPACE svs130130 with placement_strategy = 'org.apache.cassandra.locator.SimpleStrategy' and strategy_options = {replication_factor:1};
561bd016-1cd2-38ea-b03f-231c26cd6c52
[default@unknown] USE svs130130;
Authenticated to keyspace: svs130130
[default@svs130130] create column family my_columnfamily
...     with comparator = UTF8Type
...     AND key_validation_class = UTF8Type AND column_metadata = [
...     {column_name: UserId, validation_class: UTF8Type}
...     {column_name: Gender, validation_class: UTF8Type}
...     {column_name: Age, validation_class: Int32Type}
...     {column_name: Occupation, validation_class: UTF8Type}
...     {column_name: ZipCode, validation_class: LongType}
...     ];
a908b495-92d3-3c14-bccf-3b7304a1137f
[default@svs130130] create column family my_columnfamily
...     with comparator = UTF8Type
...     AND key_validation_class = UTF8Type AND column_metadata = [
...     {column_name: UserId, validation_class: UTF8Type}
...     {column_name: Gender, validation_class: UTF8Type}
...     {column_name: Age, validation_class: Int32Type}
...     {column_name: Occupation, validation_class: UTF8Type}
...     {column_name: ZipCode, validation_class: LongType}
...     ];
Cannot add already existing column family "my_columnfamily" to keyspace "svs130130"
[default@svs130130] SET my_columnfamily['13']['UserId']='13';
Value inserted.
Elapsed time: 67 msec(s).
[default@svs130130] SET my_columnfamily['13']['Gender']='F';
Value inserted.
Elapsed time: 2.74 msec(s).
[default@svs130130] SET my_columnfamily['13']['Age']=51;
Value inserted.
Elapsed time: 3.39 msec(s).
[default@svs130130] SET my_columnfamily['13']['Occupation']='1';
Value inserted.
Elapsed time: 3.27 msec(s).
[default@svs130130] SET my_columnfamily['13']['Zipcode']=93334;
cannot parse '93334' as hex bytes
[default@svs130130]
[default@svs130130] SET my_columnfamily['1471']['UserId']='1471';
Value inserted.
Elapsed time: 18 msec(s).
[default@svs130130] SET my_columnfamily['1471']['Gender']='F';
Value inserted.
Elapsed time: 1.57 msec(s).
[default@svs130130] SET my_columnfamily['1471']['Age']=31;
Value inserted.
Elapsed time: 2.24 msec(s).
[default@svs130130] SET my_columnfamily['1471']['Occupation']='17';
Value inserted.
Elapsed time: 1.54 msec(s).
[default@svs130130] SET my_columnfamily['1471']['Zipcode']=11116;
cannot parse '11116' as hex bytes
[default@svs130130]
[default@svs130130] SET my_columnfamily['1496']['UserId']='1496';
Value inserted.
Elapsed time: 3.08 msec(s).
[default@svs130130] SET my_columnfamily['1496']['Gender']='F';
Value inserted.
Elapsed time: 2.24 msec(s).
[default@svs130130] SET my_columnfamily['1496']['Age']=31;
Value inserted.
Elapsed time: 2.26 msec(s).
[default@svs130130] SET my_columnfamily['1496']['Occupation']='17';
Value inserted.
Elapsed time: 2.55 msec(s).
[default@svs130130] SET my_columnfamily['1496']['Zipcode']=94118 WITH ttl=300;
cannot parse '94118' as hex bytes
[default@svs130130] drop my_columnfamily;
Syntax error at position 5: no viable alternative at input 'my_columnfamily'
[default@svs130130] list my_columnfamily;
Using default limit of 100
Using default cell limit of 100
-------------------
RowKey: 1496
=> (name=Age, value=31, timestamp=1427600114613000)
=> (name=Gender, value=F, timestamp=1427600114609000)
=> (name=Occupation, value=17, timestamp=1427600114619000)
=> (name=UserId, value=1496, timestamp=1427600114603000)
-------------------
RowKey: 13
=> (name=Age, value=51, timestamp=1427600114544000)
=> (name=Gender, value=F, timestamp=1427600114537000)
=> (name=Occupation, value=1, timestamp=1427600114549000)
=> (name=UserId, value=13, timestamp=1427600114516000)
-------------------
RowKey: 1471
=> (name=Age, value=31, timestamp=1427600114586000)
=> (name=Gender, value=F, timestamp=1427600114581000)
=> (name=Occupation, value=17, timestamp=1427600114590000)
=> (name=UserId, value=1471, timestamp=1427600114573000)

3 Rows Returned.
Elapsed time: 523 msec(s).
[default@svs130130] drop column family my_columnfamily;
6435a505-fc98-3b7e-8fa4-02d6282f027c
[default@svs130130] list my_columnfamily;
Using default limit of 100
Using default cell limit of 100
unconfigured columnfamily my_columnfamily
InvalidRequestException(why:unconfigured columnfamily my_columnfamily)
        at org.apache.cassandra.thrift.Cassandra$get_range_slices_result$get_range_slices_resultStandardScheme.read(Cassandra.java:17430)
        at org.apache.cassandra.thrift.Cassandra$get_range_slices_result$get_range_slices_resultStandardScheme.read(Cassandra.java:17397)
        at org.apache.cassandra.thrift.Cassandra$get_range_slices_result.read(Cassandra.java:17323)
        at org.apache.thrift.TServiceClient.receiveBase(TServiceClient.java:78)
        at org.apache.cassandra.thrift.Cassandra$Client.recv_get_range_slices(Cassandra.java:802)
        at org.apache.cassandra.thrift.Cassandra$Client.get_range_slices(Cassandra.java:786)
        at org.apache.cassandra.cli.CliClient.executeList(CliClient.java:1520)
        at org.apache.cassandra.cli.CliClient.executeCLIStatement(CliClient.java:285)
        at org.apache.cassandra.cli.CliMain.processStatementInteractive(CliMain.java:201)
        at org.apache.cassandra.cli.CliMain.main(CliMain.java:331)
[default@svs130130] create column family my_columnfamily
...     with comparator = UTF8Type
...     AND key_validation_class = UTF8Type AND column_metadata = [
...     {column_name: UserId, validation_class: UTF8Type}
...     {column_name: Gender, validation_class: UTF8Type}
...     {column_name: Age, validation_class: Int32Type}
...     {column_name: Occupation, validation_class: UTF8Type}
...     {column_name: ZipCode, validation_class: UTF8Type}
...     ];
8131743f-7b0e-30da-8c5a-6bd70adfcfff
[default@svs130130] SET my_columnfamily['13']['UserId']='13';
Value inserted.
Elapsed time: 2.64 msec(s).
[default@svs130130] SET my_columnfamily['13']['Gender']='F';
Value inserted.
Elapsed time: 1.49 msec(s).
[default@svs130130] SET my_columnfamily['13']['Age']=51;
Value inserted.
Elapsed time: 2.4 msec(s).
[default@svs130130] SET my_columnfamily['13']['Occupation']='1';
Value inserted.
Elapsed time: 1.91 msec(s).
[default@svs130130] SET my_columnfamily['13']['Zipcode']='93334';
cannot parse '93334' as hex bytes
[default@svs130130] SET my_columnfamily['13']['ZipCode']='93334';
Value inserted.
Elapsed time: 4.06 msec(s).
[default@svs130130] SET my_columnfamily['1471']['UserId']='1471';
Value inserted.
Elapsed time: 2.14 msec(s).
[default@svs130130] SET my_columnfamily['1471']['Gender']='F';
Value inserted.
Elapsed time: 1.53 msec(s).
[default@svs130130] SET my_columnfamily['1471']['Age']=31;
Value inserted.
Elapsed time: 1.6 msec(s).
[default@svs130130] SET my_columnfamily['1471']['Occupation']='17';
Value inserted.
Elapsed time: 1.56 msec(s).
[default@svs130130] SET my_columnfamily['1471']['ZipCode']='11116';
Value inserted.
Elapsed time: 1.41 msec(s).
[default@svs130130]
[default@svs130130] SET my_columnfamily['1496']['UserId']='1496';
Value inserted.
Elapsed time: 3.71 msec(s).
[default@svs130130] SET my_columnfamily['1496']['Gender']='F';
Value inserted.
Elapsed time: 2.58 msec(s).
[default@svs130130] SET my_columnfamily['1496']['Age']=31;
Value inserted.
Elapsed time: 2.63 msec(s).
[default@svs130130] SET my_columnfamily['1496']['Occupation']='17';
Value inserted.
Elapsed time: 2.57 msec(s).
[default@svs130130] SET my_columnfamily['1496']['ZipCode']='94118' WITH ttl=300;
Value inserted.
Elapsed time: 3.94 msec(s).
[default@svs130130] GET my_columnfamily[utf8('Gender')][utf8('Occupation')] WHERE [utf8('UserId')] = '13';
Syntax error at position 56: missing EOF at 'WHERE'
[default@svs130130] GET my_columnfamily[utf8('Gender')][utf8('Occupation')] WHERE UserId = '13';
Syntax error at position 56: missing EOF at 'WHERE'
[default@svs130130] GET my_columnfamily[utf8('Gender')][utf8('Occupation')]; WHERE UserId = '13';
Syntax error at position 57: missing EOF at 'WHERE'
[default@svs130130] GET my_columnfamily[utf8('Gender')][utf8('Occupation')];
Value was not found
Elapsed time: 25 msec(s).
[default@svs130130] WHERE UserId = '13';
Syntax error at position 0: no viable alternative at input 'WHERE'
[default@svs130130] GET my_columnfamily[utf8('Gender')][utf8('Occupation')] WHERE UserId = '13';
Syntax error at position 56: missing EOF at 'WHERE'
[default@svs130130] GET my_columnfamily ('Gender') ('Occupation') WHERE UserId = '13';
Syntax error at position 0: no viable alternative at input 'GET'
[default@svs130130] GET my_columnfamily[13] ('Gender') ('Occupation');
Syntax error at position 24: missing EOF at '('
[default@svs130130] GET my_columnfamily [13] ('Gender') ('Occupation');
Syntax error at position 25: missing EOF at '('
[default@svs130130] GET my_columnfamily [13] ['Gender'] ['Occupation'];
Notice: defaulting to BytesType subcomparator for 'my_columnfamily'
org.apache.cassandra.serializers.MarshalException: cannot parse 'Occupation' as hex bytes
[default@svs130130] GET my_columnfamily [13] ['Gender'];
=> (name=Gender, value=F, timestamp=1427600282589000)
Elapsed time: 4.08 m                    [13] ['Gender'];
=> (name=Gender, value=F, timestamp=1427600282589000)
Elapsed time: 7.37 msec(s).
[default@svs130130] GET my_columnfamily ([13] ['Gender']) , ([13] ['Occupation']);
Syntax error at position 0: no viable alternative at input 'GET'
[default@svs130130] GET my_columnfamily WHERE UserId = '13';
No indexed columns present in index clause with operator EQ
[default@svs130130] GET my_columnfamily ['13'];
=> (name=Age, value=51, timestamp=1427600282592000)
=> (name=Gender, value=F, timestamp=1427600282589000)
=> (name=Occupation, value=1, timestamp=1427600282595000)
=> (name=UserId, value=13, timestamp=1427600282586000)
=> (name=ZipCode, value=93334, timestamp=1427600351127000)
Returned 5 results.
Elapsed time: 20 msec(s).
[default@svs130130] GET my_columnfamily.Gender WHERE UserId = '13';
Syntax error at position 0: no viable alternative at input 'GET'
[default@svs130130] GET my_columnfamily WHERE UserId = '13';
No indexed columns present in index clause with operator EQ
[default@svs130130] GET my_columnfamily ['13'] ['Gender'];
=> (name=Gender, value=F, timestamp=1427600282589000)
Elapsed time: 5.21 msec(s).
[default@svs130130] GET my_columnfamily ['13'] ['Gender','Occupation'];
Syntax error at position 36: mismatched input ',' expecting ']'
[default@svs130130] GET my_columnfamily ['13'] ['Gender']['Occupation'];
Notice: defaulting to BytesType subcomparator for 'my_columnfamily'
org.apache.cassandra.serializers.MarshalException: cannot parse 'Occupation' as hex bytes
[default@svs130130] GET my_columnfamily ['13'];
=> (name=Age, value=51, timestamp=1427600282592000)
=> (name=Gender, value=F, timestamp=1427600282589000)
=> (name=Occupation, value=1, timestamp=1427600282595000)
=> (name=UserId, value=13, timestamp=1427600282586000)
=> (name=ZipCode, value=93334, timestamp=1427600351127000)
Returned 5 results.
Elapsed time: 4.11 msec(s).
[default@svs130130] GET my_columnfamily ['13'] ['Gender'];
=> (name=Gender, value=F, timestamp=1427600282589000)
Elapsed time: 3.87 msec(s).
[default@svs130130] GET my_columnfamily ['13'] ['Occupation'];
=> (name=Occupation, value=1, timestamp=1427600282595000)
Elapsed time: 3.27 msec(s).
[default@svs130130] list my_columnfamily;
Using default limit of 100
Using default cell limit of 100
-------------------
RowKey: 1496
=> (name=Age, value=31, timestamp=1427600361813000)
=> (name=Gender, value=F, timestamp=1427600361808000)
=> (name=Occupation, value=17, timestamp=1427600361818000)
=> (name=UserId, value=1496, timestamp=1427600361800000)
-------------------
RowKey: 13
=> (name=Age, value=51, timestamp=1427600282592000)
=> (name=Gender, value=F, timestamp=1427600282589000)
=> (name=Occupation, value=1, timestamp=1427600282595000)
=> (name=UserId, value=13, timestamp=1427600282586000)
=> (name=ZipCode, value=93334, timestamp=1427600351127000)
-------------------
RowKey: 1471
=> (name=Age, value=31, timestamp=1427600361787000)
=> (name=Gender, value=F, timestamp=1427600361776000)
=> (name=Occupation, value=17, timestamp=1427600361792000)
=> (name=UserId, value=1471, timestamp=1427600361762000)
=> (name=ZipCode, value=11116, timestamp=1427600361796000)

3 Rows Returned.
Elapsed time: 425 msec(s).
[default@svs130130] DEL my_columnfamily ['1471']['Gender'];
cell removed.
Elapsed time: 13 msec(s).
[default@svs130130] drop column family my_columnfamily;
6435a505-fc98-3b7e-8fa4-02d6282f027c
[default@svs130130] describe svs130130;

WARNING: CQL3 tables are intentionally omitted from 'describe' output.
See https://issues.apache.org/jira/browse/CASSANDRA-4377 for details.

Keyspace: svs130130:
  Replication Strategy: org.apache.cassandra.locator.SimpleStrategy
  Durable Writes: true
    Options: [replication_factor:1]
  Column Families:
[default@svs130130] quit;
{cs6360:~} clear
{cs6360:~} /usr/local/apache-cassandra-2.0.5/bin/cassandra-cli --host csac0
Connected to: "Khan Cluster" on csac0/9160
Welcome to Cassandra CLI version 2.0.5

The CLI is deprecated and will be removed in Cassandra 3.0.  Consider migrating to cqlsh.
CQL is fully backwards compatible with Thrift data; see http://www.datastax.com/dev/blog/thrift-to-cql3

Type 'help;' or '?' for help.
Type 'quit;' or 'exit;' to quit.

[default@unknown] CREATE KEYSPACE svs130130 with placement_strategy = 'org.apache.cassandra.locator.SimpleStrategy' and strategy_options = {replication_factor:1};
Keyspace names must be case-insensitively unique ("svs130130" conflicts with "svs130130")
[default@unknown] USE svs130130;
Authenticated to keyspace: svs130130
[default@svs130130] create column family my_columnfamily
...     with comparator = UTF8Type
...     AND key_validation_class = UTF8Type AND column_metadata = [
...     {column_name: UserId, validation_class: UTF8Type}
...     {column_name: Gender, validation_class: UTF8Type}
...     {column_name: Age, validation_class: Int32Type}
...     {column_name: Occupation, validation_class: UTF8Type}
...     {column_name: ZipCode, validation_class: UTF8Type}
...     ];
6678ee6c-82e9-3376-810b-c5489ba7d432
[default@svs130130] SET my_columnfamily['13']['UserId']='13';
Value inserted.
Elapsed time: 30 msec(s).
[default@svs130130] SET my_columnfamily['13']['Gender']='F';
Value inserted.
Elapsed time: 2.09 msec(s).
[default@svs130130] SET my_columnfamily['13']['Age']=51;
Value inserted.
Elapsed time: 2.32 msec(s).
[default@svs130130] SET my_columnfamily['13']['Occupation']='1';
Value inserted.
Elapsed time: 1.99 msec(s).
[default@svs130130] SET my_columnfamily['13']['ZipCode']='93334';
Value inserted.
Elapsed time: 1.47 msec(s).
[default@svs130130]
[default@svs130130] SET my_columnfamily['1471']['UserId']='1471';
Value inserted.
Elapsed time: 1.2 msec(s).
[default@svs130130] SET my_columnfamily['1471']['Gender']='F';
Value inserted.
Elapsed time: 1.02 msec(s).
[default@svs130130] SET my_columnfamily['1471']['Age']=31;
Value inserted.
Elapsed time: 0.98 msec(s).
[default@svs130130] SET my_columnfamily['1471']['Occupation']='17';
Value inserted.
Elapsed time: 1.01 msec(s).
[default@svs130130] SET my_columnfamily['1471']['ZipCode']='11116';
Value inserted.
Elapsed time: 0.94 msec(s).
[default@svs130130]
[default@svs130130] SET my_columnfamily['1496']['UserId']='1496';
Value inserted.
Elapsed time: 1.89 msec(s).
[default@svs130130] SET my_columnfamily['1496']['Gender']='F';
Value inserted.
Elapsed time: 1.37 msec(s).
[default@svs130130] SET my_columnfamily['1496']['Age']=31;
Value inserted.
Elapsed time: 1.27 msec(s).
[default@svs130130] SET my_columnfamily['1496']['Occupation']='17';
Value inserted.
Elapsed time: 1.34 msec(s).
[default@svs130130] SET my_columnfamily['1496']['ZipCode']='94118' WITH ttl=300;
Value inserted.
Elapsed time: 3.49 msec(s).
[default@svs130130] GET my_columnfamily ['13'] ['Gender'];
=> (name=Gender, value=F, timestamp=1427601675874000)
Elapsed time: 52 msec(s).
[default@svs130130] GET my_columnfamily ['13'] ['Occupation'];
=> (name=Occupation, value=1, timestamp=1427601675893000)
Elapsed time: 3.91 msec(s).
[default@svs130130] list my_columnfamily;
Using default limit of 100
Using default cell limit of 100
-------------------
RowKey: 1496
=> (name=Age, value=31, timestamp=1427601675937000)
=> (name=Gender, value=F, timestamp=1427601675934000)
=> (name=Occupation, value=17, timestamp=1427601675939000)
=> (name=UserId, value=1496, timestamp=1427601675931000)
=> (name=ZipCode, value=94118, timestamp=1427601676963000, ttl=300)
-------------------
RowKey: 13
=> (name=Age, value=51, timestamp=1427601675878000)
=> (name=Gender, value=F, timestamp=1427601675874000)
=> (name=Occupation, value=1, timestamp=1427601675893000)
=> (name=UserId, value=13, timestamp=1427601675864000)
=> (name=ZipCode, value=93334, timestamp=1427601675897000)
-------------------
RowKey: 1471
=> (name=Age, value=31, timestamp=1427601675906000)
=> (name=Gender, value=F, timestamp=1427601675904000)
=> (name=Occupation, value=17, timestamp=1427601675923000)
=> (name=UserId, value=1471, timestamp=1427601675901000)
=> (name=ZipCode, value=11116, timestamp=1427601675925000)

3 Rows Returned.
Elapsed time: 498 msec(s).
[default@svs130130] DEL my_columnfamily ['1471']['Gender'];
cell removed.
Elapsed time: 14 msec(s).
[default@svs130130] drop column family my_columnfamily;
6435a505-fc98-3b7e-8fa4-02d6282f027c
[default@svs130130] describe svs130130;

WARNING: CQL3 tables are intentionally omitted from 'describe' output.
See https://issues.apache.org/jira/browse/CASSANDRA-4377 for details.

Keyspace: svs130130:
  Replication Strategy: org.apache.cassandra.locator.SimpleStrategy
  Durable Writes: true
    Options: [replication_factor:1]
  Column Families:
[default@svs130130]
