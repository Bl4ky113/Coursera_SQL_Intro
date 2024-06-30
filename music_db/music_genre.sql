
USE sql_intro;

CREATE TABLE IF NOT EXISTS genres (
  genre_id INT NOT NULL AUTO_INCREMENT,
  name varchar(64),

  PRIMARY KEY (genre_id)
);

CREATE OR REPLACE TABLE tracks (
  track_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(64) NOT NULL,
  album_id INT NOT NULL,
  artist_id INT NOT NULL,
  genre_id INT,

  PRIMARY KEY (track_id),
  FOREIGN KEY (artist_id)
    REFERENCES artists(artist_id)
    ON DELETE CASCADE,
  FOREIGN KEY (album_id)
    REFERENCES albums(album_id)
    ON DELETE CASCADE,
  FOREIGN KEY (genre_id)
    REFERENCES genres(genre_id)
    ON DELETE SET NULL
);

INSERT INTO genres (name) VALUES 
  ("Indie Rock"),
  ("Indie Rap"),
  ("Indie Pop");

INSERT INTO tracks (name, album_id, artist_id, genre_id) VALUES 
  ("Twist the knife", (SELECT album_id FROM albums WHERE name LIKE "%The Heart Goes to Heaven, The Head Goes To Hell%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Pop%")),
  ("The U & I in Suicide", (SELECT album_id FROM albums WHERE name LIKE "%The Heart Goes to Heaven, The Head Goes To Hell%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Pop%")),
  ("Chalie's Inferno", (SELECT album_id FROM albums WHERE name LIKE "%The Heart Goes to Heaven, The Head Goes To Hell%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Pop%")),
  ("Buyer's Remorse", (SELECT album_id FROM albums WHERE name LIKE "%The Heart Goes to Heaven, The Head Goes To Hell%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Pop%")),
  ("Rob the Prez 'o Dent", (SELECT album_id FROM albums WHERE name LIKE "%A City Dressed In Dynamite%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rock%")),
  ("Pills for Everything", (SELECT album_id FROM albums WHERE name LIKE "%A City Dressed In Dynamite%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rock%")),
  ("Viva Discordia", (SELECT album_id FROM albums WHERE name LIKE "%A City Dressed In Dynamite%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rock%")),
  ("Atom Shell", (SELECT album_id FROM albums WHERE name LIKE "%A City Dressed In Dynamite%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rock%")),
  ("Previous Behavior", (SELECT album_id FROM albums WHERE name LIKE "%Jesus Chrysler%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rap%")),
  ("Brother", (SELECT album_id FROM albums WHERE name LIKE "%Jesus Chrysler%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rap%")),
  ("Black Elk", (SELECT album_id FROM albums WHERE name LIKE "%Jesus Chrysler%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rap%")),
  ("Chrome", (SELECT album_id FROM albums WHERE name LIKE "%Jesus Chrysler%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rap%")),
  ("Night Nurse", (SELECT album_id FROM albums WHERE name LIKE "%Jesus Chrysler%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rap%")),
  ("Albert", (SELECT album_id FROM albums WHERE name LIKE "%Tales of the Haunted Microphone 2%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rap%")),
  ("The Lights", (SELECT album_id FROM albums WHERE name LIKE "%Tales of the Haunted Microphone 2%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rap%")),
  ("Hungry City", (SELECT album_id FROM albums WHERE name LIKE "%Tales of the Haunted Microphone 2%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rap%")),
  ("Emotions Can Be Hard to Process", (SELECT album_id FROM albums WHERE name LIKE "%Tales of the Haunted Microphone 2%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Rap%")),
  ("Leaves in the Stream", (SELECT album_id FROM albums WHERE name LIKE "%Heart Shaped Wound%"), (SELECT artist_id FROM artists WHERE name LIKE "%Aurelio Voltaire%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Pop%")),
  ("The Necropolis of Former Lovers", (SELECT album_id FROM albums WHERE name LIKE "%Heart Shaped Wound%"), (SELECT artist_id FROM artists WHERE name LIKE "%Aurelio Voltaire%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Pop%")),
  ("A Romantic Guy", (SELECT album_id FROM albums WHERE name LIKE "%Heart Shaped Wound%"), (SELECT artist_id FROM artists WHERE name LIKE "%Aurelio Voltaire%"), (SELECT genre_id FROM genres WHERE name LIKE "%Indie Pop%"));
