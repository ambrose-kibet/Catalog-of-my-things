CREATE TABLE genre(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  genre_name VARCHAR(50)
);

CREATE TABLE music_album(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  genre_id INT,
  publish_date DATE,
  archived BOOLEAN,
  on_spotify BOOLEAN,

  CONSTRAINT fk_genre
      FOREIGN KEY (genre_id)
      REFERENCES genre (id)
);