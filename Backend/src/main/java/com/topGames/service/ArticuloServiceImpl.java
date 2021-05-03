package com.topGames.service;

import java.util.List;

import com.topGames.model.Articulo;
import com.topGames.service.IArticuloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.topGames.model.*;
import com.topGames.repository.*;
/**
 * Servicio que trabaja y realiza consultas en la BD sobre los datos
 * de tipo alumno. Implementa la interfaz correspondiente. 
 * En los servicios es donde se desarrollan los algoritmos y se programan
 * los métodos implementados de la interfaz.
 */
@Service
public class ArticuloServiceImpl implements IArticuloService {
	
	@Autowired
    private ArticuloRepository repository;
	
	@Override
	public List<Articulo> findAll() {
		/*
		 * Ejecuta la consulta "select * from alumno".
		 * Recuerda que repository implementaba la interfaz CrudRepository.
		 * ¡Investiga qué consultas se pueden hacer de manera sencilla!
		 */
		return (List<Articulo>) repository.findAll();
	}

	@Override
	public boolean addArticulo(Articulo articulo) {
		try {
			/*
			 * Ejecuta la consulta "insert alumno".
			 * Recuerda que repository implementaba la interfaz CrudRepository.
			 * ¡Investiga qué consultas se pueden hacer de manera sencilla!
			 */
			repository.save(articulo);
			return true;
		} catch(Exception e) {
			System.out.println(e.toString());
			return false;
		}
	}
}
