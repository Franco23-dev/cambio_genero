use cambiogenero;

/* Total cambios de genero por: provincia */
SELECT provincia_nombre, SUM(cantidad) as total
FROM cambio_genero
GROUP BY provincia_nombre
ORDER BY total desc;

/* Total cambios de genero por: edad actual y grande grupos */
SELECT edad_actual_grandes_grupos, SUM(cantidad) as total
FROM cambio_genero
GROUP BY edad_actual_grandes_grupos
ORDER BY total desc;

/* Total cambios de genero por: genero */
SELECT genero, SUM(cantidad) as total
FROM cambio_genero
GROUP BY genero
ORDER BY total desc;

/* Total cambio de genero por: provincia y edad actual y grandes grupos*/
SELECT provincia_nombre, edad_actual_grandes_grupos, SUM(cantidad) AS total
FROM cambio_genero
GROUP BY provincia_nombre, edad_actual_grandes_grupos
ORDER BY total desc;

/* Total cambio de genero por: provincia y genero */
SELECT provincia_nombre, genero, SUM(cantidad) AS total
FROM cambio_genero
GROUP BY provincia_nombre, genero
ORDER BY total desc;

/*Porcentaje de cambios de genero por cada genero */ 
SELECT genero, SUM(cantidad) * 100 / (SELECT SUM(cantidad) FROM cambio_genero) AS porcentaje
FROM cambio_genero
GROUP BY genero
ORDER BY porcentaje desc;
