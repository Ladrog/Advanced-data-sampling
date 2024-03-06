SELECT genres.gener_name, COUNT(DISTINCT artist.id) AS num_artists FROM genres
  LEFT JOIN artist_genres ON genres.id = artist_genres.genre_id
  LEFT JOIN artist ON artist_genres.artist_id = artist.id
 GROUP BY genres.gener_name;

SELECT COUNT(tracks.id) AS num_tracks FROM tracks
  JOIN albums ON tracks.album_id = albums.id
 WHERE albums.release_year BETWEEN '2023-01-01' AND '2024-12-31';

SELECT albums.album_name, AVG(tracks.duration) AS average_duration FROM albums
  JOIN tracks ON albums.id = tracks.album_id
 GROUP BY albums.album_name;

SELECT DISTINCT artist.artist_name FROM artist
LEFT JOIN artist_albums ON artist.id = artist_albums.artist_id
LEFT JOIN albums ON artist_albums.album_id = albums.id
WHERE artist.id NOT IN (
  SELECT artist.id FROM artist
   INNER JOIN artist_albums ON artist.id = artist_albums.artist_id
   INNER JOIN albums ON artist_albums.album_id = albums.id
   WHERE EXTRACT(YEAR FROM albums.release_year) = 2020);

SELECT comp_name FROM compilations
  JOIN track_compilations ON compilations.id = track_compilations.comilation_id
  JOIN tracks ON track_compilations.track_id = tracks.id
  JOIN albums ON tracks.album_id = albums.id
  JOIN artist_albums ON albums.id = artist_albums.album_id
  JOIN artist ON artist_albums.artist_id = artist.id
 WHERE artist.artist_name = 'aria';