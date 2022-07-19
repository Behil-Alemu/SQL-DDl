DROP DATABASE IF EXISTS craigslist_db;
CREATE DATABASE craigslist_db;
\c craigslist_db;

CREATE TABLE users 
(
  id SERIAL PRIMARY KEY,
  username VARCHAR(15) UNIQUE NOT NULL,
  password VARCHAR(20) NOT NULL
);

CREATE TABLE regions
(
    id SERIAL PRIMARY KEY,
    region TEXT NOT NULL
);

CREATE TABLE categorie
(
    id SERIAL PRIMARY KEY,
    name  VARCHAR(15) NOT NULL,
    description TEXT
);

CREATE TABLE posts(
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users ON DELETE CASCADE,
  title TEXT NOT NULL,
  location TEXT NOT NULL,
  region_id INTEGER REFERENCES regions ON DELETE CASCADE,
  categorie_id INTEGER REFERENCES categorie on DELETE CASCADE,
  is_new BOOLEAN DEFAULT false

);

INSERT INTO users  (username, password)
VALUES
('Sam Smith',  'whatsup89'),
('Cardi B', 'abababab18');

INSERT INTO regions  (region)
VALUES
('Atlanta'),
('Seattle');

INSERT INTO categorie (name, description)
VALUES
('shoes', 'put on foot'),
('cloth','fabric'),
('electronic','keep it charging');

INSERT INTO posts(user_id, title,location, region_id, categorie_id,is_new)
VALUES
(1,'iPhone','389 main st',2,1,FALSE),
(2,'Dress','70 Rose blvd',2,1,true);