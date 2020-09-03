--PARTE 1

-- 1. Crear Base de datos posts 
CREATE DATABASE posts;

-- 2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido, descripción.
CREATE TABLE post(id SERIAL PRIMARY KEY, nombre_de_usuario VARCHAR(70), fecha_de_creacion DATE, contenido VARCHAR(100), descripcion VARCHAR(300));

-- 3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Pamela', '2020-03-16', 'Lorem ipsum dolor sit amet, consectetur adipiscing.', 'Ridiculus est placerat pretium habitasse purus lobortis, nec blandit proin integer.');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Pamela', '2020-05-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Hac rutrum ultrices senectus facilisis euismod, ante bibendum auctor.');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Carlos', '2020-04-11', 'Lorem ipsum dolor sit amet consectetur, adipiscing elit elementum.', 'Potenti proin malesuada arcu ultricies, convallis a.');

-- 4. Modificar la tabla post, agregando la columna título
ALTER TABLE post ADD COLUMN titulo VARCHAR(70);

-- 5. Agregar título a las publicaciones ya ingresadas 
UPDATE post SET titulo='Lorem ipsum' WHERE id=1;
UPDATE post SET titulo='Lorem ipsum elite' WHERE id=2;
UPDATE post SET titulo='Lorem ipsum elite elementum' WHERE id=3;

-- 6. Insertar 2 post para el usuario "Pedro"
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Pedro', '2020-03-24', 'Turpis vitae fusce magna integer, justo porta id.', 'Lorem ipsum dolor sit, amet consectetur adipiscing, elit dictumst.', 'Lorem ipsum dolor sit');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Pedro', '2020-05-10', 'Nec ac purus pulvinar vitae, fusce morbi senectus.', 'Lorem ipsum dolor sit amet consectetur, adipiscing elit ante.', 'Lorem ipsum Nec');

-- 7. Eliminar el post de Carlos
DELETE FROM post WHERE id=3;

-- 8. Ingresar un nuevo post para el usuario "Carlos" 
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Carlos', '2020-04-11', 'Lorem ipsum dolor sit amet consectetur, adipiscing elit elementum.', 'Potenti proin malesuada arcu ultricies, convallis a.', 'Lorem ipsum elite elementum');

-- PARTE 2

-- 9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios(id SERIAL, fecha_y_hora_de_creacion TIMESTAMP, contenido VARCHAR(200), post_id INT, PRIMARY KEY(id), FOREIGN KEY(post_id) REFERENCES post(id));

-- 10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" 
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-03-16 17:01:18', 'Lorem ipsum dolor sit amet consectetur adipiscing elit, at erat ornare tempor facilisis fusce in turpis, nam diam ligula per porta pretium.', 1);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-03-16 18:22:40', 'Potenti vehicula nisl congue nibh nullam tellus habitant per, luctus pellentesque ultrices sollicitudin curabitur nulla mi torquent feugiat, nisi habitasse placerat sapien mollis est inceptos.', 1);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-04-11 10:05:12', 'Est at lacus fermentum facilisis habitasse nostra litora dictum, pharetra morbi porttitor in urna sed proin ullamcorper, ornare viverra inceptos scelerisque condimentum eu odio.', 6);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-04-11 10:22:34', 'Aptent lobortis netus tempor aliquam lectus bibendum ac ligula nam, montes arcu risus vitae auctor per facilisis eros nisl aenean', 6);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-04-11 13:19:21', 'Donec maecenas senectus class orci purus cubilia sem sed odio', 6);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-04-11 15:42:11', 'Cubilia elementum laoreet fringilla mauris dui hendrerit inceptos, cursus facilisi montes nunc tempor nam, sollicitudin est semper lacinia ut quisque.', 6);

-- 11. Crear un nuevo post para "Margarita" 
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Margarita', '2020-06-22', 'Eu turpis sodales curabitur suscipit aliquet, feugiat parturient magnis.', 'Donec facilisi vestibulum mus vitae dis, euismod nam dui.', 'Lorem ipsum soul');

-- 12. Ingresar 5 comentarios para el post de Margarita
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-06-23 12:42:11', 'A sodales himenaeos integer dictum tempus ridiculus quis commodo, quam praesent ligula donec hendrerit ullamcorper vulputate maecenas rutrum', 7);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-06-23 13:04:02', 'Habitasse euismod platea mus porta hendrerit', 7);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-06-23 13:25:20', 'Vestibulum ornare eu nibh eleifend a praesent tellus luctus tempor quisque condimentum nulla vivamus ante', 7);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-06-23 13:55:12', 'Pretium in iaculis erat tellus montes dapibus mauris nullam placerat', 7);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-06-23 15:32:56', 'Lobortis ut rutrum id porta tristique netus rhoncus consequat', 7);