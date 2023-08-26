batman = read.csv("Batman_Movies.txt")
getwd()
avg=mean(batman$Rotten.Tomatoes)
GoodBatmanMovies = batman[which(batman$Rotten.Tomatoes>avg),]
write.csv(x=GoodBatmanMovies, file="/Users/kartikadi/Downloads/goodmovies.txt")
largestim = max(GoodBatmanMovies$IMDb)
largestrotten = max(GoodBatmanMovies$Rotten.Tomatoes)
IMDBnorm = GoodBatmanMovies[,3]/largestim
GoodBatmanMovies$RottenNorm = GoodBatmanMovies[,4]/largestrotten
GoodBatmanMovies = cbind(GoodBatmanMovies, IMDBnorm)
GoodBatmanMovies = cbind(GoodBatmanMovies, RottenNorm)
NormDiff = GoodBatmanMovies$IMDBnorm - GoodBatmanMovies$RottenNorm
GoodBatmanMovies = cbind(GoodBatmanMovies, NormDiff)
IMDBlagged = diff(x=GoodBatmanMovies$IMDb, lag=1, differences = 1)
RottenLagged = diff(x=GoodBatmanMovies$Rotten.Tomatoes, lag=1, differences=1)
#On Rotten Tomatoes, the Batman movies seem to get rated much higher as the years went on, while on IMDB this trend is not seen. 
#Over the years, however, both sites show the movie getting better
