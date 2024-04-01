DROP DATABASE IF EXISTS emisora_proyecto;
CREATE DATABASE emisora_proyecto;
USE emisora_proyecto;

CREATE TABLE oyente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_documento VARCHAR(50) NOT NULL,
    numero_documento VARCHAR(50) NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20) UNIQUE NOT NULL,
    direccion VARCHAR(255) NOT NULL
);

CREATE TABLE encuesta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    oyente_id INT NOT NULL,
    cancion1 VARCHAR(255) NOT NULL,
    artista1 VARCHAR(100) NOT NULL,
    cancion2 VARCHAR(255) NOT NULL,
    artista2 VARCHAR(100) NOT NULL,
    cancion3 VARCHAR(255) NOT NULL,
    artista3 VARCHAR(100) NOT NULL,
    FOREIGN KEY (oyente_id) REFERENCES oyente(id)
);
CREATE TABLE encuesta_oyente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    encuesta_id INT NOT NULL,
    oyente_id INT NOT NULL,
    FOREIGN KEY (encuesta_id) REFERENCES encuesta(id),
    FOREIGN KEY (oyente_id) REFERENCES oyente(id)
);

CREATE TABLE boleta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_unico INT UNIQUE NOT NULL,
    color_boleta_id INT NOT NULL,
    oyente_id INT NOT NULL,
    FOREIGN KEY (oyente_id) REFERENCES oyente(id)
);

CREATE TABLE boleta_encuesta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    boleta_id INT NOT NULL,
    encuesta_id INT NOT NULL,
    FOREIGN KEY (boleta_id) REFERENCES boleta(id),
    FOREIGN KEY (encuesta_id) REFERENCES encuesta(id)
);
CREATE TABLE premio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    fecha_entrega DATE NOT NULL
);
CREATE TABLE premio_oyente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    premio_id INT NOT NULL,
    oyente_id INT NOT NULL,
    FOREIGN KEY (premio_id) REFERENCES premio(id),
    FOREIGN KEY (oyente_id) REFERENCES oyente(id)
);

CREATE TABLE premio_boleta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    premio_id INT NOT NULL,
    boleta_id INT NOT NULL,
    FOREIGN KEY (premio_id) REFERENCES premio(id),
    FOREIGN KEY (boleta_id) REFERENCES boleta(id)
);
CREATE TABLE colorBoleta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_color VARCHAR(50) NOT NULL
);

CREATE TABLE colorBoleta_boleta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    color_boleta_id INT NOT NULL,
    boleta_id INT NOT NULL,
    FOREIGN KEY (color_boleta_id) REFERENCES colorBoleta(id),
    FOREIGN KEY (boleta_id) REFERENCES boleta(id)
);