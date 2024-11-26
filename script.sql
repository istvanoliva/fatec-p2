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

CREATE OR REPLACE PROCEDURE aprovados_estudaram_sozinhos(OUT aprovados INT)
LANGUAGE plpgsql
AS $$
DECLARE
    aprovados INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO aprovados
    FROM students
    WHERE grade <> 0 AND prep_study = 1;
END;
$$;

CREATE OR REPLACE FUNCTION salario_estudante_maior_410()
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    contagem INT;
BEGIN
    SELECT COUNT(*)
    INTO contagem
    FROM students
    WHERE salary = 5 AND prep_exam = 2;

    RETURN contagem;
END;
$$;
