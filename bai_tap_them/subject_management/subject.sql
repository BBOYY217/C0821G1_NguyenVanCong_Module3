DROP DATABASE IF EXISTS subject_management;
CREATE DATABASE subject_management;
USE subject_management;

CREATE TABLE subjects(
id INT PRIMARY KEY AUTO_INCREMENT,
namer VARCHAR(45),
versionn VARCHAR(45),
modes VARCHAR(45),
times INT NOT NULL
);

INSERT INTO subjects(namer,versionn,modes,times)
VALUES
("Math","1.0","medium",2),
("chemistry","3.0","hard",1),
("education","4.0","medium",2);

SELECT id,namer,versionn,modes,times
FROM subjects;

-- DELETE FROM subjects
-- WHERE id = 1;
