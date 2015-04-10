REGISTER FORMAT_GENRE_PIG.jar;

movies = LOAD '/svs130130/movies.dat' using PigStorage(':') as (MOVIEID: chararray, TITLE: chararray, GENRE: chararray);
B = FOREACH movies GENERATE MOVIEID, TITLE,FORMAT_GENRE(GENRE);
C = LIMIT B 10;
DUMP B;
store B into ' /home/004/s/sv/svs130130/output_Q4';

