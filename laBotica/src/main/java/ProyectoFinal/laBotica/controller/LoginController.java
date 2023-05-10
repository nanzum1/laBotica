package ProyectoFinal.laBotica.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ProyectoFinal.laBotica.interfaces.CRUD;
import ProyectoFinal.laBotica.modelo.Usuario;

@Controller
public class LoginController {

	@RequestMapping(value="/login", method= RequestMethod.GET)
	public ModelAndView test(HttpServletResponse response) throws IOException{
		System.out.println("Pasando por metodo GET");
		return new ModelAndView("login");
	}
	
	@Autowired
	private CRUD<Usuario> usuario;
		
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ModelAndView loginIn(HttpServletRequest request, HttpServletResponse response) throws IOException{
		System.out.println("Entrando por metodo POST");
		String username = request.getParameter("username");
		System.out.println(username);
		String password = request.getParameter("pass");
		System.out.println(password);
		try {
			Usuario user = usuario.getUserPass(username, password);
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			System.out.println("Se ha conectado: "+user.getUsername());
			return new ModelAndView("index");// donde se redirige la pagina si el ingreso es exitoso.
		} catch (Exception e) {
			e.printStackTrace();
	        ModelAndView mav = new ModelAndView("login");// colocar nombre de la pagina a la que se redirige en caso de fallo
	        mav.addObject("message", "Nombre de usuario o password incorrecto");
	        return mav;
		}
		
	}
}

