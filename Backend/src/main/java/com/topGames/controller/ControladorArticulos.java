package com.topGames.controller;


import com.topGames.model.Articulo;
import com.topGames.service.ArticulosService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * El controlador recibe las peticiones y, dependiendo de la URL a la que
 * el usuario ha accedido, ejecuta una funcionalidad u otra del backend
 * de nuestra web.
 *
 */
@Controller
public class ControladorArticulos {

	@Autowired
    private ArticulosService articuloService;
	
	/**
	 * Las peticiones a la url "/" ejecutan la función operacionDeInicio, que carga
	 * la lista de alumnos y devuelve al usuario el index.html
	 * Recordar que la url "/" significa petición a la raiz, ejemplos:
	 * 			- wwww.google.com/ (carga el index de google)
	 * 			- www.facebook.com/ (carga el index de facebook)
	 */
	// Path para la llamada a través de la URL
    @GetMapping("/admin/articulos")
    public String operacionDeInicio(Model model) {
    	// Ejecutamos la query "select * from alumnos" para obtener
    	// todos los alumnos de la BD
        List<Articulo> articulos = (List<Articulo>) articuloService.findAll();
        // Muestra por consola todos los alumnos a modo de prueba
        System.out.println("Usuarios size = " + articulos.size());
        for(int i = 0; i < articulos.size(); i++) {
            System.out.println(articulos.get(i).getId() + " - " + articulos.get(i).getNombre());
        }
        
        // Envía los alumnos al html, para poder listarlos
        model.addAttribute("articulos", articulos);
        
        // Hay que colocar el path completo de donde va a encontrar el index
        return "/admin/articulos/index";
    }

    /**
     * Esta petición se ejecuta cuando el usuario presiona sobre el botón "Agregar"
     * del formulario del index.html. 
     * El método agregarAlumno recibe todos los parámetros del formulario y los utiliza
     * para añadir un nuevo alumno a la BD.
     * Por último vuelve a cargar el index.html
     */
    @PostMapping(value = "/admin/articulo/agregar")
    public String agregarArticulo(@ModelAttribute Articulo articulo, Model model) {

        articuloService.addArticulo(articulo);
        
        /*
         * Como explique en clase, una vez se ha añadido un nuevo alumno queremos
         * volver a cargar el index.html. Ya sabemos que este index necesita de una
         * lista de usuariospara cargarse bien (la lista que mostramos), por lo tanto
         * volvemos a solicitarla haciendo la query "select * from usuarios"
         * y se la volvemos a mandar al index.html
         */
        List<Articulo> articulos = (List<Articulo>) articuloService.findAll();
        System.out.println("Articulos size = " + articulos.size());
        for(int i = 0; i < articulos.size(); i++) {
            System.out.println(articulos.get(i).getId() + " - " + articulos.get(i).getNombre());
        }
        model.addAttribute("articulos", articulos);
        
        return "index";
    }
}
