package com.topGames.service;

import java.util.List;

import com.topGames.model.Articulo;
import com.topGames.service.IArticulosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.topGames.model.Articulo;
import com.topGames.repository.*;
/**
 * Servicio que trabaja y realiza consultas en la BD sobre los datos
 * de tipo alumno. Implementa la interfaz correspondiente. 
 * En los servicios es donde se desarrollan los algoritmos y se programan
 * los métodos implementados de la interfaz.
 */
@Service
public class ArticuloServiceImpl implements IArticulosService {
	
	@Autowired
    private ArticuloRepository repository;
	
	@Override
	public List<Articulo> findAll() {
		return (List<Articulo>) repository.findAll();
	}	

	@Override
	public boolean addArticulo(Articulo articulo) {
		try {			
			repository.save(articulo);
			return true;
		} catch(Exception e) {
			System.out.println(e.toString());
			return false;
		}
	}
	
	/**
	 * Obtiene los artículos (videojuegos) para el slider
	 */
	public List<Articulo> getArticulosSlider() {
		return (List<Articulo>) repository.articulosSlider();
	}
	
	/**
	 * Obtiene los artículos (videojuegos)
	 */
	public List<Articulo> articulosVideojuegos() {
		return (List<Articulo>) repository.articulosVideojuegos();
	}
	
	/**
	 * Obtiene los artículos (merchadising)
	 */
	public List<Articulo> articulosMerchandising() {
		return (List<Articulo>) repository.articulosMerchandising();
	}
}
