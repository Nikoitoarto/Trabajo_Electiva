# Promt de acuerdo a enlistar las entidades de la base de datos.

## Punto 1. Genere la lista de 100 oyentes con datos aleatorios, para registrar en la base de datos de la entidad oyentes en formato SQL para mySQL.

1. Estructrua de la entidad.

````sql
CREATE TABLE oyente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_documento VARCHAR(50) NOT NULL,
    numero_documento VARCHAR(50) NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20) UNIQUE NOT NULL,
    direccion VARCHAR(255) NOT NULL
);
````

2. Proporciono un ejemplo:

````sql
INSERT INTO oyente (tipo_documento,numero_documento,nombre_completo,correo,telefono,direccion)VALUES
('CC', '1193573611', 'Nikolas Ardila','nikoitoarto@gmail.com','3235742158','cra45c No20' ),
('CC', '1234567891', 'Daniela Amaya','amaya@gmail.com','1232356781','crt 34 No50');

````

• Por consiguiente a lo anterioir generar los datos con los 10 registros y almacenarlos.  

3. Memorizar en adelante los anteriores datos cómo Entidad oyente, es decir cada vez que invoque la Entidad persona, pueda recodar estos datos que sean entregados.

## Punto 2. Genere la lista de 100 encuestas para registrar en la base de datos entidad encuestas.

1. Esctructura de la entidad:

````sql
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
````

2. Proporciono un ejemplo:

````sql
INSERT INTO encuesta (oyente_id,cancion1,artista1,cancion2,artista2,cancion3,artista3)VALUES
('1', 'Condor Herido', 'Diomedes Diaz','La indiferencia','Vicente Fernandez','La ex','Luis Alfonso' ),
('1', 'Me Ilusione', 'Binomio de Oro','Luna','Feid','Hablame de ti','Reik');
````
3. ahora generar los datos de la solicitud mencionada

4. Memorizar ahora en adelante los datos del punto 3, como entidad encuesta y cada vez que se invoque esta entidad, pueda recordar estos datos entregados.


## Punto 3. Generar la lista de 12 colores los 12 meses del año que se van a generar para cada boleta con la entidad colorBoleta.

1. Estructura de la entidad.

````sql
CREATE TABLE colorBoleta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_color VARCHAR(50) NOT NULL
);
````

2. Proporciono un ejemplo:

````sql
INSERT INTO boleta (nombre_color,)VALUES
('Amarillo'),
('azul');
````

## Punto 4. Generar la lista de las 100 boletas que se van a entregar a los oyentes con nombre entidad Boleta, el color_boleta_id cambia cada 10 personas.

1. Estructura de la entidad.

````sql

CREATE TABLE boleta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_unico INT UNIQUE NOT NULL,
    color_boleta_id INT NOT NULL,
    oyente_id INT NOT NULL,
    FOREIGN KEY (oyente_id) REFERENCES oyente(id)
);
````

2. Proporciono un ejemplo:

````sql
INSERT INTO boleta (numero_unico,color_boleta_id,oyente_id,)VALUES
('223', '1', '1'),
('224', '1','2');
````

## punto 5. Generar la lista de los 12 premios o sea los 12 meses del año en la entidad premio lo cual es un premio por mes, es decir cada 10 personas cambiamos de premio, la fecha siempre sera a final de cada mes

1. Estructura de la entidad.

````sql
CREATE TABLE premio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    fecha_entrega DATE NOT NULL
);
````

2. Proporciono un ejemplo:

````sql
INSERT INTO premio (nombre,descripcion,fecha_entrega,)VALUES
('Reloj inteligente', 'Es un reloj que mide el oxigeno en sangre', '28-01-2024'),
('Peluche', 'Es un peluche que habla cuando le dices que hable', '28-02-2024');
````


