package com.topGames.controller;

import com.topGames.model.Usuario;
import com.topGames.service.IUsuarioService;
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
public class LoginController {

	@Autowired
    private IUsuarioService usuarioService;
	
	/**
	 * Las peticiones a la url "/" ejecutan la función operacionDeInicio, que carga
	 * la lista de alumnos y devuelve al usuario el index.html
	 * Recordar que la url "/" significa petición a la raiz, ejemplos:
	 * 			- wwww.google.com/ (carga el index de google)
	 * 			- www.facebook.com/ (carga el index de facebook)
	 */
	// Path para la llamada a través de la URL
    @GetMapping("/login")
    public String operacionDeInicio(Model model) {
        
        // Hay que colocar el path completo de donde va a encontrar el index
        return "/login";
    }

    /**
     * Esta petición se ejecuta cuando el usuario presiona sobre el botón "Agregar"
     * del formulario del index.html. 
     * El método agregarAlumno recibe todos los parámetros del formulario y los utiliza
     * para añadir un nuevo alumno a la BD.
     * Por último vuelve a cargar el index.html
     */
    @PostMapping(value = "/login/create")
    public String agregarAlumno(@ModelAttribute Usuario usuario, Model model) {
    	        
        return "/";
    }
}
