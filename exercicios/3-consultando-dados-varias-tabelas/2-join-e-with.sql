-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
/*
SELECT
tracks.TrackId,
tracks.Name AS Musica,
albums.Title AS Album,
artists.Name AS Artista
FROM
tracks
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON albums.ArtistId = artists.ArtistId;
*/

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
-- qtd musicas do Caetano Veloso
WITH musica AS 
(
SELECT
tracks.TrackId,
tracks.Name AS Musica,
albums.Title AS Album,
artists.Name AS Artista
FROM
tracks
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON albums.ArtistId = artists.ArtistId
)

SELECT artista, COUNT(Musica) AS QtdMusicas
FROM musica
WHERE Artista = 'Caetano Veloso';

/*
SELECT artista, COUNT(Musica) AS QtdMusicas
FROM musica
GROUP BY artista
*/


