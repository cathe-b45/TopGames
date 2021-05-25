package com.topGames.controller;

import com.topGames.model.Articulo;
import com.topGames.service.IArticulosService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * El controlador recibe las peticiones y, dependiendo de la URL a la que
 * el usuario ha accedido, ejecuta una funcionalidad u otra del backend
 * de nuestra web.
 *
 */
@Controller
public class TopGamesController {

	@Autowired
	private IArticulosService articuloService;
	
	/**
	 * Las peticiones a la url "/" ejecutan la función operacionDeInicio, que carga
	 * la lista de alumnos y devuelve al usuario el index.html
	 * Recordar que la url "/" significa petición a la raiz, ejemplos:
	 * 			- wwww.google.com/ (carga el index de google)
	 * 			- www.facebook.com/ (carga el index de facebook)
	 */
	// Path para la llamada a través de la URL
    @RequestMapping("/")
    public String operacionDeInicio(Model model) {
        
    	// Ejecutamos la query "select * from articulos" para obtener todos los artículos de la BD
        List<Articulo> articulos = (List<Articulo>) articuloService.findAll();
        
        // Lista de articulos para el slider
        List<Articulo> articulosSlider =  (List<Articulo>) articuloService.getArticulosSlider();
        
        // Muestra por consola todos los artículos a modo de prueba
        System.out.println("Artículos size = " + articulosSlider.size());
        for(int i = 0; i < articulosSlider.size(); i++) {
            System.out.println(articulosSlider.get(i).getId() + " - " + articulosSlider.get(i).getNombre());
        }
        
        // Envía los artículos al html, para poder listarlos
        model.addAttribute("articulos", articulos);
        model.addAttribute("articulosSlider", articulosSlider);
        
        // Hay que colocar el path completo de donde va a encontrar el index
        return "/index";
    }
}
