/* CREA LA BASE DE DATOS */
CREATE DATABASE cocineros;
/* USA LA BASE DE DATOS QUE CREAMO */
USE cocineros;
/* CREA UNA TABLA CON UNA ID Y UN NOMBRE*/
CREATE TABLE cocineros(
    -> id INT AUTO_INCREMENT,
    -> nombre VARCHAR(50) NOT NULL,
    -> PRIMARY KEY(id)
    -> );
    /* MUESTRA LAS TABLAS */
    SHOW TABLES;
    /* INSERTA UN CAMPO A LA TABLA */
    INSERT INTO cocineros(nombre)
    -> VALUES("Tito");
    INSERT INTO cocineros(nombre)
    -> VALUES("Sanji");
    INSERT INTO cocineros(nombre)
    -> VALUES("Guts");
/* MUESTRA LOS DATOS DEL CAMPO */
SELECT FROM * cocineros;

/* MUESTRA TODOS LOS DATOS DEL CAMPO DONDE EL ID ES 1*/
 SELECT * FROM cocineros WHERE id = 1;
 /* MUESTRA EL LIMITE DE LOS DATOS DEL CAMPO DONDE EL ID ES 1* EN ESTE CASO MUESTRA 2*/
 SELECT * FROM cocineros WHERE id =1 LIMIT 2;

/* AÑADE UNA COLUMNA A LA TABLA */
 ALTER TABLE cocineros
    -> ADD COLUMN edad INT DEFAULT 21;
     /* MODIFICA LA TABLA, EN ESTE CASO UN CAMPO PASO DE SER INT A VARCHAR */
     ALTER TABLE cocineros MODIFY especialidadMenu VARCHAR(20);
     
     /* ACTUALIZA LA TABLA Y CAMBIA LOS DATOS SELECCIONADOS */
     UPDATE cocineros
    -> SET especialidadMenu = 'Pescado'
    -> WHERE nombre = "Sanji";
    
     UPDATE cocineros
    -> SET edad = 24
    -> WHERE nombre = "Guts";

/* ELIMINA EL REGISTRO QUE SELECCIONAMOS, EN ESTE CASO EL ID 4 */
    DELETE FROM cocineros
    -> WHERE id=4;