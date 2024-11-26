CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    student_id VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    mother_edu INT NOT NULL,
    father_edu INT NOT NULL,
    prep_study INT NOT NULL,
    salary INT NOT NULL,
    prep_exam INT NOT NULL
);
