CREATE TABLE cohorts(
   id SERIAL PRIMARY KEY NOT NULL,
   name VARCHAR(255) NOT NULL,
   start_date DATE,
   end_date DATE
);

CREATE TABLE students(
   id SERIAL PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   age SMALLINT,
   email VARCHAR(255),
   phone VARCHAR(32),
   github VARCHAR(255),
   start_date VARCHAR(255),
   end_date VARCHAR(255),
   cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE 
);
