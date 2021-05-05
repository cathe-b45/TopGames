package com.topGames.service;

import java.util.List;
import com.topGames.model.*;
/**
 * interfaz que va a usar el servico. Debe contener los métodos que ejecutan las
 * consultas en la BD.
 */
public interface IUsuarioService {
	// Devuelve una lista con todos los alumnos de la BD
	public List<Usuario> findAll();
	
	// Añade un nuevo ausuario en la BD
	public boolean addUsuario(Usuario usuario);
}