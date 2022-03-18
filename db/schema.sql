DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS games;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  nickname VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE games(
  id SERIAL PRIMARY KEY,
  first_player_id INT,
  second_player_id INT,
  fp_p1 TEXT[],
  fp_p2 TEXT[],
  fp_p3 TEXT[],
  sp_p1 TEXT[],
  sp_p2 TEXT[],
  sp_p3 TEXT[],
  fp_choices TEXT[],
  sp_choices TEXT[],
  winner INT,
  CONSTRAINT fk_player_first
  FOREIGN KEY (first_player_id) REFERENCES "users" (id),
  CONSTRAINT fk_player_second
  FOREIGN KEY (second_player_id) REFERENCES "users" (id)
);
