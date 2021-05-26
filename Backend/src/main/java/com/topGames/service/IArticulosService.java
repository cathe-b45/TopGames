package com.topGames.service;

import java.util.List;
import com.topGames.model.*;

/**
 * interfaz que va a usar el servico. Debe contener los métodos que ejecutan las
 * consultas en la BD.
 */
public interface IArticulosService {
	// Devuelve una lista con todos los artículos de la BD
	public List<Articulo> findAll();
	
	// Devuelve una lista de los artículos para mostrarlos en el SLIDER
	public List<Articulo> getArticulosSlider();
	
	// Devuelve una lista de los artículos de tipo VIDEOJUEGOS
	public List<Articulo> articulosVideojuegos();
	
	// Devuelve una lista de los artículos de tipo MERCHANDISING
	public List<Articulo> articulosMerchandising();
	
	// Devuelve una lista de los artículos buscando por el nombre del artículo
	public List<Articulo> articulosFindByText(String text);
	
	// Devuelve una lista de los artículos buscando por el tipo / genero 
	public List<Articulo> articulosFindByTipoGenero(String tipo, String genero);
	
	// Devuelve una lista de los artículos buscando por el tipo / genero 
	public List<Articulo> articulosFindByTipoPlataforma(String tipo, String plataforma);
	
	// Obtiene todos los géneros de los artículos
	public List<String> getAllGeneros();
	
	// Obtiene todos los géneros de los artículos
	public List<String> getAllPlataformas();
	
	// Devuelve una lista de los artículos buscando por el tipo / genero / plataforma 
	public List<Articulo> articulosFindByTipoGeneroPlataforma(String tipo, String genero, String plataforma);
		
	// Añade un nuevo artículo en la BD
	public boolean addArticulo(Articulo articulo);
}