--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.4
-- Dumped by pg_dump version 9.4.4
-- Started on 2015-07-02 12:48:25 CLT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 8 (class 2615 OID 68725)
-- Name: pgrgraphic; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgrgraphic;


ALTER SCHEMA pgrgraphic OWNER TO postgres;

SET search_path = pgrgraphic, pg_catalog;

--
-- TOC entry 283 (class 1255 OID 68750)
-- Name: grafica_barras_multiples(text, text, text, text, text, text[], text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_barras_multiples(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, texto_leyenda text[], modo text, formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_barras_multiples (nombre_grafica,titulo_principal,marquilla_ejex,marquilla_ejey, datos,  texto_leyenda, modo, formato) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_barras_multiples(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, texto_leyenda text[], modo text, formato text) OWNER TO postgres;

--
-- TOC entry 302 (class 1255 OID 68732)
-- Name: grafica_barras_simples(text, text, text, text, text, text[], text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_barras_simples(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, texto_leyenda text[], modo text, formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_barras_simples (nombre_grafica,titulo_principal,marquilla_ejex,marquilla_ejey, datos,  texto_leyenda, modo, formato) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_barras_simples(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, texto_leyenda text[], modo text, formato text) OWNER TO postgres;

--
-- TOC entry 303 (class 1255 OID 68733)
-- Name: grafica_caja(text, text, text, text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_caja(nombre_grafica text, titulo_principal text, marquilla_ejey text, datos text, formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_caja(nombre_grafica,titulo_principal, marquilla_ejey , datos ,   formato ) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_caja(nombre_grafica text, titulo_principal text, marquilla_ejey text, datos text, formato text) OWNER TO postgres;

--
-- TOC entry 304 (class 1255 OID 68734)
-- Name: grafica_contorno(text, text, text, text, text, text[], text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_contorno(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, texto_leyenda text[], formato text, tipo text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_contorno (nombre_grafica,titulo_principal,marquilla_ejex,marquilla_ejey, datos,  texto_leyenda, formato, tipo) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_contorno(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, texto_leyenda text[], formato text, tipo text) OWNER TO postgres;

--
-- TOC entry 305 (class 1255 OID 68735)
-- Name: grafica_dispersion(text, text, text, text, text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_dispersion(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_dispersion(nombre_grafica,titulo_principal, marquilla_ejex,marquilla_ejey ,datos ,  formato ) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_dispersion(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, formato text) OWNER TO postgres;

--
-- TOC entry 291 (class 1255 OID 68736)
-- Name: grafica_histograma(text, text, text, text, text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_histograma(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_histograma(nombre_grafica,titulo_principal, marquilla_ejex , marquilla_ejey , datos ,   formato ) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_histograma(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, formato text) OWNER TO postgres;

--
-- TOC entry 290 (class 1255 OID 68737)
-- Name: grafica_histograma_3d(text, text, text, text, text, text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_histograma_3d(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, marquilla_ejez text, datos text, formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_histograma_3d(nombre_grafica,titulo_principal, marquilla_ejex,marquilla_ejey ,marquilla_ejez,datos ,  formato ) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_histograma_3d(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, marquilla_ejez text, datos text, formato text) OWNER TO postgres;

--
-- TOC entry 292 (class 1255 OID 68738)
-- Name: grafica_lineas(text, text, text, text, text, text[], text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_lineas(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, leyenda text[], formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_lineas(nombre_grafica,titulo_principal, marquilla_ejex , marquilla_ejey , datos , leyenda , formato ) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_lineas(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, leyenda text[], formato text) OWNER TO postgres;

--
-- TOC entry 293 (class 1255 OID 68739)
-- Name: grafica_lineas_puntos(text, text, text, text, text, text[], text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_lineas_puntos(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, leyenda text[], formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_lineas_puntos(nombre_grafica,titulo_principal, marquilla_ejex , marquilla_ejey , datos , leyenda , formato ) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_lineas_puntos(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, leyenda text[], formato text) OWNER TO postgres;

--
-- TOC entry 294 (class 1255 OID 68740)
-- Name: grafica_mapa_de_calor(text, text, text, text[], text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_mapa_de_calor(nombre_grafica text, titulo_principal text, datos text, texto_leyenda text[], formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_mapa_de_calor(nombre_grafica,titulo_principal, datos,  texto_leyenda, formato) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_mapa_de_calor(nombre_grafica text, titulo_principal text, datos text, texto_leyenda text[], formato text) OWNER TO postgres;

--
-- TOC entry 295 (class 1255 OID 68741)
-- Name: grafica_pie(text, text, text, text[], boolean, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_pie(nombre_grafica text, titulo_principal text, datos text, texto_leyenda text[], porciento boolean, formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_pie (nombre_grafica,titulo_principal, datos,  texto_leyenda, porciento, formato) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_pie(nombre_grafica text, titulo_principal text, datos text, texto_leyenda text[], porciento boolean, formato text) OWNER TO postgres;

--
-- TOC entry 296 (class 1255 OID 68742)
-- Name: grafica_puntos(text, text, text, text[], text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION grafica_puntos(nombre_grafica text, titulo_principal text, datos text, leyenda text[], formato text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
salida text;
salida2 text;
salida3 text;
salida4 text;
begin
  
      BEGIN
      select * into salida from  pgrgraphic.r_puntos(nombre_grafica,titulo_principal,  datos , leyenda , formato ) ;

      EXCEPTION  
         WHEN OTHERS THEN
      GET STACKED DIAGNOSTICS salida = MESSAGE_TEXT,salida2 = RETURNED_SQLSTATE, salida3 = PG_EXCEPTION_DETAIL, salida4 = PG_EXCEPTION_HINT;
       return 'Error:'|| salida||'--'||salida2||'--'||salida3||'--'||salida4; 
      end;    
   
   
  return salida;


end;

$$;


ALTER FUNCTION pgrgraphic.grafica_puntos(nombre_grafica text, titulo_principal text, datos text, leyenda text[], formato text) OWNER TO postgres;

--
-- TOC entry 299 (class 1255 OID 68726)
-- Name: r_barras_multiples(text, text, text, text, text, text[], text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_barras_multiples(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, texto_leyenda text[], tipo text, formato text) RETURNS text
    LANGUAGE plr
    AS $_$ 

        if (is.null (nombre_grafica)) {
            nombre<-'sin_titulo'
        } else { 
            nombre<-nombre_grafica 
        }
        
        if (formato=='png') {
            png (paste (nombre, "png", sep="."))
        } else if (formato=='jpeg') {
            jpeg (paste (nombre, "jpeg", sep="."))
        } else {  
            print (3)
        }
        
        resultado<-pg.spi.exec (datos)
        par (xpd=T, mar=par ()$mar + c (1.5,1,0,6))

        if (tipo=='columna') {
            x<-length (as.matrix (resultado))+2
            y<-max (as.matrix (resultado))
            lim<-y+y*0.10

            barplot (as.matrix (resultado), beside = TRUE, ann = FALSE, axes = FALSE, 
                     xlim = NULL, ylim = c (0,lim), names.arg = colnames (as.matrix (resultado)),
                     col = rainbow (length (as.vector (as.matrix (resultado[,1])))))

            axis (2, las=1)         

            title (main=titulo_principal, col.main="black", font.main="2", cex.main = 2, 
                   xlab=marquilla_ejex, ylab=marquilla_ejey, col.lab="black", font.lab="2",
                   cex.lab=1)

            legend (x,y,texto_leyenda, cex=0.8, title='Leyenda', title.col ="black", 
                    fill = rainbow (length (as.vector (as.matrix (resultado[,1])))),
                    border = "black", horiz = FALSE, ncol=1)   
        } else if(tipo=='barra') {          
                  y<-length (as.matrix (resultado))
                  x<-max (as.matrix (resultado))
                  lim<-x+x*0.10

                  barplot (as.matrix (resultado), beside=TRUE, ann = FALSE, axes = FALSE, 
                           ylim = NULL, xlim = c (0,lim),
                           col = rainbow (length (as.vector (as.matrix (resultado[,1])))), 
                           horiz = TRUE, names.arg = colnames (as.matrix (resultado)))

                  title (main=titulo_principal, col.main="black", font.main="2", cex.main = 2, 
                         xlab=marquilla_ejex, ylab=marquilla_ejey, col.lab="black",font.lab="2", 
                         cex.lab=1)
                     
                  axis (1, las=1)

                  legend(lim,y, texto_leyenda, cex=0.8, title='Leyenda', title.col ="black", 
                         fill = rainbow (length (as.vector (as.matrix (resultado[,1])))),
                         border = "black", horiz = FALSE, ncol=1)
        } else { 
            print(4)
        } 
        dev.off()
        print (10)
       
                  
        
   $_$;


ALTER FUNCTION pgrgraphic.r_barras_multiples(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, texto_leyenda text[], tipo text, formato text) OWNER TO postgres;

--
-- TOC entry 284 (class 1255 OID 68727)
-- Name: r_barras_simples(text, text, text, text, text, text[], text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_barras_simples(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, texto_leyenda text[], modo text, formato text) RETURNS text
    LANGUAGE plr
    AS $_$
        if (is.null(nombre_grafica)) {
            nombre_grafica<-'sin_titulo'
        } else { nombre_grafica<-nombre_grafica
        }
        
        if (formato== 'png') {
            png (paste (nombre_grafica, "png", sep="."))
        } else if (formato=='jpeg') {
            jpeg (paste (nombre_grafica, "jpeg", sep="."))
        } else {  
            print(3)
        }
        
        resultado<-pg.spi.exec (datos)
        par (xpd=T, mar=par()$mar+c(1.5,1,0,6))

        if (modo=='vertical') {
            x<-length(as.matrix(resultado))+2
            y<-max (as.matrix(resultado))
            lim<-y+y*.10

            barplot (as.matrix(resultado), beside=TRUE, ann=FALSE, axes=FALSE, 
                     xlim=NULL,ylim=c(0,lim),
                     col=rainbow (length(as.matrix(resultado))), xaxt = "n")

            title (main=titulo_principal, col.main="black", font.main="2", cex.main = 2, 
                   xlab=marquilla_ejex, ylab=marquilla_ejey, col.lab="black", font.lab="2",
                   cex.lab=1)
                   
           axis (1, at=1:length(texto_leyenda), lab=FALSE)
           axis (2, las=1)    
            
           legend(x,y,texto_leyenda, cex=0.8,title='Leyenda', title.col ="black",
                  fill=rainbow(length(as.matrix(resultado))), border = "black", horiz=FALSE,ncol=1)

          } else if(modo=='horizontal') {
     
            y<-length(as.matrix(resultado))
            x<-max (as.matrix(resultado))+50
            lim<-x+x*.10
            barplot (as.matrix(resultado), beside=TRUE, ann=FALSE, axes=FALSE,
                      ylim=NULL, xlim=c(0,lim),
                      col=rainbow(length(as.matrix(resultado))), names.arg=texto_leyenda,
                      horiz=TRUE, yaxt = "n")

            title (main=titulo_principal, col.main="black", font.main="2", cex.main = 2, 
                   xlab=marquilla_ejex, ylab=marquilla_ejey, col.lab="black",font.lab="2", 
                   cex.lab=1)
                     
            axis (1, las=1)
            axis (2, at=1:length(texto_leyenda), lab=FALSE)

           legend(x,y,texto_leyenda, cex=0.8,title='Leyenda', title.col ="black", 
                  fill=rainbow(length(as.matrix(resultado))),border = "black", horiz=FALSE,ncol=1)

           } else { 
              print(4)
         } 
         
         dev.off()
         print(10)
         
        

    $_$;


ALTER FUNCTION pgrgraphic.r_barras_simples(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, texto_leyenda text[], modo text, formato text) OWNER TO postgres;

--
-- TOC entry 285 (class 1255 OID 68728)
-- Name: r_caja(text, text, text, text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_caja(nombre_grafica text, titulo_principal text, marquilla_ejey text, datos text, formato text) RETURNS text
    LANGUAGE plr
    AS $_$

        if (is.null (nombre_grafica)) {
            nombre<-'sin_titulo'
        } else { 
            nombre<-nombre_grafica 
        }
        
        if (formato=='png') {
            png (paste (nombre, "png", sep="."))
        } else if (formato=='jpeg') {
            jpeg (paste (nombre, "jpeg", sep="."))
        } else {  
            print (3)
        }
        
        resultado<-pg.spi.exec (datos)

        par (xpd=T, mar=par ()$mar+ c (1.5,1,0,4))

        numerico<-as.numeric (as.matrix (resultado))
        y<-max (as.matrix (resultado))
        lim<-y+y*.10
        
        boxplot (numerico, las=2, ylim = c (0,lim),col= rainbow (resultado[,1])) 
                     
        title (main=titulo_principal, col.main="black", font.main="2", cex.main = 2, 
               ylab=marquilla_ejey, xlab = NULL, col.lab="black", font.lab="2",
               cex.lab=1) 

        axis (2, las=1)  

        dev.off ()
         
        print (10)

   $_$;


ALTER FUNCTION pgrgraphic.r_caja(nombre_grafica text, titulo_principal text, marquilla_ejey text, datos text, formato text) OWNER TO postgres;

--
-- TOC entry 300 (class 1255 OID 68729)
-- Name: r_contorno(text, text, text, text, text, text[], text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_contorno(nombre_grafica text, titulo text, texto_x text, texto_y text, datos text, leyenda text[], formato text, tipo text) RETURNS text
    LANGUAGE plr
    AS $_$

	library (gplots)	
	
	if (is.null (nombre_grafica)) {
            nombre<-'sin_titulo'
        } else { 
            nombre<-nombre_grafica 
        }
        
        if (formato=='png') {
            png (paste (nombre, "png", sep="."))
        } else if (formato=='jpeg') {
            jpeg (paste (nombre, "jpeg", sep="."))
        } else {  
            print (3)
        }

        datos<-pg.spi.exec (datos)
        datos<-as.matrix (datos)
        x<-datos[,1]
        y<-datos[,2]

        lim_max_x<-max (datos[,1])
        lim_max_y<-max (datos[,2])
                      
        if (tipo=='lineas') {
            par (xpd=T, mar = par ()$mar + c (2,0,0,6)) 
           
            
           
            ci2d (x, y, show.points = TRUE, pch=19, show="contour",  
                  points.col = rainbow (x))  

            title (main=titulo, col.main="black", font.main="2", cex.main=1.5, 
		   col.lab="black", font.lab="2", cex.lab=1, xlab=texto_x, ylab= texto_y)

            legend (lim_max_x+17, lim_max_y, leyenda, ncol=1, col = rainbow (x), 
                    pch=19, title='Leyenda', title.col ="black", border = "black", 
                    horiz = FALSE)  
                                   
        } else if (tipo=='contorno'){
                        
            ci2d (x, y, show.points = TRUE, pch=19, points.col="black")

            title (main=titulo, col.main="black", font.main="2", cex.main=1.5, 
		   col.lab="black", font.lab="2", cex.lab=1, xlab=texto_x, ylab= texto_y)
        } else { 
            print (4)
        }                
        
        dev.off ()

        print (10)
   $_$;


ALTER FUNCTION pgrgraphic.r_contorno(nombre_grafica text, titulo text, texto_x text, texto_y text, datos text, leyenda text[], formato text, tipo text) OWNER TO postgres;

--
-- TOC entry 301 (class 1255 OID 68730)
-- Name: r_dispersion(text, text, text, text, text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_dispersion(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, formato text) RETURNS text
    LANGUAGE plr
    AS $_$

        if (is.null (nombre_grafica)) {
            nombre<-'sin_titulo'
        } else { 
            nombre<-nombre_grafica 
        }
        
        if (formato=='png') {
            png (paste (nombre, "png", sep="."))
        } else if (formato=='jpeg') {
            jpeg (paste (nombre, "jpeg", sep="."))
        } else {  
            print (3)
        }
        
        resultado<-pg.spi.exec (datos)

        par (xpd=T, mar=par ()$mar+ c (1.5,1,0,4))

        columnas<-dim (as.matrix (resultado))
        columnas<-columnas[2]
        lim<-max (as.matrix (resultado))
        lim<-lim+lim*0.10
           
        dotchart (t (as.matrix (resultado)), beside = TRUE, width= 0.5, space=0.1, 
                  ylim = NULL, col = rainbow (columnas), ann = FALSE, yaxt="n")
        
        title (main=titulo_principal, col.main="black", font.main="2", cex.main = 2, 
               xlab=marquilla_ejex, ylab=marquilla_ejey, col.lab="black", font.lab="2",
               cex.lab=1)

        dev.off ()
        print(10) 
        
   $_$;


ALTER FUNCTION pgrgraphic.r_dispersion(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, formato text) OWNER TO postgres;

--
-- TOC entry 297 (class 1255 OID 68743)
-- Name: r_histograma(text, text, text, text, text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_histograma(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, formato text) RETURNS text
    LANGUAGE plr
    AS $_$ 

        if (is.null (nombre_grafica)) {
            nombre<-'sin_titulo'
        } else { 
            nombre<-nombre_grafica 
        }
        
        if (formato=='png') {
            png (paste (nombre, "png", sep="."))
        } else if (formato=='jpeg') {
            jpeg (paste (nombre, "jpeg", sep="."))
        } else {  
            print (3)
        }
        
        resultado<-pg.spi.exec (datos)

        par (xpd=T, mar=par ()$mar+ c (1.5,1,0,4))

        numerico<-as.numeric (as.matrix (resultado))
        clases<-(sqrt (length (numerico))%/% 1)+1

        hist (numerico, breaks=clases, beside = TRUE, ann = FALSE, yaxt = "n", col = rainbow (clases-1)) 
        
        title (main=titulo_principal, col.main="black", font.main="2", cex.main = 2, 
               xlab=marquilla_ejex, ylab=marquilla_ejey, col.lab="black", font.lab="2",
               cex.lab=1)        
     
        axis (2, las=1)         
        
        dev.off ()
        print(10) 
        
   $_$;


ALTER FUNCTION pgrgraphic.r_histograma(nombre_grafica text, titulo_principal text, marquilla_ejex text, marquilla_ejey text, datos text, formato text) OWNER TO postgres;

--
-- TOC entry 286 (class 1255 OID 68744)
-- Name: r_histograma_3d(text, text, text, text, text, text, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_histograma_3d(nombre_grafica text, titulo text, texto_x text, texto_y text, texto_z text, datos text, formato text) RETURNS text
    LANGUAGE plr
    AS $_$

	library (gplots)	
	
	if (is.null (nombre_grafica)) {
            nombre<-'sin_titulo'
        } else { 
            nombre<-nombre_grafica 
        }
        
        if (formato=='png') {
            png (paste (nombre, "png", sep="."))
        } else if (formato=='jpeg') {
            jpeg (paste (nombre, "jpeg", sep="."))
        } else {  
            print (3)
        }

        datos<-pg.spi.exec (datos)
        datos<-as.matrix (datos)
        x<-as.vector(datos[,1])
        y<-as.vector(datos[,2])

        

        h2d <- hist2d (x,y, nbins = length(x))        
      
        persp (h2d$x, h2d$y, h2d$count, ticktype="detailed", theta=40, phi=30, 
               border="blue", col="white", xlab=texto_x, ylab=texto_y, zlab=texto_z,
               main=titulo, col.main="black", font.main="2", cex.main=2, 
	       col.lab="black", font.lab="2", cex.lab=1) 

        dev.off ()
        print (10)
       
   $_$;


ALTER FUNCTION pgrgraphic.r_histograma_3d(nombre_grafica text, titulo text, texto_x text, texto_y text, texto_z text, datos text, formato text) OWNER TO postgres;

--
-- TOC entry 287 (class 1255 OID 68745)
-- Name: r_lineas(text, text, text, text, text, text[], text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_lineas(nombre_grafica text, titulo text, texto_x text, texto_y text, datos text, leyenda text[], formato text) RETURNS text
    LANGUAGE plr
    AS $_$

	if (is.null (nombre_grafica)) {
            nombre<-'sin_titulo'
        } else { 
            nombre<-nombre_grafica 
        }
        
        if (formato=='png') {
            png (paste (nombre, "png", sep="."))
        } else if (formato=='jpeg') {
            jpeg (paste (nombre, "jpeg", sep="."))
        } else {  
            print (3)
        }
        
        datos<-pg.spi.exec (datos)
        datos<-as.matrix (datos)
        x<-as.vector (datos[,1])
        y<-as.vector (datos[,2])

        lim_max_x<-max (datos[,1])
        lim_min_x<-min (datos[,1])
        lim_max_y<-max (datos[,2])

       
                            
        par (xpd=T, mar = par ()$mar + c (2,0,0,6)) 
           
        plot (x, y, main=titulo, type="l", pch=19, col = rainbow (x), xlab=texto_x, 
              ylab= texto_y, xlim = c (lim_min_x, lim_max_x)) 
	
        legend (lim_max_x+5, lim_max_y, leyenda, ncol=1, pch=19, border = "black",
                 (datos[,1]), title='Orden', title.col ="black", 
                horiz=FALSE)  

        dev.off ()
        print (10)
        

                     
   $_$;


ALTER FUNCTION pgrgraphic.r_lineas(nombre_grafica text, titulo text, texto_x text, texto_y text, datos text, leyenda text[], formato text) OWNER TO postgres;

--
-- TOC entry 288 (class 1255 OID 68746)
-- Name: r_lineas_puntos(text, text, text, text, text, text[], text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_lineas_puntos(nombre_grafica text, titulo text, texto_x text, texto_y text, datos text, leyenda text[], formato text) RETURNS text
    LANGUAGE plr
    AS $_$

	if (is.null (nombre_grafica)) {
            nombre<-'sin_titulo'
        } else { 
            nombre<-nombre_grafica 
        }
        
        if (formato=='png') {
            png (paste (nombre, "png", sep="."))
        } else if (formato=='jpeg') {
            jpeg (paste (nombre, "jpeg", sep="."))
        } else {  
            print (3)
        }
        
        datos<-pg.spi.exec (datos)
        datos<-as.matrix (datos)
        x<-as.vector (datos[,1])
        y<-as.vector (datos[,2])

        lim_max_x<-max (datos[,1])
        lim_min_x<-min (datos[,1])
        lim_max_y<-max (datos[,2])

     
                            
        par (xpd=T, mar = par ()$mar + c (2,0,0,6)) 
           
        plot (x, y, main=titulo, type="b", pch=19, col = rainbow (x), xlab=texto_x, 
              ylab= texto_y, xlim = c (lim_min_x, lim_max_x)) 
	
        legend (lim_max_x+5, lim_max_y, leyenda, ncol=1, pch=19, border = "black",
                col = rainbow (datos[,1]), title='Leyenda', title.col ="black", 
                horiz=FALSE)  

        dev.off ()
        print (10)
        

                     
   $_$;


ALTER FUNCTION pgrgraphic.r_lineas_puntos(nombre_grafica text, titulo text, texto_x text, texto_y text, datos text, leyenda text[], formato text) OWNER TO postgres;

--
-- TOC entry 289 (class 1255 OID 68747)
-- Name: r_mapa_de_calor(text, text, text, text[], text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_mapa_de_calor(nombre_grafica text, titulo text, datos text, leyenda text[], formato text) RETURNS text
    LANGUAGE plr
    AS $$
   
	library (gplots)	
	
	if (is.null (nombre_grafica)) {
            nombre<-'sin_titulo'
        } else { 
            nombre<-nombre_grafica 
        }
        
        if (formato=='png') {
            png (paste (nombre, "png", sep="."))
        } else if (formato=='jpeg') {
            jpeg (paste (nombre, "jpeg", sep="."))
        } else {  
            print (3)
        }

        datos<-pg.spi.exec (datos)
        datos<-as.matrix (datos)

        
        rnames<-leyenda
        rownames (datos)<-rnames
        
        heatmap.2 (datos, cellnote=datos, trace="none", margins = c (9,9),
		   main=titulo, col.main="black", font.main="2", cex.main=2, 
		   cexRow=1,cexCol=1, col.lab="black", notecol="black", 
		   na.rm = TRUE, dendrogram="both", denscol="black",
		   density.info = c ("histogram","density","none"), key = TRUE,
		   symkey = TRUE, symbreaks = TRUE, keysize=1.5)
	
        dev.off ()
        print (10)
        
   $$;


ALTER FUNCTION pgrgraphic.r_mapa_de_calor(nombre_grafica text, titulo text, datos text, leyenda text[], formato text) OWNER TO postgres;

--
-- TOC entry 306 (class 1255 OID 68748)
-- Name: r_pie(text, text, text, text[], boolean, text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_pie(nombre_grafica text, titulo_principal text, datos text, texto_leyenda text[], porciento boolean, formato text) RETURNS text
    LANGUAGE plr
    AS $_$
        if(is.null(nombre_grafica)) {
           nombre_grafica<-'sin_titulo'
           } else { 
           nombre_grafica<-nombre_grafica
           }
        
        if (formato== 'png') {
            png (paste (nombre_grafica, "png", sep="."))
            } else if (formato=='jpeg') {
                jpeg (paste (nombre_grafica, "jpeg", sep="."))
            } else {  
            print(3)
            }
           
        resultado<-pg.spi.exec (datos)
        par (xpd=T, mar=par()$mar+c(3,1,0,1))
        porcientos<-round(as.matrix(resultado)/sum(as.matrix(resultado))*100, 1)
        porcientos<- paste(porcientos, "%", sep="")
        
        if (porciento==TRUE) {
            valores_labels<-porcientos
            } else if(porciento==FALSE){ 
                valores_labels<-as.matrix (resultado)   
            }
        pie (as.matrix(resultado), shadow=TRUE, edges=200, radius=0.8, 
             col=rainbow(length(as.matrix(resultado))), labels=valores_labels)      
           
        title (main=titulo_principal, col.main="black", font.main="2", cex.main = 2, 
               col.lab="black",font.lab="2", cex.lab=1)
           
                
        legend(-1.25,-1,texto_leyenda, cex=0.8,title='Leyenda', title.col ="black",
                  fill=rainbow(length(as.matrix(resultado))), border = "black", horiz=FALSE,ncol=3)   
           
        dev.off()
        print (10)       

      
         $_$;


ALTER FUNCTION pgrgraphic.r_pie(nombre_grafica text, titulo_principal text, datos text, texto_leyenda text[], porciento boolean, formato text) OWNER TO postgres;

--
-- TOC entry 307 (class 1255 OID 68749)
-- Name: r_puntos(text, text, text, text[], text); Type: FUNCTION; Schema: pgrgraphic; Owner: postgres
--

CREATE FUNCTION r_puntos(nombre_grafica text, titulo_principal text, datos text, leyenda text[], formato text) RETURNS text
    LANGUAGE plr
    AS $_$

       
       if (is.null(nombre_grafica)) {
           nombre_grafica<-'sin_titulo'
           } else { nombre_grafica<-nombre_grafica
           }
        
       if (formato== 'png') {
           png (paste (nombre_grafica, "png", sep="."))
           } else if (formato=='jpeg') {
              jpeg (paste (nombre_grafica, "jpeg", sep="."))
           } else {  
            print(3)
           } 
        
        resultado<-pg.spi.exec (datos)
        par (xpd=T, mar=par()$mar+c(1.5,1,0,6))
        variable<-dim(as.matrix(resultado))
        variable<-variable[2]
        colors <- rainbow(variable)
        x<-length(as.vector(as.matrix(resultado[,1])))+1
        y<-max(as.matrix(resultado))

        lim_max_x<-max (resultado[,1])
        lim_min_x<-min (resultado[,1])
        lim_max_y<-max (resultado[,2])

        
        
        plot(as.matrix(resultado),type="p", pch=19, col = rainbow (x),xlim = c (lim_min_x, lim_max_x),ylim=c(0,y))

        
            
        title (main=titulo_principal, col.main="black", font.main="2", cex.main = 2, 
               col.lab="black", font.lab="2", cex.lab=1)
                 
        legend (lim_max_x+5, lim_max_y, leyenda, ncol=1, pch=19, border = "black",
                col = rainbow (resultado[,1]), title='Leyenda', title.col ="black", 
                horiz=FALSE) 
                   
        dev.off() 
         
        print(10)
            
             
         $_$;


ALTER FUNCTION pgrgraphic.r_puntos(nombre_grafica text, titulo_principal text, datos text, leyenda text[], formato text) OWNER TO postgres;

--
-- TOC entry 2141 (class 3466 OID 16717)
-- Name: cstore_ddl_event_end; Type: EVENT TRIGGER; Schema: -; Owner: postgres
--



-- Completed on 2015-07-02 12:48:25 CLT

--
-- PostgreSQL database dump complete
--

