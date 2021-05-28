package com.topGames.controller;

import com.topGames.model.Usuario;
import com.topGames.service.IUsuarioService;
import com.topGames.service.UsuarioServiceImpl;

import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * El controlador recibe las peticiones y, dependiendo de la URL a la que
 * el usuario ha accedido, ejecuta una funcionalidad u otra del backend
 * de nuestra web.
 *
 */
@Controller
public class ControladorUsuarios {

	@Autowired
    private IUsuarioService usuarioService;
	private UsuarioServiceImpl usuarioSer;
	
	/**
	 * Las peticiones a la url "/" ejecutan la función operacionDeInicio, que carga
	 * la lista de alumnos y devuelve al usuario el index.html
	 * Recordar que la url "/" significa petición a la raiz, ejemplos:
	 * 			- wwww.google.com/ (carga el index de google)
	 * 			- www.facebook.com/ (carga el index de facebook)
	 */
	
	@GetMapping("/login")
    public String getUsuario(Model model, 
    		@RequestParam(value="nombre", required = false) String nombre,
    		@RequestParam(value="apellidos", required = false) String apellidos,
    		@RequestParam(value="email", required = false) String email,
    		@RequestParam(value="numero", required = false) String numero,
    		@RequestParam(value="contraseña", required = false) String contrasena
    	) {
		model.addAttribute("getNombre", nombre);
        model.addAttribute("getApellidos", apellidos);
        model.addAttribute("getEmail", email);
        model.addAttribute("getNumero", numero);
        model.addAttribute("getContrasena", contrasena);
		return "/login";
        
	}
	
	/**
     * Esta petición se ejecuta cuando el usuario presiona sobre el botón "Agregar"
     * del formulario del index.html. 
     * El método agregarAlumno recibe todos los parámetros del formulario y los utiliza
     * para añadir un nuevo alumno a la BD.
     * Por último vuelve a cargar el index.html
     * @throws SQLException 
     * @throws ClassNotFoundException 
     */
    @PostMapping(value = "/login")
    public String agregarAlumno(@ModelAttribute Usuario usuario, Model model) throws SQLException, ClassNotFoundException {
    	
    	usuario = UsuarioServiceImpl.getUsuarioByCorreo(usuario.getEmail());
    	
    	System.out.println("Email" + usuario.getEmail());
    	
        model.addAttribute("usuario", usuario);
        
        return "/index";
    }
	
	@GetMapping("/register")
    public String register() {	
		return "/register";
	}
	
	/**
     * Esta petición se ejecuta cuando el usuario presiona sobre el botón "Agregar"
     * del formulario del index.html. 
     * El método agregarAlumno recibe todos los parámetros del formulario y los utiliza
     * para añadir un nuevo alumno a la BD.
     * Por último vuelve a cargar el index.html
     * @throws SQLException 
     * @throws ClassNotFoundException 
     */
    @PostMapping(value = "/register")
    public String register(@ModelAttribute Usuario usuario, Model model) 
    		throws SQLException, ClassNotFoundException {
    	
    	// usuario = UsuarioServiceImpl.getUsuarioByCorreo(usuario.getEmail());
    	
    	System.out.println("Usuario: " + usuario.getEmail());
    	
    	// Ejecuta la query "insert usuario"
        if(usuarioService.addUsuario(usuario)) {
        	
        	// Si el usuario se ha registrado lanzamos mensaje de OK
        	model.addAttribute("userCreated","OK");
        } else {
        	
        	// Si el usuario no se ha registrado lanzamos ERROR
        	model.addAttribute("userCreated","ERROR");
        }
        
        /*
         * Como explique en clase, una vez se ha añadido un nuevo alumno queremos
         * volver a cargar el index.html. Ya sabemos que este index necesita de una
         * lista de usuariospara cargarse bien (la lista que mostramos), por lo tanto
         * volvemos a solicitarla haciendo la query "select * from usuarios"
         * y se la volvemos a mandar al index.html
         */
        /* List<Usuario> usuarios = (List<Usuario>) usuarioService.findAll();
        System.out.println("Usuarios size = " + usuarios.size());
        for(int i = 0; i < usuarios.size(); i++) {
            System.out.println(usuarios.get(i).getId() + " - " + usuarios.get(i).getNombre());
        }
        
        // model.addAttribute("usuarios", usuarios); */
        
        return "/register";
    }
	
	// Path para la llamada a través de la URL
    @GetMapping("/admin/usuarios")
    public String operacionDeInicio(Model model) {
    	// Ejecutamos la query "select * from alumnos" para obtener
    	// todos los alumnos de la BD
        List<Usuario> usuarios = (List<Usuario>) usuarioService.findAll();
        // Muestra por consola todos los alumnos a modo de prueba
        System.out.println("Usuarios size = " + usuarios.size());
        for(int i = 0; i < usuarios.size(); i++) {
            System.out.println(usuarios.get(i).getId() + " - " + usuarios.get(i).getNombre());
        }
        
        // Envía los alumnos al html, para poder listarlos
        model.addAttribute("usuarios", usuarios);
        
        // Hay que colocar el path completo de donde va a encontrar el index
        return "/index";
    }
}
