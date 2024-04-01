USE emisora_proyecto;

-- Generar 100 oyentes con datos secuenciales

SET @tipo_documento = 'CC';
SET @numero_documento = 11111111;
SET @contador = 0;

INSERT INTO oyente (tipo_documento, numero_documento, nombre_completo, correo, telefono, direccion)
SELECT @tipo_documento,
       @numero_documento := @numero_documento + 1,
       CONCAT('Nombre_', @numero_documento),
       CONCAT('correo', @numero_documento, @correo_suffix),
       CONCAT('321', @numero_documento),
       CONCAT('Dirección_', @numero_documento)
FROM (SELECT @contador := @contador + 1 AS contador
      FROM information_schema.tables
      LIMIT 100) AS t;

SELECT * FROM oyente;
DELETE FROM oyente WHERE id > 0;


SET @contador = 0;

INSERT INTO encuesta (oyente_id, cancion1, artista1, cancion2, artista2, cancion3, artista3)
SELECT 
    (SELECT id FROM (SELECT id FROM oyente ORDER BY RAND() LIMIT 1) AS rand_oyente),
    CONCAT('Cancion1_', @contador := @contador + 1),
    CONCAT('Artista1_', @contador),
    CONCAT('Cancion2_', @contador),
    CONCAT('Artista2_', @contador),
    CONCAT('Cancion3_', @contador),
    CONCAT('Artista3_', @contador)
FROM 
    (SELECT @contador := @contador + 1 AS contador
     FROM information_schema.tables
     LIMIT 100) AS t;



SELECT * FROM encuesta;
DELETE FROM encuesta WHERE id > 0;



-- Generar 12 colores únicos para las boletas
INSERT INTO colorboleta (nombre_color)
VALUES
('Rojo'),
('Azul'),
('Verde'),
('Amarillo'),
('Naranja'),
('Violeta'),
('Negro'),
('Blanco'),
('Gris'),
('Cyan'),
('Magenta'),
('Marrón');


SELECT * FROM colorboleta;
DELETE FROM colorboleta WHERE id > 0;

-- Generar 100 boletas con datos secuenciales
SET @numero_unico := 1000;
SET @color_boleta_id := 1;

INSERT INTO boleta (numero_unico, color_boleta_id, oyente_id)
SELECT @numero_unico := @numero_unico + 1, @color_boleta_id := IF(@color_boleta_id < 12, @color_boleta_id + 1, 1), id
FROM oyente
LIMIT 100;



SELECT * FROM boleta;
DELETE FROM boleta WHERE id > 0;



-- Generar los 12 premios del año
SET @fecha_entrega := '2024-01-31';
SET @nombre_premio_suffix := '_Premio';

INSERT INTO premio (nombre, descripcion, fecha_entrega)
SELECT CONCAT('Premio', @nombre_premio_suffix), CONCAT('Descripción del premio', @nombre_premio_suffix), @fecha_entrega := DATE_ADD(@fecha_entrega, INTERVAL 1 MONTH)
FROM information_schema.tables
LIMIT 12;


SELECT * FROM premio;
DELETE FROM premio WHERE id > 0;
