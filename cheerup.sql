CREATE DATABASE vibes;

\c vibes

CREATE TABLE users(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR (200),
  email VARCHAR(100) NOT NULL,
  password_digest VARCHAR(400) NOT NULL
);

CREATE TABLE cheerups(
  id SERIAL4 PRIMARY KEY,
  content VARCHAR (150),
  image VARCHAR (500),
  rating INTEGER,
  user_id INTEGER
);

CREATE TABLE tags(
  id SERIAL4 PRIMARY KEY,
  theme VARCHAR (50)
);

CREATE TABLE cheerupstaggings(
  cheerup_id INTEGER,
  tag_id INTEGER
);

CREATE TABLE likes(
  id  SERIAL4 PRIMARY KEY,
  user_id INTEGER,
  cheerup_id INTEGER
);
