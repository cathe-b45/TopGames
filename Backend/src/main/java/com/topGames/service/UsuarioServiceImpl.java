package com.topGames.service;

import java.util.List;

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
public class UsuarioServiceImpl implements IUsuarioService {
	
	@Autowired
    private UsuarioRepository repository;
	
	@Override
	public List<Usuario> findAll() {
		/*
		 * Ejecuta la consulta "select * from alumno".
		 * Recuerda que repository implementaba la interfaz CrudRepository.
		 * ¡Investiga qué consultas se pueden hacer de manera sencilla!
		 */
		return (List<Usuario>) repository.findAll();
	}

	@Override
	public boolean addUsuario(Usuario usuario) {
		try {
			/*
			 * Ejecuta la consulta "insert alumno".
			 * Recuerda que repository implementaba la interfaz CrudRepository.
			 * ¡Investiga qué consultas se pueden hacer de manera sencilla!
			 */
			repository.save(usuario);
			return true;
		} catch(Exception e) {
			System.out.println(e.toString());
			return false;
		}
	}
}