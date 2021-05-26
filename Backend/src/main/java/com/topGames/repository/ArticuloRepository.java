package com.topGames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

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
	
	String queryByName = "SELECT * FROM articulos WHERE ";
	@Query(value=queryByName + " Nombre LIKE %?1%", nativeQuery = true)
    List<Articulo> findByKeywords(String text);
	
	@Query(value=queryByName + " Tipo = ?1 AND Genero = ?2", nativeQuery = true)
    List<Articulo> articulosFindBy(String tipoArticulo, String genero);
}
