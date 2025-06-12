-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
-- artista Nação album <> Da Lama Ao Caos
SELECT *
FROM
tracks
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON artists.ArtistId = albums.ArtistId
WHERE artists.Name LIKE '%Nação%' AND albums.Title != 'Da Lama Ao Caos';