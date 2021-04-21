package com.topGames.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Hay que crear una clase/entidad para cada una de las tablas de la BD
 * sobre las que queremos trabajar. Esta clase es muy similar a las que hemos
 * visto en programación, simplemente tenemos que tener en cuenta que le tenemos
 * que indicar a qué tabla de la BD pertenece esta clase, y asignar cada uno de 
 * sus atributos a una columna de esa misma tabla.
 */
@Entity
@Table(name = "usuario")
public class Usuario implements Serializable {
	// Esta línea tiene que estar pero no nos interesa, se autogenera cuando
	// implementamos Serializable
    private static final long serialVersionUID = 3233149207833106460L;
    
    @Id
    @GeneratedValue
    @Column(name = "ID_Usuario")
    private int id;
    
    @Column(name = "Nombre")    
    private String nombre;
    
    @Column(name = "Apellidos")    
    private String apellidos;
    
    @Column(name = "Contrasena")
    private String password;
    
    @Column(name = "Email")    
    private String email;
    
    @Column(name = "Tipo_Usuario")
    private String tipoUsuario;
   
    
    public Usuario() {
    	
    }
    
    public Usuario(int id, String nombre, String apellidos, String password, String email, String tipoUsuario) {
    	this.id = id;
    	this.nombre = nombre;
    	this.password = password;
    	this.email = email;
    	this.tipoUsuario = tipoUsuario;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTipoUsuario() {
		return tipoUsuario;
	}

	public void setTipoUsuario(String tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}
    
    
}

