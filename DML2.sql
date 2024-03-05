USE emisora_proyecto;

INSERT INTO oyente (tipo_documento, numero_documento, nombre_completo, correo, telefono, direccion) VALUES
('CC', '1193573611', 'Nikolas Ardila', 'nikoitoarto@gmail.com', '3235742158', 'cra45c No20'),
('CC', '1234567891', 'Daniela Amaya', 'amaya@gmail.com', '1232356781', 'crt 34 No50'),
('CC', '987654321', 'Juan Pérez', 'juan@gmail.com', '321654987', 'Av. Principal No. 123'),
('CC', '456789123', 'María Rodríguez', 'maria@gmail.com', '987654321', 'Calle 4 No. 56'),
('TI', '789123456', 'Carlos Gómez', 'carlos@gmail.com', '654987321', 'Carrera 10 No. 30'),
('CC', '321654987', 'Laura Martínez', 'laura@gmail.com', '789654321', 'Av. Libertadores No. 567'),
('CC', '654321987', 'Pedro Sánchez', 'pedro@gmail.com', '987321654', 'Calle 20 No. 12'),
('TI', '147258369', 'Ana González', 'ana@gmail.com', '456123789', 'Calle 50 No. 78'),
('CC', '369258147', 'Sofía López', 'sofia@gmail.com', '369258147', 'Av. Bolívar No. 90'),
('CC', '258369147', 'Javier Ramírez', 'javier@gmail.com', '258369147', 'Calle 70 No. 45');

INSERT INTO encuesta (oyente_id, cancion1, artista1, cancion2, artista2, cancion3, artista3) VALUES
(1, 'Condor Herido', 'Diomedes Diaz', 'La indiferencia', 'Vicente Fernandez', 'La ex', 'Luis Alfonso'),
(2, 'Me Ilusione', 'Binomio de Oro', 'Luna', 'Feid', 'Hablame de ti', 'Reik'),
(3, 'La Cima del Cielo', 'Ricardo Montaner', 'Yo no me doy por vencido', 'Luis Fonsi', 'Bella', 'Willy Díaz'),
(4, 'Ciego de Amor', 'Los Fabulosos Cadillacs', 'Te Compro', 'Duina del Mar', 'Te regalo', 'Carlos Baute'),
(5, 'Hey DJ', 'CNCO', 'Shaky Shaky', 'Daddy Yankee', 'Me Enamoré', 'Shakira'),
(6, 'Mi Gente', 'J Balvin', 'Dákiti', 'Bad Bunny', 'Baila Baila Baila', 'Ozuna'),
(7, 'Tu Veneno', 'Natalia Oreiro', 'La Gozadera', 'Gente de Zona', 'A Puro Dolor', 'Son By Four'),
(8, 'Hips Don', 'Shakira', 'Loca', 'Shakira', 'Despacito', 'Luis Fonsi'),
(9, 'El Perdón', 'Nicky Jam', 'Con Calma', 'Daddy Yankee', 'Corazón Partido', 'Alejandro Sanz'),
(10, 'Amor Prohibido', 'Selena', 'Despacito', 'Luis Fonsi', 'La Cumparsita', 'Carlos Gardel');

INSERT INTO colorBoleta (nombre_color) VALUES
('Amarillo'),
('Azul'),
('Rojo'),
('Verde'),
('Naranja'),
('Blanco'),
('Negro'),
('Morado'),
('Rosado'),
('Gris'),
('Celeste'),
('Marrón');

INSERT INTO boleta (numero_unico, color_boleta_id, oyente_id) VALUES
(223, 1, 1),
(224, 1, 2),
(225, 2, 3),
(226, 2, 4),
(227, 3, 5),
(228, 3, 6),
(229, 4, 7),
(230, 4, 8),
(231, 5, 9),
(232, 5, 10);


INSERT INTO premio (nombre, descripcion, fecha_entrega) VALUES
('Reloj inteligente', 'Es un reloj que mide el oxígeno en sangre', '2024-01-28'),
('Peluche', 'Es un peluche que habla cuando le dices que hable', '2024-02-28'),
('Kit de maquillaje', 'Incluye diferentes productos de maquillaje', '2024-03-28'),
('Tarjeta de regalo', 'Para gastar en la tienda de su elección', '2024-04-28'),
('Libro de cocina', 'Recetas deliciosas para preparar en casa', '2024-05-28'),
('Set de herramientas', 'Para realizar tareas de bricolaje en casa', '2024-06-28'),
('Suscripción a plataforma de streaming', 'Acceso a películas y series durante un año', '2024-07-28'),
('Bicicleta', 'Para disfrutar de paseos al aire libre', '2024-08-28'),
('Tablet', 'Para facilitar el acceso a la tecnología', '2024-09-28'),
('Entradas para concierto', 'Para disfrutar de un evento musical en vivo', '2024-10-28'),
('Cena para dos personas', 'En un restaurante de lujo', '2024-11-28'),
('Viaje todo incluido', 'A un destino turístico de su elección', '2024-12-28');
