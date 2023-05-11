-- author
CREATE TABLE author (
  id SERIAL PRIMARY KEY,
  fist_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);

-- game
CREATE TABLE game(
  id SERIAL PRIMARY KEY,,
  multiplayer BOOLEAN NOT NULL,
  last_played DATE NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  author_id INT REFERENCES author(id),
  genre_id INT REFERENCES genre(id),
  source_id INT REFERENCES source(id),
  label_id INT REFERENCES label(id)
);