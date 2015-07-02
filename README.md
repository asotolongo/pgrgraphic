======================================
pgrgraphic 1.0
Es una extension de PostgreSQL para generar archivos con graficas(.png,.jpeg) utilizando R, las graficas se almacenan en el home de postgresql
ejemplo /var/lib/postgresql/9.x/main

OJO (velar por que no se llene de archivos es)

Requirimientos
-----------

r-base
r-cran-lattice
r-cran-gplots
postgresql-9.X
postgresql-9.X-plr
postgresql-server-dev-9.X
X>=3

Instalar
--------
make install

En una bases de datos postgresql ejecute: 
CREATE EXTENSION plr;
              create extension ;



funciones
--------
grafica_barras_multiples(text, text, text, text, text, text[], text, text)		
grafica_barras_simples(text, text, text, text, text, text[], text, text)		
grafica_caja(text, text, text, text, text)		
grafica_contorno(text, text, text, text, text, text[], text, text)		
grafica_dispersion(text, text, text, text, text, text)		
grafica_histograma(text, text, text, text, text, text)		
grafica_histograma_3d(text, text, text, text, text, text, text)		
grafica_lineas(text, text, text, text, text, text[], text)		
grafica_lineas_puntos(text, text, text, text, text, text[], text)		
grafica_mapa_de_calor(text, text, text, text[], text)		
grafica_pie(text, text, text, text[], boolean, text)		
grafica_puntos(text, text, text, text[], text)


Ejemplo:
select pgrgraphic.grafica_barras_simples ('barra_simple_hor','Cantidad_de_productos_cat','Productos','Cantidades',
 'select count (products.prod_id) as cantidad from products join categories on categories.category=products.category group by categories.categoryname,categories.category order by categories.category', 
 (SELECT array_agg(categoryname::text) from categories), 'vertical', 'png') --'horizontal'

grafica_barras_simples 
------------------------
 10
(1 fila)
--10 retorno OK

Ver mas ejemplos de uso y graficas resultantes en /ejemplo
Se utilizo la base de datos dellstore http://www.postgresql.org/ftp/projects/pgFoundry/dbsamples/dellstore2/dellstore2-normal-1.0/

--------- 
Gracias a varios colegas y estudiantes  por colaborar en el desarrollo de esta extension 
(Yudisney Vazquez Ortiz, Dalilys Martinez Gutierrez, Claudia Diaz Columbie)
Anthony R. Sotolongo leon
asotolongo@gmail.com
