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
	@Override
	public List<Articulo> getArticulosSlider() {
		return (List<Articulo>) repository.articulosSlider();
	}
	
	/**
	 * Obtiene los artículos (videojuegos)
	 */
	@Override
	public List<Articulo> articulosVideojuegos() {
		return (List<Articulo>) repository.articulosVideojuegos();
	}
	
	/**
	 * Obtiene los artículos (merchadising)
	 */
	@Override
	public List<Articulo> articulosMerchandising() {
		return (List<Articulo>) repository.articulosMerchandising();
	}
	
	/**
	 * Obtiene los artículos buscando por texto
	 */
	@Override
	public List<Articulo> articulosFindByText(String text) {
		return (List<Articulo>) repository.findByKeywords(text);
	}
	
	/**
	 * Obtiene los artículos buscando por varios parámetros
	 */
	@Override
	public List<Articulo> articulosFindByTipoGenero(String tipo, String genero) {
		return (List<Articulo>) repository.findByTipoAndGenero(tipo,genero);
	}
	
	/**
	 * Obtiene los artículos buscando por varios parámetros
	 */
	@Override
	public List<Articulo> articulosFindByTipoPlataforma(String tipo, String plataforma) {
		return (List<Articulo>) repository.findByTipoAndPlataforma(tipo,plataforma);
	}
	
	/**
	 * Obtiene todos los géneros de los artículos
	 */
	@Override
	public List<String> getAllGeneros() {
		return (List<String>) repository.getGeneros();
	}
	
	/**
	 * Obtiene todos las plataformas de los artículos
	 */
	@Override
	public List<String> getAllPlataformas() {
		return (List<String>) repository.getPlataformas();
	}
	
	/**
	 * Obtiene los artículos buscando por varios parámetros
	 */
	@Override
	public List<Articulo> articulosFindByTipoGeneroPlataforma(String tipo, String genero, String plataforma) {
		return (List<Articulo>) repository.findByTipoAndGeneroAndPlataforma(tipo,genero,plataforma);
	}

	/**
	 * Obtiene los artículos de oferta
	 */
	@Override
	public List<Articulo> getArticulosOfertas() {
		return (List<Articulo>) repository.articulosOfertas();
	}
	
	/**
	 * Obtiene los artículos populares
	 */
	@Override
	public List<Articulo> getArticulosPopulares() {
		return (List<Articulo>) repository.articulosPopulares();
	}
}
