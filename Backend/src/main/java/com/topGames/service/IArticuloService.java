package com.topGames.service;

import java.util.List;
import com.topGames.model.*;
/**
 * interfaz que va a usar el servico. Debe contener los métodos que ejecutan las
 * consultas en la BD.
 */
public interface IArticuloService {
	// Devuelve una lista con todos los alumnos de la BD
	public List<Articulo> findAll();
	// Añade un nuevo ausuario en la BD
	public boolean addArticulo(Articulo articulo);
}