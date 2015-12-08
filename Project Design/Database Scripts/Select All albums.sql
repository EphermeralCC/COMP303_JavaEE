SELECT albums.AlbumId, 
	genres.Name AS 'GenreName', 
    artists.Name AS 'ArtistName', 
    albums.Title, 
    albums.Price, 
    albums.AlbumArtUrl 
FROM albums
INNER JOIN genres ON albums.GenreId = genres.GenreId 
INNER JOIN artists ON albums.ArtistId = artists.ArtistId
ORDER BY albums.AlbumId;