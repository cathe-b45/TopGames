package com.topGames.controller;


import com.topGames.model.Articulo;
import com.topGames.service.IArticulosService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * El controlador recibe las peticiones y, dependiendo de la URL a la que
 * el usuario ha accedido, ejecuta una funcionalidad u otra del backend
 * de nuestra web.
 *
 */
@Controller
public class ControladorArticulos {

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
    @GetMapping("/productos")
    public String getProductsPage(Model model, 
    		@RequestParam(value="tipo", required = false) String tipo,
    		@RequestParam(value="merchandising", required = false) String merchandising,
    		@RequestParam(value="articuloName", required = false) String articuloName,
    		@RequestParam(value="genero", required = false) String genero,
    		@RequestParam(value="plataforma", required = false) String plataforma
    	) {
    	
    		
    		if(tipo != null && tipo.contains("videojuego")) {
    			
    			List<Articulo> articulosVideojuegos;
    					
    			if(genero != null && genero.length() > 0) {
    				
    				if(plataforma != null && plataforma.length() > 0) {
    					
    					// Lista de artículos de tipo videojuegos
    	                articulosVideojuegos = (List<Articulo>) 
    	                		articuloService.articulosFindByTipoGeneroPlataforma(tipo,genero,plataforma);
    				} else {

    					// Lista de artículos de tipo videojuegos
    					articulosVideojuegos = (List<Articulo>) 
    							articuloService.articulosFindByTipoGenero(tipo, genero);
    				}
    			} else if(plataforma != null && plataforma.length() > 0) {
    				// Lista de artículos de tipo videojuegos
					articulosVideojuegos = (List<Articulo>) 
							articuloService.articulosFindByTipoPlataforma(tipo, plataforma);
    			} else {
    				// Lista de artículos de tipo videojuegos
					articulosVideojuegos = (List<Articulo>) articuloService.articulosVideojuegos();
    			}
                
                // Envía los artículos al html para poder listarlos
                model.addAttribute("articulos", articulosVideojuegos);
                
        	} else if(tipo != null && tipo.contains("merchandising")) {
        		
        		// System.out.println("merchandising: " + merchandising);
        		
        		// Lista de artículos de tipo merchandising
                List<Articulo> articulosMerchandising = (List<Articulo>) articuloService.articulosMerchandising();
                
                // Envía los artículos al html, para poder listarlos
                model.addAttribute("articulos", articulosMerchandising);
                
        	} else if(articuloName != null && articuloName.length() != 0) {
        		
        		System.out.println("articuloName: " + articuloName);
        		
        		// Lista de artículos de tipo merchandising
                List<Articulo> articulosFindName = (List<Articulo>) articuloService.articulosFindByText(articuloName);
                
                System.out.println("articulosFinded"+articulosFindName.size());
                
                // Envía los artículos al html, para poder listarlos
                model.addAttribute("articulos", articulosFindName);
                
        	} else {
        		
        		// Lista de artículos de tipo videojuegos
                List<Articulo> articulos = (List<Articulo>) articuloService.findAll();
                
                // Envía los artículos al html, para poder listarlos
                model.addAttribute("articulos", articulos);
        	}
    		
    		// Enviamos los datos recogidos por get para los select
            model.addAttribute("getTipo", tipo);
            model.addAttribute("getPlataforma", plataforma);
            model.addAttribute("getGenero", genero);
            
            // Listado de generos
            List<String> generos = articuloService.getAllGeneros();
            model.addAttribute("generos", generos);
            
            // Listado de plataformas
            List<String> plataformas = articuloService.getAllPlataformas();
            model.addAttribute("plataformas", plataformas);
        
        // Hay que colocar el path completo de donde va a encontrar el index
        return "/products";
    }
}
