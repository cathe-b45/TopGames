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
@Table(name = "Articulos")
public class Articulo implements Serializable {
	// Esta línea tiene que estar pero no nos interesa, se autogenera cuando
	// implementamos Serializable
    private static final long serialVersionUID = 3233149207833106460L;
    
    @Id
    @GeneratedValue
    @Column(name = "ID_Articulo")
    private int id;
    
    @Column(name = "Tipo")    
    private String tipo;
    
    @Column(name = "Nombre")    
    private String nombre;
    
    @Column(name = "Fecha")
    private String fecha;
    
    @Column(name = "Genero")    
    private String genero;
    
    @Column(name = "Precio")
    private Double precio;
    
    @Column(name = "Plataforma")
    private String plataforma;
   
    
    public Articulo() {
    	
    }
    
    public Articulo(int id, String tipo, String nombre, String fecha, String genero, Double precio, String plataforma) {
    	this.id = id;
    	this.tipo = tipo;
    	this.nombre = nombre;
    	this.fecha = fecha;
    	this.genero = genero;
    	this.precio = precio;
    	this.plataforma = plataforma;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public Double getPrecio() {
		return precio;
	}

	public void setPrecio(Double precio) {
		this.precio = precio;
	}

	public String getPlataforma() {
		return plataforma;
	}

	public void setPlataforma(String plataforma) {
		this.plataforma = plataforma;
	}

	
}

