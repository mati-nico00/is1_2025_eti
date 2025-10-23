-- Elimina la tabla 'users' si ya existe para asegurar un inicio limpio
DROP TABLE IF EXISTS users;

-- Crea la tabla 'users' con los campos originales, adaptados para SQLite
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Clave primaria autoincremental para SQLite
    name TEXT NOT NULL UNIQUE,          -- Nombre de usuario (TEXT es el tipo de cadena recomendado para SQLite), con restricción UNIQUE
    password TEXT NOT NULL           -- Contraseña hasheada (TEXT es el tipo de cadena recomendado para SQLite)
);

-- Elimina la tabla 'teachers' si ya existe
DROP TABLE IF EXISTS teachers;

-- Crea la tabla 'teachers' con los campos originales, adaptados a SQLite
CREATE TABLE teachers(
    id INTEGER,
    apellido TEXT,
    correo TEXT NOT NULL UNIQUE,
    dni BIGINT UNIQUE,

    CONSTRAINT fk_teachers_users PRIMARY KEY (id) REFERENCES users (id)
);