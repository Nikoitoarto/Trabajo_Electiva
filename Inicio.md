# Trabajo de Electiva ll

## Leer detalladamente la situación siguiente, y con base en lo leido, necesito que me genere el script SQL para mySql de forma detallada y que funcione correctamente. 

## Modulo de Sorteo_emisora

• Un oyente esta asociado a una encuesta  
• una encuesta esta asociado a muchos oyentes  
• una encuesta esta asociada a una boleta  
• Un oyente esta asociado a una boleta  
• Una boleta esta asociado a un oyentes  
• un oyente esta asociado a un premio  
• Un premio esta asociado a una boleta  
• colorBoleta esta asociado con boleta

### Reconocimiento de entidades:

Tanto atributos, como el nombre de las entidades, dejar en unders_core y singular.

## Entidades:

oyente: encuesta: encuesta_oyente: boleta: boleta_oyente: boleta_encuesta: premio: premio_oyente: premio_boleta: colorBoleta: colorBoleta_boleta

## Requerimientos funcionales
• Mantener un registro exhaustivo de todos los premios entregados.  
• Registrar los respectivos ganadores de cada premio.  
• Registrar las boletas entregadas a los oyentes.  
• Mantener un registro histórico completo de todos los premios entregados y sus ganadores. 
• Se debe hacer un sorteo cada mes.

## Condiciones:
• Un oyente debe de tener: tipo de documento, número de documento, Nombre completo, correo, teléfono, y dirección este dato debe de ser único, al igual que el correo electronico y el  celular.  
• Una boleta debe pertenecer a un único oyente.  
• Una encuesta debe de tener un oyente, tres nombres de canciones con sus respecitvos artistas.  
• Una encuesta debe pertenecer a una única boleta.  
• Una boleta se le debe asignar un color ya predeterminado por la emisora.
• Una Boleta debe de tener un número único aleatorio y el color ya asignado.  
• Un premio debe de tener una única boleta.  


## Tener en cuenta:

• Las llaves primarias de cada entidad (PK), se deben llamar id.  
• Las llaver foraneas de cada entidad (FK), cuando aplique, se debe llamar entidad_foranea_id, ejemplo: en oyente que tiene la foranea de de boleta, sería oyente_id  



