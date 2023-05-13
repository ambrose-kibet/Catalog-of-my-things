CREATE TABLE book(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  publisher VARCHAR(255),
  published_date DATE,
  author_id INT,
  genre_id INT,
  label_id INT,
  cover_state BOOLEAN,
  archived BOOLEAN

  CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES author (id) ON DELETE CASCADE
  CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genre (id) ON DELETE CASCADE
  CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES label (id) ON DELETE CASCADE
)

CREATE TABLE author(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
)