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
        
        // Envía los artículos al html, para poder listarlos
        model.addAttribute("articulos", articulos);
        
        // Lista de articulos para el slider
        List<Articulo> articulosSlider =  (List<Articulo>) articuloService.getArticulosSlider();
        model.addAttribute("articulosSlider", articulosSlider);
        
        // Lista de articulos de oferta
        List<Articulo> articulosOfertas =  (List<Articulo>) articuloService.getArticulosOfertas();
        model.addAttribute("articulosOfertas", articulosOfertas);
        
        // Lista de articulos de oferta
        List<Articulo> articulosPopulares =  (List<Articulo>) articuloService.getArticulosPopulares();
        model.addAttribute("articulosPopulares", articulosPopulares);
        
        // Hay que colocar el path completo de donde va a encontrar el index
        return "/index";
    }
}
