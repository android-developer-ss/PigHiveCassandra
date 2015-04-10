 //********************************************************************************************************************
 //For running PIG files --- executed on cs6360 cluster
 //********************************************************************************************************************
 pig -x mapreduce Q1.pig
 pig -x mapreduce Q2.pig
 pig -x mapreduce Q3.pig
 pig -x mapreduce Q4.pig
 
 
 //********************************************************************************************************************
 // For running hive files --- executed locally
 //********************************************************************************************************************
 hive -f Q5.hive
 hive -f Q6.hive
 hive -f Q7.hive
 hive -f Q8.hive
 hive -f Q9.hive
 
 
 //********************************************************************************************************************
 // For running Cassandra files
 //********************************************************************************************************************
 For Q10
 /usr/local/apache-cassandra-2.0.5/bin/cassandra-cli --host csac0
 Then run each command separately.
 
 For Q11
 /usr/local/apache-cassandra-2.0.5/bin/cqlsh csac0
 Then run each command separately.
 
 
 //********************************************************************************************************************
 // EXTRA INFORMATION
 //********************************************************************************************************************
 // Backup folder svs130130_svs is created. Files are copied from svs130130_svs to svs130130 by foll command:
 hdfs dfs -cp /svs130130_svs/* /svs130130


//To create JAR file for HIVE_UDF
javac -classpath /usr/local/hive-0.9.0/lib/hive-exec-0.9.0.jar:/usr/local/pig-0.10.1/pig-0.10.1.jar -d HIVE_UDF FORMAT_GENRE_HIVE.java
jar -cvf FORMAT_GENRE_HIVE.jar -C HIVE_UDF/ .

javac -classpath /usr/local/hive-0.9.0/lib/hive-exec-0.9.0.jar:/usr/local/pig-0.10.1/pig-0.10.1.jar -d HIVE_UDF FormatGenre_Hive.java
jar -cvf FormatGenre_Hive.jar -C HIVE_UDF/ .


//To create JAR file for PIG_UDF
mkdir PIG_UDF
cd PIG_UDF
javac -cp /usr/local/pig-0.10.1/pig-0.10.1.jar FORMAT_GENRE.java
jar -cf FORMAT_GENRE_PIG.jar .


