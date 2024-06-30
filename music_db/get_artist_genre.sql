
USE sql_intro;

SELECT
  artists.name as artist,
  genres.name as genre,
  COUNT(*) as track_count
FROM tracks
  INNER JOIN artists ON artists.artist_id = tracks.artist_id
  INNER JOIN genres ON genres.genre_id = tracks.genre_id
GROUP BY artist, genre;
