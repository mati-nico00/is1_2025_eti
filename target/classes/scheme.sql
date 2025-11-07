-- DROP TABLE IF EXISTS member;
-- DROP TABLE IF EXISTS persona;
-- DROP TABLE IF EXISTS teacher;

-- Elimina la tabla 'users' si ya existe para asegurar un inicio limpio
DROP TABLE IF EXISTS users;

-- Crea la tabla 'users' con los campos originales, adaptados para SQLite
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Clave primaria autoincremental para SQLite
    name TEXT NOT NULL UNIQUE,          -- Nombre de usuario (TEXT es el tipo de cadena recomendado para SQLite), con restricción UNIQUE
    password TEXT NOT NULL           -- Contraseña hasheada (TEXT es el tipo de cadena recomendado para SQLite)
);

DROP TABLE IF EXISTS members;

CREATE TABLE members (
    dni INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    CONSTRAINT check_members_dni CHECK(dni < 1000000000 AND dni >= 0)
);

DROP TABLE IF EXISTS teachers;

CREATE TABLE teachers (
    dni INTEGER PRIMARY KEY FOREIGN KEY (dni) REFERENCES members(dni) ON DELETE CASCADE,
    degree TEXT NOT NULL,            -- Titulo universitario del profesor 
    email TEXT NOT NULL UNIQUE,      -- Correo electrónico del profesor 

    CONSTRAINT check_teachers_email CHECK(email LIKE '%@%.%')  --chequea mail válido
);