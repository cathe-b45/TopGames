package com.topGames.service;

import java.util.List;

import com.topGames.model.Articulo;
import com.topGames.service.ArticulosService;
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
public class ArticuloServiceImpl implements ArticulosService {
	
	@Autowired
    private ArticuloRepository repository;
	
	@Override
	public List<Articulo> findAll() {
		return (List<Articulo>) repository.findAll();
	}
	
	public List<Articulo> getArticulosSlider() {
		return (List<Articulo>) repository.articulosSlider();
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
}
