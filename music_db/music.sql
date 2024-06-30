
USE sql_intro;

CREATE TABLE IF NOT EXISTS artists (
  artist_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(64),

  PRIMARY KEY (artist_id)
);

CREATE TABLE IF NOT EXISTS albums (
  album_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(64),
  artist_id INT NOT NULL,

  PRIMARY KEY (album_id),
  FOREIGN KEY (artist_id)
    REFERENCES artists(artist_id)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS tracks (
  track_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(64) NOT NULL,
  album_id INT NOT NULL,
  artist_id INT NOT NULL,

  PRIMARY KEY (track_id),
  FOREIGN KEY (artist_id)
    REFERENCES artists(artist_id)
    ON DELETE CASCADE,
  FOREIGN KEY (album_id)
    REFERENCES albums(album_id)
    ON DELETE CASCADE
);

INSERT INTO artists (name) VALUES 
  ("That Handsome Devil"),
  ("GodForbid"),
  ("Aurelio Voltaire");

INSERT INTO albums (name, artist_id) VALUES 
  ("The Heart Goes To Heaven, The Head Goes To HELL", (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%")),
  ("A City Dressed In Dynamite", (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%")),
  ("Jesus Chrysler", (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("Tales of the Haunted Microphone 2", (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("Heart Shaped Wound", (SELECT artist_id FROM artists WHERE name LIKE "%Aurelio Voltaire%"));

INSERT INTO tracks (name, album_id, artist_id) VALUES 
  ("Twist the knife", (SELECT album_id FROM albums WHERE name LIKE "%The Heart Goes to Heaven, The Head Goes To Hell%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%")),
  ("The U & I in Suicide", (SELECT album_id FROM albums WHERE name LIKE "%The Heart Goes to Heaven, The Head Goes To Hell%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%")),
  ("Chalie's Inferno", (SELECT album_id FROM albums WHERE name LIKE "%The Heart Goes to Heaven, The Head Goes To Hell%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%")),
  ("Buyer's Remorse", (SELECT album_id FROM albums WHERE name LIKE "%The Heart Goes to Heaven, The Head Goes To Hell%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%")),
  ("Rob the Prez 'o Dent", (SELECT album_id FROM albums WHERE name LIKE "%A City Dressed In Dynamite%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%")),
  ("Pills for Everything", (SELECT album_id FROM albums WHERE name LIKE "%A City Dressed In Dynamite%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%")),
  ("Viva Discordia", (SELECT album_id FROM albums WHERE name LIKE "%A City Dressed In Dynamite%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%")),
  ("Atom Shell", (SELECT album_id FROM albums WHERE name LIKE "%A City Dressed In Dynamite%"), (SELECT artist_id FROM artists WHERE name LIKE "%That Handsome Devil%")),
  ("Previous Behavior", (SELECT album_id FROM albums WHERE name LIKE "%Jesus Chrysler%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("Brother", (SELECT album_id FROM albums WHERE name LIKE "%Jesus Chrysler%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("Black Elk", (SELECT album_id FROM albums WHERE name LIKE "%Jesus Chrysler%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("Chrome", (SELECT album_id FROM albums WHERE name LIKE "%Jesus Chrysler%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("Night Nurse", (SELECT album_id FROM albums WHERE name LIKE "%Jesus Chrysler%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("Albert", (SELECT album_id FROM albums WHERE name LIKE "%Tales of the Haunted Microphone 2%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("The Lights", (SELECT album_id FROM albums WHERE name LIKE "%Tales of the Haunted Microphone 2%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("Hungry City", (SELECT album_id FROM albums WHERE name LIKE "%Tales of the Haunted Microphone 2%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("Emotions Can Be Hard to Process", (SELECT album_id FROM albums WHERE name LIKE "%Tales of the Haunted Microphone 2%"), (SELECT artist_id FROM artists WHERE name LIKE "%GodForbid%")),
  ("Leaves in the Stream", (SELECT album_id FROM albums WHERE name LIKE "%Heart Shaped Wound%"), (SELECT artist_id FROM artists WHERE name LIKE "%Aurelio Voltaire%")),
  ("The Necropolis of Former Lovers", (SELECT album_id FROM albums WHERE name LIKE "%Heart Shaped Wound%"), (SELECT artist_id FROM artists WHERE name LIKE "%Aurelio Voltaire%")),
  ("A Romantic Guy", (SELECT album_id FROM albums WHERE name LIKE "%Heart Shaped Wound%"), (SELECT artist_id FROM artists WHERE name LIKE "%Aurelio Voltaire%"));
  
  
