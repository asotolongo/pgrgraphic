select pgrgraphic.grafica_barras_simples 
('barra_simple_hor','Cantidad_de_productos_cat','Productos','Cantidades',
 'select count (products.prod_id) as cantidad from products join categories on categories.category=products.category group by categories.categoryname,categories.category order by categories.category', 
 (SELECT array_agg(categoryname::text) from categories), 'vertical', 'png') --'horizontal'

  select pgrgraphic.grafica_pie 
('pie','Cantidad_de_productos_pie', 'select count (products.prod_id)as cantidad from products join categories on categories.category=products.category group by categories.categoryname,categories.category order by categories.category', 
 (SELECT array_agg(categoryname::text) from categories), True, 'png') 


 SELECT pgrgraphic.grafica_contorno('contorno_lineas',
                           'Venta de productos',	
                           'ID del Cliente',
                           'Total a pagar',		
                           'SELECT customers.customerid, orders.totalamount 
                           FROM public.orders, public.customers 
                           WHERE orders.customerid = customers.customerid 
                           and customers.creditcardtype=3 LIMIT 20',
                           array(SELECT firstname FROM customers WHERE creditcardtype=3 LIMIT 20),	
                             
                           'jpeg',
                           'lineas'); --contorno


SELECT pgrgraphic.grafica_mapa_de_calor('mapa_calor',
                                'Venta de productos',		 
		                'SELECT orders.totalamount, orders.netamount, orders.tax
                                 FROM public.orders, public.products, 
                                      public.orderlines, public.categories
                                 WHERE orders.orderid = orderlines.orderid AND
                                       products.category = categories.category AND
                                       orderlines.prod_id = products.prod_id LIMIT 20',
		                array(SELECT categories.categoryname       
                                 FROM public.orders, public.products, 
                                      public.orderlines, public.categories
                                 WHERE orders.orderid = orderlines.orderid AND
                                       products.category = categories.category AND
                                       orderlines.prod_id = products.prod_id LIMIT 20),	
		                	    
		                'jpeg');

SELECT pgrgraphic.grafica_lineas('linea',
                                'Venta de productos',
		                'ID del Cliente',
	                        'Total a pagar',
		                'SELECT customers.customerid, orders.totalamount 
	                         FROM public.orders, public.customers 
	                         WHERE orders.customerid = customers.customerid 
                                       and customers.creditcardtype=3 LIMIT 20',
		                array(SELECT firstname FROM customers WHERE creditcardtype=3 LIMIT 20),	
		                    
		                'png');


  SELECT pgrgraphic.grafica_lineas_puntos('linea_puntos',
                                'Venta de productos',
		                'ID del Cliente',
	                        'Total a pagar',
		                'SELECT customers.customerid, orders.totalamount 
	                         FROM public.orders, public.customers 
	                         WHERE orders.customerid = customers.customerid 
                                       and customers.creditcardtype=3 LIMIT 20',
		                array(SELECT firstname FROM customers WHERE creditcardtype=3 LIMIT 20),	
		                    
		                'jpeg');

SELECT pgrgraphic.grafica_puntos(
    'puntos','customer-totalamount',
    'SELECT customers.customerid, orders.totalamount 
	                    FROM public.orders, public.customers 
	                    WHERE orders.customerid = customers.customerid 
                            and customers.creditcardtype=3 LIMIT 20',
                array(SELECT firstname FROM customers WHERE creditcardtype=3 LIMIT 20),	
    'jpeg');

 select pgrgraphic.grafica_histograma('histograma', 'Histograma', 'Intervalo', 'Cantidad', 
                                                 'SELECT  orders.totalamount 
	                         FROM public.orders, public.customers 
	                         WHERE orders.customerid = customers.customerid 
                                       and customers.creditcardtype=3 LIMIT 100' , 'jpeg')


 SELECT pgrgraphic.grafica_caja('caja','titulo caja','valores ',
                                 'SELECT  orders.totalamount 
	                         FROM public.orders, public.customers 
	                         WHERE orders.customerid = customers.customerid 
                                       and customers.creditcardtype=1 LIMIT 20',
                                              
		                    
		                'jpeg');

SELECT pgrgraphic.grafica_barras_multiples('barras_multiples',
                                'Venta de productos',
		                'Tipo',
	                        'Valor',
		                'SELECT orders.tax, orders.totalamount 
	                         FROM public.orders, public.customers 
	                         WHERE orders.customerid = customers.customerid 
                                       and customers.creditcardtype=3 LIMIT 10',
		                array(SELECT firstname FROM customers WHERE creditcardtype=3 LIMIT 10),	
		                    
		               'columna','png');--'barra'
SELECT pgrgraphic.grafica_histograma_3d('histograma3D',
                                'Venta de productos',
		                'ID del Cliente',
	                        'Total a pagar',	
	                        'Valor',	
	                        'SELECT customers.customerid, orders.totalamount 
	                         FROM public.orders, public.customers 
	                         WHERE orders.customerid = customers.customerid 
                                       and customers.creditcardtype=3 LIMIT 20',	
	 
	                        'png');


SELECT pgrgraphic.grafica_dispersion('dispersion',
                                'Impuesto vs total ns neto',
		                'Criterio',
	                        'Valor',	
	                         'SELECT orders.tax,orders.netamount, orders.totalamount 
	                         FROM public.orders, public.customers 
	                         WHERE orders.customerid = customers.customerid 
                                       and customers.creditcardtype=3 LIMIT 10',
                                       
	                        
	                        'jpeg');
	                        

		                

                                       

