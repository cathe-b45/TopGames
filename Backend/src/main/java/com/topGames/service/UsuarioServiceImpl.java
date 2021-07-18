package com.topGames.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
	
	 private static Connection connect = null;
	    
    private static PreparedStatement preparedStatement = null;
    private static String host = "localhost:3306/topgames";
    
    /*
     * Almacena el resultado de las consultas en un dato de 
     * tipo ResultSet, que tiene sus propios métodos para trabajar
     * con las tablas y columnas.
     */
    private static ResultSet resultSet = null;
    final private static String user = "root";
    final private static String passwd = "";
	    
	
	@Autowired
    private UsuarioRepository repository;
	
	public static Connection dbConnect() throws Exception {
        try {
            /*
             * Cargamos el driver MySQL que hemos descargado anteriormente.
             * Cada BD tiene su propio driver, este �nicamente es para 
             * las BD MySQL.
             */
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            return DriverManager.getConnection("jdbc:mysql://" + host + "?"
                    		+ "user=" + user + "&password=" + passwd );
            
        } catch (Exception e) {
            throw e;
        } finally {
        }
    }
	
	@Override
	public List<Usuario> findAll() {
		/*
		 * Ejecuta la consulta "select * from alumno".
		 * Recuerda que repository implementaba la interfaz CrudRepository.
		 * ¡Investiga qué consultas se pueden hacer de manera sencilla!
		 */
		return (List<Usuario>) repository.findAll();
	}

	/**
	 * Guardamos el usuario persistiendo en la BBDD
	 */
	@Override
	public boolean addUsuario(Usuario usuario) throws SQLException, ClassNotFoundException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		connect = DriverManager
				.getConnection("jdbc:mysql://" + host + "?"
						+ "user=" + user + "&password=" + passwd );
		
		System.out.println("Usuario add: "+usuario.getEmail());
		
		try {
			String insert = "INSERT INTO usuario(Nombre,Apellidos,Contrasena,Email,Tipo_Usuario) values (?,?,?,?,?)";
			preparedStatement = connect.prepareStatement(insert);
			
			preparedStatement.setString(1, usuario.getNombre());
			preparedStatement.setString(2, usuario.getApellidos());
			preparedStatement.setString(3, usuario.getContrasena());
			preparedStatement.setString(4, usuario.getEmail());
			preparedStatement.setString(5, "CLIENTE");
			
			preparedStatement.executeUpdate();
			return true;
			
		} catch (Exception e) {
			// TODO: handle exception
			
			return false;
		}
	}
	
	/**
	 * Obtenemos el usuario a través del email
	 * @param email
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public static Usuario loginUser(String email, String password) throws SQLException, ClassNotFoundException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		connect = DriverManager
				.getConnection("jdbc:mysql://" + host + "?"
						+ "user=" + user + "&password=" + passwd );
		
		PreparedStatement preparedStatment = connect.prepareStatement("SELECT * from usuario where email like ? AND contrasena = ?");
		preparedStatment.setString(1, email);
		preparedStatment.setString(2, password);
		
		resultSet = preparedStatment.executeQuery();
		
		Usuario usuario = null;		
		while(resultSet.next()) {
			usuario = new Usuario(resultSet.getInt(1), resultSet.getString(2)
					, resultSet.getString(3), resultSet.getString(4), resultSet.getString(5),
					resultSet.getString(6));
		}
		
		return usuario;
	}
	
	
	
}