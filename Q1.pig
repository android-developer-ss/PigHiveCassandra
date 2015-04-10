movies= load'/svs130130/movies.dat' using PigStorage(':') as ( MovieID: chararray, Title:chararray, Genres:chararray);
ratings= load '/svs130130/ratings.dat' using PigStorage(':') as (UserID:chararray, MovieID:chararray,Rating:double,Timestamp:int);
users = load '/svs130130/users.dat' using PigStorage(':') as (UserID:chararray, Gender:chararray, Age:int, Occupation:chararray, Zipcode:chararray);

storeGenre = join movies by(MovieID), ratings by(MovieID);
filterGenre = filter storeGenre by (Genres matches '.*Comedy.*' and Genres matches '.*Drama.*');

groupByGenre = group filterGenre by $0;
avgRating = foreach groupByGenre generate flatten(group), AVG(filterGenre.$5);
ascOrder = order avgRating by $1 ASC;

getMinimum = limit ascOrder 1;
min= foreach getMinimum generate $1;

tempMovie= join avgRating by ($1), min by ($0);
tempRatings = join ratings by(MovieID), tempMovie by($0);
tempRatings = join tempRatings by($0), users by($0);

filterRating = filter tempRatings by (Gender matches '.*M.*' and (Age > 20 AND Age < 40) and Zipcode matches '1.*');
final_userID = foreach filterRating generate $0;
finalOutput = distinct final_userID;

dump finalOutput;
