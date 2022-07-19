


DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center:

\c medical_center

CREATE TABLE center 
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    location TEXT
);

CREATE TABLE doctors
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT,
    practice TEXT,
    center_id INTEGER REFERENCES center on DELETE CASCADE


);
CREATE TABLE patient
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT,
  birth_date DATE NOT NULL
);

CREATE TABLE disease
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT
);
 CREATE TABLE patient_doctor 
 (
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patient on DELETE CASCADE,
    doctor_id INTEGER REFERENCES doctors on DELETE CASCADE

 );

 CREATE TABLE patient_disease 
 (
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patient on DELETE CASCADE,
    disease_id INTEGER REFERENCES disease on DELETE CASCADE

 );

INSERT INTO center (name, location)
VALUES
('GRADY', 'Downtown ATL'),
('Eastside','Gwinnett County'),
('Northside','Dunwoody City');

INSERT INTO doctors (first_name, last_name, practice, center_id)
VALUES
('Cat','Meow','Paw doctor', 2),
('Dog','RUff', 'Tail check',1),
('Fish','Fin','Gill Specialist', 3);

INSERT INTO patient(first_name,  last_name, birth_date)
VALUES
  ('Scarlett', 'Johansson', '1984-11-22'),
  ('Samuel L', 'Jackson', '1948-12-21'),
  ('Kristen', 'Wiig', '1973-08-22');

INSERT INTO disease(name, description)
VALUES
('headache','brain in pain'),
('pink eye', 'Pink inflamation around the  eye and excess tear'),
('Covid','Feverish cold like symptom');

 INSERT INTO patient_doctor(patient_id,doctor_id)
 VALUES(1, 1),
  (1, 2),
  (3, 2);
 INSERT INTO patient_disease(patient_id,disease_id)
 VALUES(1, 1),
  (1, 2),
  (2, 3);