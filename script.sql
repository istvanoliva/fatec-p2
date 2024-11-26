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

CREATE OR REPLACE PROCEDURE aprovados_com_pais_phd()
LANGUAGE plpgsql
AS $$
DECLARE
    aprovados INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO aprovados
    FROM students
    WHERE grade <> 0 
      AND mother_edu = 6 
      AND father_edu = 6;

    RAISE NOTICE 'Número de alunos aprovados com pais PhD: %', aprovados;
END;
$$;
