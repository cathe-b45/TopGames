package com.topGames.service;

import java.util.List;
import com.topGames.model.*;
/**
 * interfaz que va a usar el servico. Debe contener los métodos que ejecutan las
 * consultas en la BD.
 */
public interface ArticulosService {
	// Devuelve una lista con todos los artículos de la BD
	public List<Articulo> findAll();
	
	// Devuelve una lista de los artículos para mostrarlos en el SLIDER
	public List<Articulo> getArticulosSlider();
	
	// Añade un nuevo artículo en la BD
	public boolean addArticulo(Articulo articulo);
}