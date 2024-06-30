
USE sql_intro;

SELECT
  tracks.track_id as track_number,
  tracks.name as title,
  albums.name as album,
  artists.name as artist,
  genres.name as genre
FROM tracks
  INNER JOIN albums ON albums.album_id = tracks.album_id
  INNER JOIN artists ON artists.artist_id = tracks.artist_id
  INNER JOIN genres ON genres.genre_id = tracks.genre_id;
