package com.topGames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.topGames.model.*;

/**
 * Esta interfaz vacía se utiliza para extender CrudRepository, 
 * que al heredarlo nos permite realizar consultas sobre la BD
 * utilizando la entidad artículo
 */
public interface ArticuloRepository extends CrudRepository<Articulo, Long> {
	
	String query = "SELECT * FROM articulos WHERE slider = 1";
	@Query(value=query, nativeQuery = true)
    List<Articulo> articulosSlider();
	
	String query2 = "SELECT * FROM articulos WHERE Tipo = 'videojuego'";
	@Query(value=query2, nativeQuery = true)
    List<Articulo> articulosVideojuegos();
	
	String query3 = "SELECT * FROM articulos WHERE Tipo = 'merchandising'";
	@Query(value=query3, nativeQuery = true)
    List<Articulo> articulosMerchandising();
	
	String queryByName = "SELECT * FROM articulos WHERE 1=1 ";
	@Query(value=queryByName + " AND Nombre LIKE %?1%", nativeQuery = true)
    List<Articulo> findByKeywords(String text);
	
	// Buscaremos por tipo + genero
    List<Articulo> findByTipoAndGenero(String tipo, String genero);
    
    // Buscaremos por tipo + plataforma
    List<Articulo> findByTipoAndPlataforma(String tipo, String plataforma);
    
	// Buscaremos por tipo + genero + plataform
    List<Articulo> findByTipoAndGeneroAndPlataforma(String tipo, String genero, String plataforma);
    
    // Seleccionamos todos los generos distintos
    @Query(value="SELECT DISTINCT Genero FROM articulos WHERE Genero IS NOT NULL", nativeQuery = true)
    List<String> getGeneros();
    
    // Seleccionamos todos los tipos de plataforma distintas
    @Query(value="SELECT DISTINCT Plataforma FROM articulos WHERE Plataforma IS NOT NULL", nativeQuery = true)
    List<String> getPlataformas();
}
